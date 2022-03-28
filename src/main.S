.syntax unified
.global main

.type main, %function
main:
  nop
  mov r6, 0
  push {lr}
  bl raindrops
  pop {lr}

  b loop

loop:
  b loop

.type raindrops, % function
raindrops:
  push {lr}
  cmp r6, #1
  IT LE
  blle raindrop
  cmp r6, #1
  IT LE
  addle r6, r6, 1
  cmp r6, #1
  IT LE
  blle raindrops
  pop {lr}

  bx lr
.size raindrops, . -raindrops

.type raindrop, % function
raindrop:
  mov r4, 1
  mov r5, 1
  push {lr}
  bl raindrop_col
  pop {lr}

  mov r4, 1
  mov r5, 3
  push {lr}
  bl raindrop_col
  pop {lr}

  mov r4, 1
  mov r5, 5
  push {lr}
  bl raindrop_col
  pop {lr}

  mov r4, 1
  mov r5, 2
  push {lr}
  bl raindrop_col
  pop {lr}

  mov r4, 1
  mov r5, 4
  push {lr}
  bl raindrop_col
  pop {lr}
.size raindrop, . -raindrop

.type raindrop_col, % function
raindrop_col:
  nop
  push {lr}
  cmp r4, #5
  IT LE
  blle blink_50ms
  cmp r4, #5
  IT LE
  addle r4, r4, 1
  cmp r4, #5
  IT LE
  blle raindrop_col
  pop {lr}
  
  bx lr
.size raindrop_col, . -raindrop_col