.syntax unified
.global main

.type main, %function
main:
  nop
  mov r4, 1
  mov r5, 3
  @ bl blink_200ms
  bl led_setdir_r
  bl led_setdir_c
  bl led_on
  bl time_delay_200ms
  bl led_off
  bl led_cleardir_r
  bl led_cleardir_c
  bl time_delay_200ms
  b main

@ .type blink_200ms, % function
@ blink_200ms:
@   nop
@   str lr, [sp]
@   bl led_setdir_r
@   bl led_setdir_c
@   bl led_on
@   bl time_delay_200ms
@   bl led_off
@   bl led_cleardir_r
@   bl led_cleardir_c
@   bl time_delay_200ms
@   ldr lr, [sp]
@   bx lr
@ .size blink_200ms, . -blink_200ms
