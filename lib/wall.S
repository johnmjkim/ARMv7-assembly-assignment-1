@ wall.S
@ wall library for the BBC micro:bit v2
@ By John Kim, 2022
@ Library uses similar template with audio.S provided at week 5 lab
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
.global wall_topview
.type wall_topview, %function
wall_topview:
  mov r4, 1
  mov r5, 3
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r11, =wall_1_r
  ldr r12, =wall_1_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wall_2_r
  ldr r12, =wall_2_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wall_3_r
  ldr r12, =wall_3_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wall_4_r
  ldr r12, =wall_4_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wall_5_r
  ldr r12, =wall_5_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wall_6_r
  ldr r12, =wall_6_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wall_7_r
  ldr r12, =wall_7_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wall_8_r
  ldr r12, =wall_8_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  ldr r11, =wall_9_r
  ldr r12, =wall_9_c
  ldr r7, [r11]
  mov r8, 4
  mul r7, r7, r8

  ldr r10, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl display_wave
  pop {lr}

  bx lr
.size wall_topview, . -wall_topview

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
wall_1_r:
  .word 5, 1, 1, 2, 2, 2
wall_1_c:
  .word 5, 2, 4, 2, 3, 4
wall_2_r:
  .word 7, 1, 1, 2, 2, 3, 3, 3
wall_2_c:
  .word 7, 1, 5, 1, 5, 2, 3, 4
wall_3_r:
  .word 5, 3, 3, 4, 4, 4
wall_3_c:
  .word 5, 1, 5, 2, 3, 4
wall_4_r:
  .word 5, 4, 4, 5, 5, 5
wall_4_c:
  .word 5, 1, 5, 2, 3, 4
wall_5_r:
  .word 5, 4, 4, 4, 5, 5
wall_5_c:
  .word 5, 2, 3, 4, 1, 5
wall_6_r:
  .word 5, 3, 3, 3, 4, 4
wall_6_c:
  .word 5, 2, 3, 4, 1, 5
wall_7_r:
  .word 5, 2, 2, 2, 3, 3
wall_7_c:
  .word 5, 2, 3, 4, 1, 5
wall_8_r:
  .word 5, 1, 1, 1, 2, 2
wall_8_c:
  .word 5, 2, 3, 4, 1, 5
wall_9_r:
  .word 2, 1, 1
wall_9_c:
  .word 2, 1, 5