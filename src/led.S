@ led.S
@ led library for the BBC micro:bit v2
@ By John Kim, 2022
@ Library uses similar template with audio.S provided at week 5 lab
@ Australian National University
.syntax unified

.global blink_1s
.type blink_1s, % function
blink_1s:
  nop
  push {lr}
  bl led_setdir
  bl led_on
  bl time_delay_1s
  bl led_off
  bl led_cleardir
  bl time_delay_1s
  pop {lr}
  bx lr
.size blink_1s, . -blink_1s

.global blink_500ms
.type blink_500ms, % function
blink_500ms:
  nop
  push {lr}
  bl led_setdir
  bl led_on
  bl time_delay_500ms
  bl led_off
  bl led_cleardir
  bl time_delay_500ms
  pop {lr}
  bx lr
.size blink_500ms, . -blink_500ms

.global blink_200ms
.type blink_200ms, % function
blink_200ms:
  nop
  push {lr}
  bl led_setdir
  bl led_on
  bl time_delay_200ms
  bl led_off
  bl led_cleardir
  bl time_delay_200ms
  pop {lr}
  bx lr
.size blink_200ms, . -blink_200ms

.global blink_100ms
.type blink_100ms, % function
blink_100ms:
  nop
  push {lr}
  bl led_setdir
  bl led_on
  bl time_delay_100ms
  bl led_off
  bl led_cleardir
  bl time_delay_100ms
  pop {lr}
  bx lr
.size blink_100ms, . -blink_100ms

.global blink_50ms
.type blink_50ms, % function
blink_50ms:
  nop
  push {lr}
  bl led_setdir
  bl led_on
  bl time_delay_50ms
  bl led_off
  bl led_cleardir
  bl time_delay_50ms
  pop {lr}
  bx lr
.size blink_50ms, . -blink_50ms

.global blink_20ms
.type blink_20ms, % function
blink_20ms:
  nop
  push {lr}
  bl led_setdir
  bl led_on
  bl time_delay_20ms
  bl led_off
  bl led_cleardir
  bl time_delay_20ms
  pop {lr}
  bx lr
.size blink_20ms, . -blink_20ms

.global blink_10ms
.type blink_10ms, % function
blink_10ms:
  nop
  push {lr}
  bl led_setdir
  bl led_on
  bl time_delay_10ms
  bl led_off
  bl led_cleardir
  bl time_delay_10ms
  pop {lr}
  bx lr
.size blink_10ms, . -blink_10ms

.global blink
.type blink, % function
blink:
  nop
  push {lr}
  bl led_setdir
  bl led_on
  bl led_off
  bl led_cleardir
  pop {lr}
  bx lr
.size blink, . -blink

@ led row, col set direction
@ Set ROW DIR
@ args :
@ r4 : ROW
@ r5 : COL
.global led_setdir
.type led_setdir, %function
led_setdir:
  push {lr}
  bl led_setdir_r
  bl led_setdir_c
  pop {lr}
  bx lr
.size led_setdir, . -led_setdir

@ led row, col set direction
@ Clear ROW DIR
@ args :
@ r4 : ROW
@ r5 : COL
.global led_cleardir
.type led_cleardir, %function
led_cleardir:
  push {lr}
  bl led_cleardir_r
  bl led_cleardir_c
  pop {lr}
  bx lr
.size led_cleardir, . -led_cleardir

@ Set ROW DIR
@ args :
@ r4 : ROW
.type led_setdir_r, %function
led_setdir_r:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  push {lr}
  cmp r4, #1
  IT EQ
  bleq led_setbit_r1
  cmp r4, #2
  IT EQ
  bleq led_setbit_r2
  cmp r4, #3
  IT EQ
  bleq led_setbit_r3
  cmp r4, #4
  IT EQ
  bleq led_setbit_r4
  cmp r4, #5
  IT EQ
  bleq led_setbit_r5
  pop {lr}
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_r, . -led_setdir_r

@ Clear ROW DIR
@ args :
@ r4 : ROW
.type led_cleardir_r, %function
led_cleardir_r:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_DIR]

  push {lr}
  cmp r4, #1
  IT EQ
  bleq led_clearbit_r1
  cmp r4, #2
  IT EQ
  bleq led_clearbit_r2
  cmp r4, #3
  IT EQ
  bleq led_clearbit_r3
  cmp r4, #4
  IT EQ
  bleq led_clearbit_r4
  cmp r4, #5
  IT EQ
  bleq led_clearbit_r5
  pop {lr}
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_r, . -led_cleardir_r

@ Set COL DIR
@ args :
@ r5 : COL
.type led_setdir_c, %function
led_setdir_c:
  push {lr}
  cmp r5, #1
  IT EQ
  bleq set_GPIO_P0
  cmp r5, #2
  IT EQ
  bleq set_GPIO_P0
  cmp r5, #3
  IT EQ
  bleq set_GPIO_P0
  cmp r5, #4
  IT EQ
  bleq set_GPIO_P1
  cmp r5, #5
  IT EQ
  bleq set_GPIO_P0
  pop {lr}
  ldr r2, [r1, GPIO_PX_DIR]

  push {lr}
  cmp r5, #1
  IT EQ
  bleq led_setbit_c1
  cmp r5, #2
  IT EQ
  bleq led_setbit_c2
  cmp r5, #3
  IT EQ
  bleq led_setbit_c3
  cmp r5, #4
  IT EQ
  bleq led_setbit_c4
  cmp r5, #5
  IT EQ
  bleq led_setbit_c5
  pop {lr}
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_setdir_c, . -led_setdir_c

@ Clear COL DIR
@ args :
@ r5 : COL
.type led_cleardir_c, %function
led_cleardir_c:
  push {lr}
  cmp r5, #1
  IT EQ
  bleq set_GPIO_P0
  cmp r5, #2
  IT EQ
  bleq set_GPIO_P0
  cmp r5, #3
  IT EQ
  bleq set_GPIO_P0
  cmp r5, #4
  IT EQ
  bleq set_GPIO_P1
  cmp r5, #5
  IT EQ
  bleq set_GPIO_P0
  pop {lr}
  ldr r2, [r1, GPIO_PX_DIR]

  push {lr}
  cmp r5, #1
  IT EQ
  bleq led_clearbit_c1
  cmp r5, #2
  IT EQ
  bleq led_clearbit_c2
  cmp r5, #3
  IT EQ
  bleq led_clearbit_c3
  cmp r5, #4
  IT EQ
  bleq led_clearbit_c4
  cmp r5, #5
  IT EQ
  bleq led_clearbit_c5
  pop {lr}
  
  str r2, [r1, GPIO_PX_DIR]
  bx lr
.size led_cleardir_c, . -led_cleardir_c

.type set_GPIO_P0, %function
set_GPIO_P0:
  ldr r1, =GPIO_P0
  bx lr
.size set_GPIO_P0, . -set_GPIO_P0

.type set_GPIO_P1, %function
set_GPIO_P1:
  ldr r1, =GPIO_P1
  bx lr
.size set_GPIO_P1, . -set_GPIO_P1

@ Led ROW1~5 ON
@ args :
@ r4 : ROW
.global led_on
.type led_on, %function
led_on:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  push {lr}
  cmp r4, #1
  IT EQ
  bleq led_setbit_r1
  cmp r4, #2
  IT EQ
  bleq led_setbit_r2
  cmp r4, #3
  IT EQ
  bleq led_setbit_r3
  cmp r4, #4
  IT EQ
  bleq led_setbit_r4
  cmp r4, #5
  IT EQ
  bleq led_setbit_r5
  pop {lr}
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_on, . -led_on

@ Led ROW1~5 OFF
@ args :
@ r4 : ROW
.global led_off
.type led_off, %function
led_off:
  ldr r1, =GPIO_P0
  ldr r2, [r1, GPIO_PX_OUT]

  push {lr}
  cmp r4, #1
  IT EQ
  bleq led_clearbit_r1
  cmp r4, #2
  IT EQ
  bleq led_clearbit_r2
  cmp r4, #3
  IT EQ
  bleq led_clearbit_r3
  cmp r4, #4
  IT EQ
  bleq led_clearbit_r4
  cmp r4, #5
  IT EQ
  bleq led_clearbit_r5
  pop {lr}
  
  str r2, [r1, GPIO_PX_OUT]
  bx lr
.size led_off, . -led_off

@ Set bit of ROW 1~5, COL 1~5
.type led_setbit_r1, %function
led_setbit_r1:
  ldr r3, =ROW1
  orr r2, r2, r3
  bx lr
.size led_setbit_r1, . -led_setbit_r1

.type led_setbit_r2, %function
led_setbit_r2:
  ldr r3, =ROW2
  orr r2, r2, r3
  bx lr
.size led_setbit_r2, . -led_setbit_r2

.type led_setbit_r3, %function
led_setbit_r3:
  ldr r3, =ROW3
  orr r2, r2, r3
  bx lr
.size led_setbit_r3, . -led_setbit_r3

.type led_setbit_r4, %function
led_setbit_r4:
  ldr r3, =ROW4
  orr r2, r2, r3
  bx lr
.size led_setbit_r4, . -led_setbit_r4

.type led_setbit_r5, %function
led_setbit_r5:
  ldr r3, =ROW5
  orr r2, r2, r3
  bx lr
.size led_setbit_r5, . -led_setbit_r5

.type led_setbit_c1, %function
led_setbit_c1:
  ldr r3, =COL1
  orr r2, r2, r3
  bx lr
.size led_setbit_c1, . -led_setbit_c1

.type led_setbit_c2, %function
led_setbit_c2:
  ldr r3, =COL2
  orr r2, r2, r3
  bx lr
.size led_setbit_c2, . -led_setbit_c2

.type led_setbit_c3, %function
led_setbit_c3:
  ldr r3, =COL3
  orr r2, r2, r3
  bx lr
.size led_setbit_c3, . -led_setbit_c3

.type led_setbit_c4, %function
led_setbit_c4:
  ldr r3, =COL4
  orr r2, r2, r3
  bx lr
.size led_setbit_c4, . -led_setbit_c4

.type led_setbit_c5, %function
led_setbit_c5:
  ldr r3, =COL5
  orr r2, r2, r3
  bx lr
.size led_setbit_c5, . -led_setbit_c5

@ Clear bit of ROW 1~5, COL 1~5
.type led_clearbit_r1, %function
led_clearbit_r1:
  ldr r3, =ROW1
  bic r2, r2, r3
  bx lr
.size led_clearbit_r1, . -led_clearbit_r1

.type led_clearbit_r2, %function
led_clearbit_r2:
  ldr r3, =ROW2
  bic r2, r2, r3
  bx lr
.size led_clearbit_r2, . -led_clearbit_r2

.type led_clearbit_r3, %function
led_clearbit_r3:
  ldr r3, =ROW3
  bic r2, r2, r3
  bx lr
.size led_clearbit_r3, . -led_clearbit_r3

.type led_clearbit_r4, %function
led_clearbit_r4:
  ldr r3, =ROW4
  bic r2, r2, r3
  bx lr
.size led_clearbit_r4, . -led_clearbit_r4

.type led_clearbit_r5, %function
led_clearbit_r5:
  ldr r3, =ROW5
  bic r2, r2, r3
  bx lr
.size led_clearbit_r5, . -led_clearbit_r5

.type led_clearbit_c1, %function
led_clearbit_c1:
  ldr r3, =COL1
  bic r2, r2, r3
  bx lr
.size led_clearbit_c1, . -led_clearbit_c1

.type led_clearbit_c2, %function
led_clearbit_c2:
  ldr r3, =COL2
  bic r2, r2, r3
  bx lr
.size led_clearbit_c2, . -led_clearbit_c2

.type led_clearbit_c3, %function
led_clearbit_c3:
  ldr r3, =COL3
  bic r2, r2, r3
  bx lr
.size led_clearbit_c3, . -led_clearbit_c3

.type led_clearbit_c4, %function
led_clearbit_c4:
  ldr r3, =COL4
  bic r2, r2, r3
  bx lr
.size led_clearbit_c4, . -led_clearbit_c4

.type led_clearbit_c5, %function
led_clearbit_c5:
  ldr r3, =COL5
  bic r2, r2, r3
  bx lr
.size led_clearbit_c5, . -led_clearbit_c5

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
