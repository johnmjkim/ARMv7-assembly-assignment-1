@ led.S
@ led library for the BBC micro:bit v2
@ By John Kim, 2022
@ Australian National University
.syntax unified

@ led row, col set direction
@ Set ROW1 DIR
.global led_setdir_r1
.type led_setdir_r1, %function
led_setdir_r1:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_r1
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_r1, . -led_setdir_r1

@ Set ROW2 DIR
.global led_setdir_r2
.type led_setdir_r2, %function
led_setdir_r2:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_r2
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_r2, . -led_setdir_r2

@ Set ROW3 DIR
.global led_setdir_r3
.type led_setdir_r3, %function
led_setdir_r3:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_r3
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_r3, . -led_setdir_r3

@ Set ROW4 DIR
.global led_setdir_r4
.type led_setdir_r4, %function
led_setdir_r4:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_r4
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_r4, . -led_setdir_r4

@ Set ROW5 DIR
.global led_setdir_r5
.type led_setdir_r5, %function
led_setdir_r5:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_r5
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_r5, . -led_setdir_r5

@ Set COL1 DIR
.global led_setdir_c1
.type led_setdir_c1, %function
led_setdir_c1:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_c1
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_c1, . -led_setdir_c1

@ Set COL2 DIR
.global led_setdir_c2
.type led_setdir_c2, %function
led_setdir_c2:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_c2
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_c2, . -led_setdir_c2

@ Set COL3 DIR
.global led_setdir_c3
.type led_setdir_c3, %function
led_setdir_c3:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_c3
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_c3, . -led_setdir_c3

@ Set COL4 DIR
.global led_setdir_c4
.type led_setdir_c4, %function
led_setdir_c4:
  ldr r1, =GPIO_P1
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_c4
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_c4, . -led_setdir_c4

@ Set COL5 DIR
.global led_setdir_c5
.type led_setdir_c5, %function
led_setdir_c5:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_setbit_c5
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_c5, . -led_setdir_c5

@ Clear ROW1 DIR
.global led_cleardir_r1
.type led_cleardir_r1, %function
led_cleardir_r1:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_r1
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_r1, . -led_cleardir_r1

@ Clear ROW2 DIR
.global led_cleardir_r2
.type led_cleardir_r2, %function
led_cleardir_r2:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_r2
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_r2, . -led_cleardir_r2

@ Clear ROW3 DIR
.global led_cleardir_r3
.type led_cleardir_r3, %function
led_cleardir_r3:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_r3
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_r3, . -led_cleardir_r3

@ Clear ROW4 DIR
.global led_cleardir_r4
.type led_cleardir_r4, %function
led_cleardir_r4:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_r4
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_r4, . -led_cleardir_r4

@ Clear ROW5 DIR
.global led_cleardir_r5
.type led_cleardir_r5, %function
led_cleardir_r5:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_r5
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_r5, . -led_cleardir_r5

@ Clear COL1 DIR
.global led_cleardir_c1
.type led_cleardir_c1, %function
led_cleardir_c1:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_c1
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_c1, . -led_cleardir_c1

@ Clear COL2 DIR
.global led_cleardir_c2
.type led_cleardir_c2, %function
led_cleardir_c2:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_c2
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_c2, . -led_cleardir_c2

@ Clear COL3 DIR
.global led_cleardir_c3
.type led_cleardir_c3, %function
led_cleardir_c3:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_c3
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_c3, . -led_cleardir_c3

@ Clear COL4 DIR
.global led_cleardir_c4
.type led_cleardir_c4, %function
led_cleardir_c4:
  ldr r1, =GPIO_P1
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_c4
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_c4, . -led_cleardir_c4

@ Clear COL5 DIR
.global led_cleardir_c5
.type led_cleardir_c5, %function
led_cleardir_c5:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  str lr, [sp]
  bl led_clearbit_c5
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_c5, . -led_cleardir_c5

@ Led ROW1 ON
.global led_on_r1
.type led_on_r1, %function
led_on_r1:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_setbit_r1
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_on_r1, . -led_on_r1

@ Led ROW2 ON
.global led_on_r2
.type led_on_r2, %function
led_on_r2:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_setbit_r2
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_on_r2, . -led_on_r2

@ Led ROW3 ON
.global led_on_r3
.type led_on_r3, %function
led_on_r3:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_setbit_r3
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_on_r3, . -led_on_r3

@ Led ROW4 ON
.global led_on_r4
.type led_on_r4, %function
led_on_r4:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_setbit_r4
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_on_r4, . -led_on_r4

@ Led ROW5 ON
.global led_on_r5
.type led_on_r5, %function
led_on_r5:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_setbit_r5
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_on_r5, . -led_on_r5

@ Led ROW1 OFF
.global led_off_r1
.type led_off_r1, %function
led_off_r1:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_clearbit_r1
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_off_r1, . -led_off_r1

@ Led ROW2 OFF
.global led_off_r2
.type led_off_r2, %function
led_off_r2:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_clearbit_r2
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_off_r2, . -led_off_r2

@ Led ROW3 OFF
.global led_off_r3
.type led_off_r3, %function
led_off_r3:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_clearbit_r3
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_off_r3, . -led_off_r3

@ Led ROW4 OFF
.global led_off_r4
.type led_off_r4, %function
led_off_r4:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_clearbit_r4
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_off_r4, . -led_off_r4

@ Led ROW5 OFF
.global led_off_r5
.type led_off_r5, %function
led_off_r5:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  str lr, [sp]
  bl led_clearbit_r5
  ldr lr, [sp]
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_off_r5, . -led_off_r5

@ Set bit of ROW 1~5, COL 1~5
.global led_setbit_r1
.type led_setbit_r1, %function
led_setbit_r1:
  ldr r3, =ROW1
  orr r2, r2, r3
  bx lr
.size led_setbit_r1, . -led_setbit_r1

.global led_setbit_r2
.type led_setbit_r2, %function
led_setbit_r2:
  ldr r3, =ROW2
  orr r2, r2, r3
  bx lr
.size led_setbit_r2, . -led_setbit_r2

.global led_setbit_r3
.type led_setbit_r3, %function
led_setbit_r3:
  ldr r3, =ROW3
  orr r2, r2, r3
  bx lr
.size led_setbit_r3, . -led_setbit_r3

.global led_setbit_r4
.type led_setbit_r4, %function
led_setbit_r4:
  ldr r3, =ROW4
  orr r2, r2, r3
  bx lr
.size led_setbit_r4, . -led_setbit_r4

.global led_setbit_r5
.type led_setbit_r5, %function
led_setbit_r5:
  ldr r3, =ROW5
  orr r2, r2, r3
  bx lr
.size led_setbit_r5, . -led_setbit_r5

.global led_setbit_c1
.type led_setbit_c1, %function
led_setbit_c1:
  ldr r3, =COL1
  orr r2, r2, r3
  bx lr
.size led_setbit_c1, . -led_setbit_c1

.global led_setbit_c2
.type led_setbit_c2, %function
led_setbit_c2:
  ldr r3, =COL2
  orr r2, r2, r3
  bx lr
.size led_setbit_c2, . -led_setbit_c2

.global led_setbit_c3
.type led_setbit_c3, %function
led_setbit_c3:
  ldr r3, =COL3
  orr r2, r2, r3
  bx lr
.size led_setbit_c3, . -led_setbit_c3

.global led_setbit_c4
.type led_setbit_c4, %function
led_setbit_c4:
  ldr r3, =COL4
  orr r2, r2, r3
  bx lr
.size led_setbit_c4, . -led_setbit_c4

.global led_setbit_c5
.type led_setbit_c5, %function
led_setbit_c5:
  ldr r3, =COL5
  orr r2, r2, r3
  bx lr
.size led_setbit_c5, . -led_setbit_c5

@ Clear bit of ROW 1~5, COL 1~5
.global led_clearbit_r1
.type led_clearbit_r1, %function
led_clearbit_r1:
  ldr r3, =ROW1
  bic r2, r2, r3
  bx lr
.size led_clearbit_r1, . -led_clearbit_r1

.global led_clearbit_r2
.type led_clearbit_r2, %function
led_clearbit_r2:
  ldr r3, =ROW2
  bic r2, r2, r3
  bx lr
.size led_clearbit_r2, . -led_clearbit_r2

.global led_clearbit_r3
.type led_clearbit_r3, %function
led_clearbit_r3:
  ldr r3, =ROW3
  bic r2, r2, r3
  bx lr
.size led_clearbit_r3, . -led_clearbit_r3

.global led_clearbit_r4
.type led_clearbit_r4, %function
led_clearbit_r4:
  ldr r3, =ROW4
  bic r2, r2, r3
  bx lr
.size led_clearbit_r4, . -led_clearbit_r4

.global led_clearbit_r5
.type led_clearbit_r5, %function
led_clearbit_r5:
  ldr r3, =ROW5
  bic r2, r2, r3
  bx lr
.size led_clearbit_r5, . -led_clearbit_r5

.global led_clearbit_c1
.type led_clearbit_c1, %function
led_clearbit_c1:
  ldr r3, =COL1
  bic r2, r2, r3
  bx lr
.size led_clearbit_c1, . -led_clearbit_c1

.global led_clearbit_c2
.type led_clearbit_c2, %function
led_clearbit_c2:
  ldr r3, =COL2
  bic r2, r2, r3
  bx lr
.size led_clearbit_c2, . -led_clearbit_c2

.global led_clearbit_c3
.type led_clearbit_c3, %function
led_clearbit_c3:
  ldr r3, =COL3
  bic r2, r2, r3
  bx lr
.size led_clearbit_c3, . -led_clearbit_c3

.global led_clearbit_c4
.type led_clearbit_c4, %function
led_clearbit_c4:
  ldr r3, =COL4
  bic r2, r2, r3
  bx lr
.size led_clearbit_c4, . -led_clearbit_c4

.global led_clearbit_c5
.type led_clearbit_c5, %function
led_clearbit_c5:
  ldr r3, =COL5
  bic r2, r2, r3
  bx lr
.size led_clearbit_c5, . -led_clearbit_c5

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

.data

.set ROW1, 0x200000
.set ROW2, 0x400000
.set ROW3, 0x8000
.set ROW4, 0x1000000
.set ROW5, 0x80000

.set COL1, 0x10000000
.set COL2, 0x800
.set COL3, 0x80000000
.set COL4, 0x20
.set COL5, 0x40000000

.set GPIO_P0, 0x50000000
.set GPIO_P1, 0x50000300
.set GPIO_PX_OUT, 0x504     @ index by pin number
.set GPIO_PX_DIR, 0x514     @ index by pin number

@ Microbit (16MHz) Timer
.set TIME_ONE_MICRO_SEC, 0x10
.set TIME_FIVE_MICRO_SEC, 0x50
.set TIME_ONE_MILI_SEC, 0x3E80
.set TIME_FIVE_MILI_SEC, 0x13880
.set TIME_HUNDRED_MILI_SEC, 0x186A00
.set TIME_TWOHUNDRED_MILI_SEC, 0x20D400
.set TIME_FIVEHUNDRED_MILI_SEC, 0x7A1200
.set TIME_ONE_SEC, 0xF42400