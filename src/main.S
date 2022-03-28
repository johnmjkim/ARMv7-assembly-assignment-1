.syntax unified
.global main

.type main, %function
main:
  nop
  mov r4, 1
  mov r5, 3
  push {lr}
  bl blink_200ms
  pop {lr}
  b main

@ .type blink_200ms, % function
@ blink_200ms:
@   nop
@   push {lr}
@   bl led_setdir
@   bl led_on
@   bl time_delay_200ms
@   bl led_off
@   bl led_cleardir
@   bl time_delay_200ms
@   pop {lr}
@   bx lr
@ .size blink_200ms, . -blink_200ms
