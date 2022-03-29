@ raindrop.S
@ raindrop library for the BBC micro:bit v2
@ By John Kim, 2022
@ Australian National University
.syntax unified

@ slow raindrop for stage 2 & 3
@ args
@ r6 : how many times to show rain drops
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
@ r6 : how many times to show rain drops
.global raindrops
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