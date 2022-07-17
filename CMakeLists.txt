set(COMPONENT_SRCS "user_main.c")
set(COMPONENT_SRCS "misc.c")
set(COMPONENT_SRCS "debug.c")
set(COMPONENT_SRCS "wifi.c")
set(COMPONENT_SRCS "hw_timer.c")
set(COMPONENT_SRCS "sensors.c")
set(COMPONENT_SRCS "connect.c stdin_out.c"
	REQUIRES "tcpip_adapter")

register_component()
