#include <stdio.h>
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#include "esp_wifi.h"
#include "esp_system.h"
#include "nvs_flash.h"
#include "esp_event.h"
#include "esp_event_loop.h"
#include "esp_netif.h"
#include "protocol_examples_common.h"

#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "freertos/semphr.h"
#include "freertos/queue.h"

#include "driver/gpio.h"

#include "lwip/sockets.h"
#include "lwip/dns.h"
#include "lwip/netdb.h"
#include "esp_log.h"
#include "mqtt_client.h"

#include "sensors.h"
#include "dc_motors.h"
#include "hw_timer.h"
#include "debug.h"
#include "wifi.h"

#define GPIO_LED 16
#define WIFI_SSID "15F0F2"
#define WIFI_PASS "!u2NEvw'd0gg"

#define STOP_DISTANCE 50
#define MAX_DISTANCE 150

volatile char mode = 'M';
volatile char direction = 'U';
uint8_t move = 0;
int right_distance = 0, middle_distance = 0, left_distance = 0;

const char* topic = "test/topic/carcontrol";
int qos = 1;
esp_mqtt_client_handle_t client;

static const char* TAG = "MQTT_EXAMPLE";

/* static void log_error_if_nonzero(const char* message, int error_code){ */
/*   if(error_code != 0) */
/*     ESP_LOGE(TAG, "Last error %s: 0x%x", message, error_code); */
/* } */

static esp_err_t mqtt_event_handler_cb(esp_mqtt_event_handle_t event){
  esp_mqtt_client_handle_t client = event->client;
  int msg_id;

  switch(event->event_id){
    case MQTT_EVENT_CONNECTED:
      printDEBUG(DSYS, "U connected stateu %d\n", event->event_id);
      ESP_LOGI(TAG, "MQTT_EVENT_CONNECTED");
      msg_id = esp_mqtt_client_subscribe(client, topic, qos);
      ESP_LOGI(TAG, "Subscribe sent successfully, msg_id = %d", msg_id);
      break;
    case MQTT_EVENT_DISCONNECTED:
      printDEBUG(DSYS, "U disconnected stateu %d\n", event->event_id);
      ESP_LOGI(TAG, "MQTT_EVENT_DISCONNECTED");
      break;
    case MQTT_EVENT_SUBSCRIBED:
      printDEBUG(DSYS, "U subscribed stateu %d\n", event->event_id);
      ESP_LOGI(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id = %d", event->msg_id);
      msg_id = esp_mqtt_client_publish(client, topic, "M", 0, 1, 0);
      ESP_LOGI(TAG, "Publish sent successfully, msg_id = %d", msg_id);
      break;
    case MQTT_EVENT_UNSUBSCRIBED:
      printDEBUG(DSYS, "U unsubscribed stateu %d\n", event->event_id);
      ESP_LOGI(TAG, "MQTT_EVENT_UNSUBSCRIBED, msg_id = %d", 888);
      break;
    case MQTT_EVENT_PUBLISHED:
      printDEBUG(DSYS, "U published stateu %d\n", event->event_id);
      ESP_LOGI(TAG, "MQTT_EVENT_PUBLISHED, msg_id = %d", event->msg_id);
      break;
    case MQTT_EVENT_DATA:
      printDEBUG(DSYS, "U data stateu %d\n", event->event_id);
      ESP_LOGI(TAG, "MQTT_EVENT_DATA");
      printf("TOPIC = %.*s\r\n", event->topic_len, event->topic);
      printf("DATA = %.*s\r\n", event->data_len, event->data);

      switch(event->data[0]){
        case 'U':
          direction = 'U';
          move = 1;
          break;
        case 'D':
          direction = 'D';
          move = 1;
          break;
        case 'L':
          direction = 'L';
          move = 1;
          break;
        case 'R':
          direction = 'R';
          move = 1;
          break;
        case 'M':
          mode = 'M';
          move = 0;
          break;
        case 'A':
          mode = 'A';
          move = 1;
          break;
      }
      break;
    case MQTT_EVENT_ERROR:
      printDEBUG(DSYS, "U error stateu\n", event->event_id);
      ESP_LOGI(TAG, "MQTT_EVENT_ERROR");
      break;
    default:
      printDEBUG(DSYS, "U other stateu\n");
      ESP_LOGI(TAG, "Other event id: %d", event->event_id);
      break;
  }
  return ESP_OK;
}

static void mqtt_event_handler(void* handler_args, esp_event_base_t base, int32_t event_id, void* event_data){
  ESP_LOGD(TAG, "Event dispatched from event loop base = %s, event_id = %d", base, event_id);
  mqtt_event_handler_cb(event_data);
}

/* static void mqtt_app_start(void){ */
/*   esp_mqtt_client_config_t mqtt_cfg = { */
/*     .uri = "tcp://broker.hivemq.com:1883", */
/*     .event_handle = mqtt_event_handler_cb, */
/*   }; */
/*  */
/*   client = esp_mqtt_client_init(&mqtt_cfg); */
/*   esp_mqtt_client_register_event(client, ESP_EVENT_ANY_ID, mqtt_event_handler, NULL); */
/*   esp_mqtt_client_start(client); */
/* } */

void automatic_control(){
  ninety_degrees();
  while(mode == 'A'){
    int distance = get_ultrasonic();
    printDEBUG(DSYS, "Distance: %d\n", distance);
    // dc_motors_forward();
    while(get_ultrasonic() >= STOP_DISTANCE && mode == 'A'){
      dc_motors_forward();
      vTaskDelay(36/portTICK_RATE_MS);
      if(mode == 'M'){
        move = 0;
        dc_motors_stop();
        ninety_degrees();
        return;
      }
    }
    {
      dc_motors_stop();

      vTaskDelay(500/portTICK_RATE_MS);
      zero_degrees();
      vTaskDelay(1000/portTICK_RATE_MS);
      right_distance = get_ultrasonic();
      printDEBUG(DSYS, "Right distance: %d\n", right_distance);
      
      vTaskDelay(500/portTICK_RATE_MS);
      ninety_degrees();
      vTaskDelay(1000/portTICK_RATE_MS);
      middle_distance = get_ultrasonic();
      printDEBUG(DSYS, "Middle distance: %d\n", middle_distance);

      vTaskDelay(500/portTICK_RATE_MS);
      oneeighty();
      vTaskDelay(1000/portTICK_RATE_MS);
      left_distance = get_ultrasonic();
      printDEBUG(DSYS, "Left distance: %d\n", left_distance);
      int max = middle_distance;
      if(right_distance > middle_distance){
        if(right_distance > left_distance)
          max = right_distance;
        else 
          max = left_distance;
      }
      else if(middle_distance > right_distance){
        if(middle_distance < left_distance)
          max = left_distance;
        else
          max = middle_distance;
      }
      ninety_degrees();
      if(right_distance == max){
        dc_motors_right();
        vTaskDelay(360/portTICK_RATE_MS);
      }
      else if(left_distance == max){
        dc_motors_left();
        vTaskDelay(360/portTICK_RATE_MS);
      }
      else if(middle_distance == max){
        dc_motors_forward();
        vTaskDelay(36/portTICK_RATE_MS);
      }
    }
  }
  move = 0;
  dc_motors_stop();
  ninety_degrees();
}

void app_main(void){
  initDEBUG("", '5', 115200, "DSA - Debug example");
  ESP_ERROR_CHECK(nvs_flash_init());
  ESP_ERROR_CHECK(esp_netif_init());
  ESP_ERROR_CHECK(esp_event_loop_create_default());
  ESP_ERROR_CHECK(example_connect());
  esp_mqtt_client_config_t mqtt_cfg = {
    .uri = "mqtt://test.mosquitto.org:1883",
  };

  client = esp_mqtt_client_init(&mqtt_cfg);
  esp_mqtt_client_register_event(client, ESP_EVENT_ANY_ID, mqtt_event_handler, client);
  int connection = esp_mqtt_client_start(client);
  while(connection == -1)
    esp_mqtt_client_reconnect(client);

  /* gpio_config_t io_conf; */
  /* // disable interrupt */
  /* io_conf.intr_type = GPIO_INTR_DISABLE; */
  /* // set as output mode */
  /* io_conf.mode = GPIO_MODE_OUTPUT; */
  /* // bit mask of the pins that you want to set */
  /* io_conf.pin_bit_mask = (1 << GPIO_LED); */
  /* // disable pull-down mode */
  /* io_conf.pull_down_en = 0; */
  /* // disable pull-up mode */
  /* io_conf.pull_up_en = 0; */
  /* gpio_config(&io_conf); */
  /* gpio_set_level(GPIO_LED, 1); */
  printDEBUG(DSYS, "12\n");

  dc_motors_init();
  // printDEBUG(DSYS, "Inicijaliziran\n");
  servo_init();
  hcsr_init();
  /* dc_motors_left(); */
  /* vTaskDelay(5000/portTICK_RATE_MS); */
  /* dc_motors_forward(); */
  /* vTaskDelay(5000/portTICK_RATE_MS); */
  /* dc_motors_right(); */
  /* vTaskDelay(5000/portTICK_RATE_MS); */
  /* dc_motors_backward(); */
  /* vTaskDelay(5000/portTICK_RATE_MS); */
  /*  */
  /* dc_motors_stop(); */
  /* while(1){ */
  /*   oneeighty(); */
  /*   vTaskDelay(200/portTICK_RATE_MS); */
  /*   printDEBUG(DSYS, "Distance eighty: %d\n", get_ultrasonic()); */
  /*    */
  /*   vTaskDelay(2000/portTICK_RATE_MS); */
  /*    */
  /*   ninety_degrees(); */
  /*   vTaskDelay(200/portTICK_RATE_MS); */
  /*   printDEBUG(DSYS, "Distance ninety: %d\n", get_ultrasonic()); */
  /*    */
  /*   vTaskDelay(2000/portTICK_RATE_MS); */
  /*    */
  /*   zero_degrees(); */
  /*   vTaskDelay(200/portTICK_RATE_MS); */
  /*   printDEBUG(DSYS, "Distance zero: %d\n", get_ultrasonic()); */
  /*  */
  /*   vTaskDelay(2000/portTICK_RATE_MS); */
  /*    */
  /*   ninety_degrees(); */
  /*   vTaskDelay(200/portTICK_RATE_MS); */
  /*   printDEBUG(DSYS, "Distance ninety: %d\n", get_ultrasonic()); */
  /*    */
  /*   vTaskDelay(2000/portTICK_RATE_MS); */
  /* } */

  while(1){
    if(mode == 'A'){
      automatic_control();
    }
    else if(mode == 'M'){
      if(move){
        switch(direction){
          case 'U':
            dc_motors_forward();
            break;
          case 'D':
            dc_motors_backward();
            break;
          case 'L':
            dc_motors_left();
            break;
          case 'R':
            dc_motors_right();
            break;
        }
        move = 0;
        vTaskDelay(200/portTICK_RATE_MS);
        dc_motors_stop();
        printDEBUG(DSYS, "Move: %d\n", move);
      }
      else{
        vTaskDelay(10/portTICK_RATE_MS);
      }
    }
  }


}
