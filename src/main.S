.syntax unified
.global main

.type main, %function
main:
  b stage1

stage1:
  nop
  @ Stage 1
  @ Show raindrops twice
  mov r6, 0
  push {lr}
  bl raindrops
  pop {lr}

  b stage2

stage2:
  nop
  @ Stage 2
  @ Show slow rain drop at side view
  @ Show wave at side view
  mov r5, 3
  mov r6, 0
  push {lr}
  bl slowraindrop
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_3_sideview
  pop {lr}

  b stage3

stage3:
  nop
  @ Stage 3
  @ Show slow rain drop at side view
  @ Show wave at top view
  mov r5, 3
  mov r6, 0
  push {lr}
  bl slowraindrop
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_33_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  b stage4

stage4:
  nop
  @ Stage 4
  @ Show slow rain drop at side view
  @ Show wave at top view at random places
  mov r6, 0
  push {lr}
  bl raindrops
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_22_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_55_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_24_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_11_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_42_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_44_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_22_44_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  mov r6, 0
  push {lr}
  bl wave_24_42_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  b stage5

stage5:
  nop
  @ Stage 5
  @ Show wave of top view at 13
  @ Show wave reflects back from the front wall
  @ repeat twice
  mov r6, 0
  push {lr}
  bl wall_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  mov r6, 0
  push {lr}
  bl wall_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  b main
