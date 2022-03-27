.syntax unified
.global main

.type main, %function
main:
  nop
  bl led_setdir_r1
  bl led_setdir_c1
  bl led_on_r1
  bl time_delay_200ms
  bl led_cleardir_r1
  bl led_cleardir_c1
  bl led_off_r1
  bl time_delay_200ms
  b main

