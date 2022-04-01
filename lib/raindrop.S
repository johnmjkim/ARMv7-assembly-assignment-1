@ raindrop.S
@ raindrop library for the BBC micro:bit v2
@ By John Kim, 2022
@ Library uses similar template with audio.S provided at week 5 lab
@ Australian National University
.syntax unified

@ slow raindrop for stage 2 & 3
@ args
@ r4 : row
@ r5 : column
.global slowraindrop
.type slowraindrop, %function
slowraindrop:
  mov r4, 1
  push {lr}
  bl slowraindrop_col
  pop {lr}
.size slowraindrop, . -slowraindrop

.type slowraindrop_col, % function
slowraindrop_col:
  nop
  push {lr}
  cmp r4, #5
  IT LE
  blle blink_100ms
  cmp r4, #5
  IT LE
  addle r4, r4, 1
  cmp r4, #5
  IT LE
  blle slowraindrop_col
  pop {lr}
  
  bx lr
.size slowraindrop_col, . -slowraindrop_col

@ raindrops for stage 1
@ args
@ r4 : LED at row
@ r5 : LED at col
@ r6 : how many times to show rain drops
@ r7 : address for falling point
@ r8 : counting index
@ r9 : store multiplier
.global raindrops
.type raindrops, % function
raindrops:
  ldr r7, =falling_point
  ldr r6, [r7]
  mov r8, 0
  mov r9, 2
  mul r6, r6, r9
  mov r9, 4
  mul r6, r6, r9
  add r8, r8, r9
  push {lr}
  bl raindrops_repeat
  pop {lr}

  bx lr
.size raindrops, . -raindrops

.type raindrops_repeat, % function
raindrops_repeat:
  push {lr}
  cmp r8, r6
  IT LE
  blle raindrop
  cmp r8, r6
  IT LE
  blle raindrops_repeat
  pop {lr}

  bx lr
.size raindrops_repeat, . -raindrops_repeat

.type raindrop, % function
raindrop:
  ldr r4, [r7, r8]
  add r8, r8, r9
  ldr r5, [r7, r8]
  add r8, r8, r9
  push {lr}
  bl raindrop_col
  pop {lr}

  bx lr
.size raindrop, . -raindrop

.type raindrop_col, % function
raindrop_col:
  nop
  push {lr}
  cmp r4, #5
  IT LE
  blle blink_10ms
  cmp r4, #5
  IT LE
  addle r4, r4, 1
  cmp r4, #5
  IT LE
  blle raindrop_col
  pop {lr}
  
  bx lr
.size raindrop_col, . -raindrop_col

.data
falling_point:
  .word 14
  .word 1, 1
  .word 1, 2
  .word 1, 3
  .word 1, 4
  .word 1, 5
  .word 1, 1
  .word 1, 3
  .word 1, 5
  .word 1, 2
  .word 1, 4
  .word 1, 5
  .word 1, 2
  .word 1, 4
  .word 1, 1