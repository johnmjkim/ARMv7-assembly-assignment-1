@ timer.S
@ timer library for the BBC micro:bit v2
@ By John Kim, 2022
@ Australian National University
.syntax unified

@ Time delay
.global time_delay_1s
.type time_delay_1s, %function
@ args:
@ r0: amount of time
time_delay_1s:
  nop
  ldr r0, =TIME_ONE_SEC
  str lr, [sp]
  bl time_delay
  ldr lr, [sp]
  bx lr
.size time_delay_1s, . -time_delay_1s

.global time_delay_500ms
.type time_delay_500ms, %function
@ args:
@ r0: amount of time
time_delay_500ms:
  nop
  ldr r0, =TIME_FIVEHUNDRED_MILI_SEC
  str lr, [sp]
  bl time_delay
  ldr lr, [sp]
  bx lr
.size time_delay_500ms, . -time_delay_500ms

.global time_delay_200ms
.type time_delay_200ms, %function
@ args:
@ r0: amount of time
time_delay_200ms:
  nop
  ldr r0, =TIME_TWOHUNDRED_MILI_SEC
  str lr, [sp]
  bl time_delay
  ldr lr, [sp]
  bx lr
.size time_delay_200ms, . -time_delay_200ms

.global time_delay_100ms
.type time_delay_100ms, %function
@ args:
@ r0: amount of time
time_delay_100ms:
  nop
  ldr r0, =TIME_HUNDRED_MILI_SEC
  str lr, [sp]
  bl time_delay
  ldr lr, [sp]
  bx lr
.size time_delay_100ms, . -time_delay_100ms

.global time_delay_5ms
.type time_delay_5ms, %function
@ args:
@ r0: amount of time
time_delay_5ms:
  nop
  ldr r0, =TIME_FIVE_MILI_SEC
  str lr, [sp]
  bl time_delay
  ldr lr, [sp]
  bx lr
.size time_delay_5ms, . -time_delay_5ms

.global time_delay_1ms
.type time_delay_1ms, %function
@ args:
@ r0: amount of time
time_delay_1ms:
  nop
  ldr r0, =TIME_ONE_MILI_SEC
  str lr, [sp]
  bl time_delay
  ldr lr, [sp]
  bx lr
.size time_delay_1ms, . -time_delay_1ms

.global time_delay_5us
.type time_delay_5us, %function
@ args:
@ r0: amount of time
time_delay_5us:
  nop
  ldr r0, =TIME_FIVE_MICRO_SEC
  str lr, [sp]
  bl time_delay
  ldr lr, [sp]
  bx lr
.size time_delay_5us, . -time_delay_5us

.global time_delay_1us
.type time_delay_1us, %function
@ args:
@ r0: amount of time
time_delay_1us:
  nop
  ldr r0, =TIME_ONE_MICRO_SEC
  str lr, [sp]
  bl time_delay
  ldr lr, [sp]
  bx lr
.size time_delay_1us, . -time_delay_1us

.global time_delay
.type time_delay, %function
@ args:
@ r0: amount of time
time_delay:
  nop
  subs r0, r0, 1
  bpl time_delay
  bx lr
.size time_delay, . -time_delay

@ Microbit (16MHz) Timer
.set TIME_ONE_MICRO_SEC, 0x10
.set TIME_FIVE_MICRO_SEC, 0x50
.set TIME_ONE_MILI_SEC, 0x3E80
.set TIME_FIVE_MILI_SEC, 0x13880
.set TIME_HUNDRED_MILI_SEC, 0x186A00
.set TIME_TWOHUNDRED_MILI_SEC, 0x20D400
.set TIME_FIVEHUNDRED_MILI_SEC, 0x7A1200
.set TIME_ONE_SEC, 0xF42400