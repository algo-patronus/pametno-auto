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
#include "driver/uart.h"

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
#define WIFI_SSID "Joe Masseria"
#define WIFI_PASS "11111111"

#define STOP_DISTANCE 50
#define MAX_DISTANCE 150


const char* topic = "test/topic/carcontrol";
int qos = 1;
esp_mqtt_client_handle_t client;

/* static const char* TAG = "MQTT_EXAMPLE"; */

/* static void log_error_if_nonzero(const char* message, int error_code){ */
/*   if(error_code != 0) */
/*     ESP_LOGE(TAG, "Last error %s: 0x%x", message, error_code); */
/* } */

static esp_err_t mqtt_event_handler_cb(esp_mqtt_event_handle_t event){
  esp_mqtt_client_handle_t client = event->client;
  int msg_id;

  switch(event->event_id){
    case MQTT_EVENT_CONNECTED:
      // printDEBUG(DSYS, "U connected stateu %d\n", event->event_id);
      // ESP_LOGI(TAG, "MQTT_EVENT_CONNECTED");
      msg_id = esp_mqtt_client_subscribe(client, topic, qos);
      // ESP_LOGI(TAG, "Subscribe sent successfully, msg_id = %d", msg_id);
      break;
    case MQTT_EVENT_DISCONNECTED:
      // printDEBUG(DSYS, "U disconnected stateu %d\n", event->event_id);
      // ESP_LOGI(TAG, "MQTT_EVENT_DISCONNECTED");
      break;
    case MQTT_EVENT_SUBSCRIBED:
      // printDEBUG(DSYS, "U subscribed stateu %d\n", event->event_id);
      // ESP_LOGI(TAG, "MQTT_EVENT_SUBSCRIBED, msg_id = %d", event->msg_id);
      msg_id = esp_mqtt_client_publish(client, topic, "M", 0, 1, 0);
      // ESP_LOGI(TAG, "Publish sent successfully, msg_id = %d", msg_id);
      break;
    case MQTT_EVENT_UNSUBSCRIBED:
      // printDEBUG(DSYS, "U unsubscribed stateu %d\n", event->event_id);
      // ESP_LOGI(TAG, "MQTT_EVENT_UNSUBSCRIBED, msg_id = %d", 888);
      break;
    case MQTT_EVENT_PUBLISHED:
      // printDEBUG(DSYS, "U published stateu %d\n", event->event_id);
      // ESP_LOGI(TAG, "MQTT_EVENT_PUBLISHED, msg_id = %d", event->msg_id);
      break;
    case MQTT_EVENT_DATA:
      // printDEBUG(DSYS, "U data stateu %d\n", event->event_id);
      // ESP_LOGI(TAG, "MQTT_EVENT_DATA");
      // printf("TOPIC = %.*s\r\n", event->topic_len, event->topic);
      // printf("DATA = %.*s\r\n", event->data_len, event->data);


      switch(event->data[0]){
        case 'U':
        case 'D':
        case 'L':
        case 'R':
        case 'M':
        case 'A':
          uart_write_bytes(UART_NUM_0, (const char*)&event->data[0], 1);
        default:
          break;
      }
      break;
    case MQTT_EVENT_ERROR:
      /* printDEBUG(DSYS, "U error stateu\n", event->event_id); */
      /* ESP_LOGI(TAG, "MQTT_EVENT_ERROR"); */
      break;
    default:
      /* printDEBUG(DSYS, "U other stateu\n"); */
      /* ESP_LOGI(TAG, "Other event id: %d", event->event_id); */
      break;
  }
  return ESP_OK;
}

static void mqtt_event_handler(void* handler_args, esp_event_base_t base, int32_t event_id, void* event_data){
  /* ESP_LOGD(TAG, "Event dispatched from event loop base = %s, event_id = %d", base, event_id); */
  mqtt_event_handler_cb(event_data);
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

  gpio_config_t io_conf;
  io_conf.intr_type = GPIO_INTR_DISABLE;
  io_conf.mode = GPIO_MODE_OUTPUT;
  io_conf.pin_bit_mask = (1 << GPIO_LED);
  io_conf.pull_down_en = 0;
  io_conf.pull_up_en = 0;
  gpio_config(&io_conf);
  gpio_set_level(GPIO_LED, 0);

  const char* go = "G";
  uart_write_bytes(UART_NUM_0, go, 1);

  while(1){
    if(connection == -1)
      esp_mqtt_client_reconnect(client);
    vTaskDelay(10/portTICK_RATE_MS);
  }
}
