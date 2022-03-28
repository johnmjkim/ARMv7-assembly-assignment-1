.syntax unified
.global main

.type main, %function
main:
  nop
  @ Stage 1
  @ Show raindrops twice
  mov r6, 0
  push {lr}
  bl raindrops
  pop {lr}

  @ Stage 2
  @ Show slow rain drop at side view
  @ Show wave at side view
  mov r6, 0
  push {lr}
  bl slowraindrop
  pop {lr}

  @ Stage 3
  @ Show slow rain drop at side view
  @ Show wave at top view
  mov r6, 0
  push {lr}
  bl slowraindrop
  pop {lr}

  b main

loop:
  b loop
