.syntax unified
.global main

.type main, %function
main:
  nop
  mov r4, 1
  mov r5, 3
  push {lr}
  bl blink_100ms
  bl blink_200ms
  bl blink_500ms
  bl blink_1s
  pop {lr}
  b main