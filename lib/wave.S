@ wave.S
@ wave library for the BBC micro:bit v2
@ By John Kim, 2022
@ Australian National University
.syntax unified

@ Wave side, top view for stage 2, 3, 4
@ args
@ r6 : counting times
@ r7 : calculate maximum led numbers
@ r8 (free variables) : any necessary variable
@ r9 (free variables) : any necessary variable
@ r10 : set time limit
@ r11 : row data register
@ r12 : col data register
@ Wave side view for stage 3
.global wave_3_sideview
.type wave_3_sideview, %function
wave_3_sideview:
  ldr r11, =wave_3_1_r
  ldr r12, =wave_3_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_3_2_r
  ldr r12, =wave_3_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_3_3_r
  ldr r12, =wave_3_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_3_4_r
  ldr r12, =wave_3_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_3_sideview, . -wave_3_sideview

@ Wave top view for stage 4
.global wave_11_topview
.type wave_11_topview, %function
wave_11_topview:
  mov r4, 1
  mov r5, 1
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r11, =wave_11_1_r
  ldr r12, =wave_11_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_11_2_r
  ldr r12, =wave_11_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_11_3_r
  ldr r12, =wave_11_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_11_4_r
  ldr r12, =wave_11_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_11_5_r
  ldr r12, =wave_11_5_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_11_6_r
  ldr r12, =wave_11_6_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_11_topview, . -wave_11_topview

.global wave_22_topview
.type wave_22_topview, %function
wave_22_topview:
  mov r4, 2
  mov r5, 2
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r11, =wave_22_1_r
  ldr r12, =wave_22_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_22_2_r
  ldr r12, =wave_22_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_22_3_r
  ldr r12, =wave_22_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_22_4_r
  ldr r12, =wave_22_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_22_topview, . -wave_22_topview

.global wave_24_topview
.type wave_24_topview, %function
wave_24_topview:
  mov r4, 2
  mov r5, 4
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r11, =wave_24_1_r
  ldr r12, =wave_24_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_24_2_r
  ldr r12, =wave_24_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_24_3_r
  ldr r12, =wave_24_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_24_4_r
  ldr r12, =wave_24_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_24_topview, . -wave_24_topview

.global wave_33_topview
.type wave_33_topview, %function
wave_33_topview:
  mov r4, 3
  mov r5, 3
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r11, =wave_33_1_r
  ldr r12, =wave_33_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_33_2_r
  ldr r12, =wave_33_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_33_topview, . -wave_33_topview

.global wave_42_topview
.type wave_42_topview, %function
wave_42_topview:
  mov r4, 4
  mov r5, 2
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r11, =wave_42_1_r
  ldr r12, =wave_42_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_42_2_r
  ldr r12, =wave_42_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_42_3_r
  ldr r12, =wave_42_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_42_4_r
  ldr r12, =wave_42_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_42_topview, . -wave_42_topview

.global wave_44_topview
.type wave_44_topview, %function
wave_44_topview:
  mov r4, 4
  mov r5, 4
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r11, =wave_44_1_r
  ldr r12, =wave_44_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_44_2_r
  ldr r12, =wave_44_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_44_3_r
  ldr r12, =wave_44_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_44_4_r
  ldr r12, =wave_44_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_24_topview, . -wave_24_topview

.global wave_55_topview
.type wave_55_topview, %function
wave_55_topview:
  mov r4, 5
  mov r5, 5
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r11, =wave_55_1_r
  ldr r12, =wave_55_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_55_2_r
  ldr r12, =wave_55_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_55_3_r
  ldr r12, =wave_55_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_55_4_r
  ldr r12, =wave_55_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_55_5_r
  ldr r12, =wave_55_5_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_55_6_r
  ldr r12, =wave_55_6_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_55_topview, . -wave_55_topview

@ Multiplw Waves for stage 4
.global wave_22_44_topview
.type wave_22_44_topview, %function
wave_22_44_topview:
  mov r4, 2
  mov r5, 2
  push {lr}
  bl blink_50ms
  pop {lr}
  
  mov r4, 4
  mov r5, 4
  push {lr}
  bl blink_50ms
  pop {lr}

  ldr r11, =wave_22_44_1_r
  ldr r12, =wave_22_44_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_HUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_22_44_2_r
  ldr r12, =wave_22_44_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_22_44_3_r
  ldr r12, =wave_22_44_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_22_44_4_r
  ldr r12, =wave_22_44_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_22_44_topview, . -wave_22_44_topview

.global wave_24_42_topview
.type wave_24_42_topview, %function
wave_24_42_topview:
  mov r4, 2
  mov r5, 4
  push {lr}
  bl blink_50ms
  pop {lr}

  mov r4, 4
  mov r5, 2
  push {lr}
  bl blink_50ms
  pop {lr}

  ldr r11, =wave_24_42_1_r
  ldr r12, =wave_24_42_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_HUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_24_42_2_r
  ldr r12, =wave_24_42_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_24_42_3_r
  ldr r12, =wave_24_42_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wave_24_42_4_r
  ldr r12, =wave_24_42_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wave_24_42_topview, . -wave_24_42_topview

.type display_wave, % function
display_wave:
  mov r8, 4
  push {lr}
  cmp r10, r6
  IT GE
  blge wave_topview
  cmp r10, r6
  IT GE
  subge r10, r10, 1
  cmp r10, r6
  IT GE
  blge display_wave
  pop {lr}

  bx lr
.size display_wave, . -display_wave

.type wave_topview, %function
wave_topview:
  push {lr}
  cmp r8, r7
  IT LE
  blle wave_blink
  cmp r8, r7
  IT LE
  addle r8, r8 ,4
  cmp r8, r7
  IT LE
  blle wave_topview
  pop {lr}

  bx lr
.size wave_topview, . -wave_topview

.type wave_blink, %function
wave_blink:
  ldr r4, [r11, r8]
  ldr r5, [r12, r8]
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_blink, . -wave_blink

@ ROW, COL data to show wave
@ Data register example : wave_XX_Y_Z
@ XX : water source position (ROW, COL)
@ Y : number of scene
@ Z : r (ROW) or c (COL)
@ Data example : a, b, c, d, ...
@ a : number of ROW/COL set
@ b, c, d : ROW/COL pin number

@ Data for stage 2
.data
wave_3_1_r:
  .word 4, 4, 5, 5, 5
wave_3_1_c:
  .word 4, 3, 2, 3, 4
wave_3_2_r:
  .word 7, 4, 4, 5, 5, 5, 5
wave_3_2_c:
  .word 7, 2, 4, 1, 2, 3, 4, 5
wave_3_3_r:
  .word 6, 4, 4, 5, 5, 5, 5
wave_3_3_c:
  .word 6, 1, 5, 1, 2, 4, 5
wave_3_4_r:
  .word 2, 5, 5
wave_3_4_c:
  .word 2, 1, 5

@ Data for stage 3
.data
wave_11_1_r:
  .word 3, 1, 2, 2
wave_11_1_c:
  .word 3, 2, 1, 2
wave_11_2_r:
  .word 4, 1, 2, 3, 3
wave_11_2_c:
  .word 4, 3, 3, 2, 1
wave_11_3_r:
  .word 5, 1, 2, 3, 4, 4
wave_11_3_c:
  .word 5, 4, 4, 3, 2, 1
wave_11_4_r:
  .word 6, 1, 2, 3, 4, 5, 5
wave_11_4_c:
  .word 6, 5, 5, 4, 3, 2, 1
wave_11_5_r:
  .word 3, 3, 4, 5
wave_11_5_c:
  .word 3, 5, 4, 3
wave_11_6_r:
  .word 2, 4, 5
wave_11_6_c:
  .word 2, 5, 4

.data
wave_22_1_r:
  .word 8, 1, 1, 1, 2, 2, 3, 3, 3
wave_22_1_c:
  .word 8, 1, 2, 3, 1, 3, 1, 2, 3
wave_22_2_r:
  .word 6, 1, 2, 3, 4, 4, 4
wave_22_2_c:
  .word 6, 4, 4, 4, 3, 2, 1
wave_22_3_r:
  .word 7, 1, 2, 3, 4, 5, 5, 5
wave_22_3_c:
  .word 7, 5, 5, 5, 4, 3, 2, 1
wave_22_4_r:
  .word 2, 4, 5
wave_22_4_c:
  .word 2, 5, 4

.data
wave_24_1_r:
  .word 8, 1, 1, 1, 2, 2, 3, 3, 3
wave_24_1_c:
  .word 8, 3, 4, 5, 3, 5, 3, 4, 5
wave_24_2_r:
  .word 6, 1, 2, 3, 4, 4, 4
wave_24_2_c:
  .word 6, 2, 2, 2, 3, 4, 5
wave_24_3_r:
  .word 7, 1, 2, 3, 4, 5, 5, 5
wave_24_3_c:
  .word 7, 1, 1, 1, 2, 3, 4, 5
wave_24_4_r:
  .word 2, 4, 5
wave_24_4_c:
  .word 2, 1, 2

.data
wave_33_1_r:
  .word 8, 2, 2, 2, 3, 3, 4, 4, 4
wave_33_1_c:
  .word 8, 2, 3, 4, 2, 4, 2, 3, 4
wave_33_2_r:
  .word 12, 1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5
wave_33_2_c:
  .word 12, 2, 3, 4, 1, 5, 1, 5, 1, 5, 2, 3, 4

.data
wave_42_1_r:
  .word 8, 3, 3, 3, 4, 4, 5, 5, 5
wave_42_1_c:
  .word 8, 1, 2, 3, 1, 3, 1, 2, 3
wave_42_2_r:
  .word 6, 2, 2, 2, 3, 4, 5
wave_42_2_c:
  .word 6, 1, 2, 3, 4, 4, 4
wave_42_3_r:
  .word 7, 1, 1, 1, 2, 3, 4, 5
wave_42_3_c:
  .word 7, 1, 2, 3, 4, 5, 5, 5
wave_42_4_r:
  .word 2, 1, 2
wave_42_4_c:
  .word 2, 4, 5

  .data
wave_44_1_r:
  .word 8, 3, 3, 3, 4, 4, 5, 5, 5
wave_44_1_c:
  .word 8, 3, 4, 5, 3, 5, 3, 4, 5
wave_44_2_r:
  .word 6, 2, 2, 2, 3, 4, 5
wave_44_2_c:
  .word 6, 3, 4, 5, 2, 2, 2
wave_44_3_r:
  .word 7, 1, 1, 1, 2, 3, 4, 5
wave_44_3_c:
  .word 7, 3, 4, 5, 2, 1, 1, 1
wave_44_4_r:
  .word 2, 1, 2
wave_44_4_c:
  .word 2, 2, 1

.data
wave_55_1_r:
  .word 3, 4, 4, 5
wave_55_1_c:
  .word 3, 4, 5, 4
wave_55_2_r:
  .word 4, 3, 3, 4, 5
wave_55_2_c:
  .word 4, 4, 5, 3, 3
wave_55_3_r:
  .word 5, 2, 2, 3, 4, 5
wave_55_3_c:
  .word 5, 5, 4, 3, 2, 2
wave_55_4_r:
  .word 6, 1, 1, 2, 3, 4, 5
wave_55_4_c:
  .word 6, 5, 4, 3, 2, 1, 1
wave_55_5_r:
  .word 3, 1, 2, 3
wave_55_5_c:
  .word 3, 3, 2, 1
wave_55_6_r:
  .word 2, 1, 2
wave_55_6_c:
  .word 2, 2, 1

.data
wave_22_44_1_r:
  .word 15, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3, 4, 4, 5, 5, 5
wave_22_44_1_c:
  .word 15, 1, 2, 3, 1, 3, 1, 2, 3, 4, 5, 3, 5, 3, 4, 5

.data
wave_22_44_2_r:
  .word 10, 1, 2, 2, 2, 3, 3, 4, 4, 4, 5
wave_22_44_2_c:
  .word 10, 4, 3, 4, 5, 2, 4, 1, 2, 3, 2

.data
wave_22_44_3_r:
  .word 12, 1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5
wave_22_44_3_c:
  .word 12, 3, 4, 5, 2, 5, 1, 5, 1, 4, 1, 2, 3

.data
wave_22_44_4_r:
  .word 4, 1, 2, 4, 5
wave_22_44_4_c:
  .word 4, 2, 1, 5, 4

.data
wave_24_42_1_r:
  .word 15, 1, 1, 1, 2, 2, 3, 3, 3, 3, 3, 4, 4, 5, 5, 5
wave_24_42_1_c:
  .word 15, 3, 4, 5, 3, 5, 1, 2, 3, 4, 5, 1, 3, 1, 2, 3

.data
wave_24_42_2_r:
  .word 10, 1, 2, 2, 2, 3, 3, 4, 4, 4, 5
wave_24_42_2_c:
  .word 10, 2, 1, 2, 3, 2, 4, 3, 4, 5, 4

.data
wave_24_42_3_r:
  .word 12, 1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5
wave_24_42_3_c:
  .word 12, 1, 2, 3, 1, 4, 1, 5, 2, 5, 3, 4, 5

.data
wave_24_42_4_r:
  .word 4, 1, 2, 4, 5
wave_24_42_4_c:
  .word 4, 4, 5, 1, 2