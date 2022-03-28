.syntax unified
.global main

.type main, %function
main:
  nop
  @ @ Stage 1
  @ @ Show raindrops twice
  @ mov r6, 0
  @ push {lr}
  @ bl raindrops
  @ pop {lr}

  @ @ Stage 2
  @ @ Show slow rain drop at side view
  @ @ Show wave at side view
  @ mov r6, 0
  @ push {lr}
  @ bl slowraindrop
  @ pop {lr}

  @ mov r6, 0
  @ push {lr}
  @ bl wavesideview
  @ pop {lr}

  @ @ Stage 3
  @ @ Show slow rain drop at side view
  @ @ Show wave at top view
  @ mov r6, 0
  @ push {lr}
  @ bl slowraindrop
  @ pop {lr}

  @ mov r6, 0
  @ push {lr}
  @ bl wave_33_topview
  @ pop {lr}

  @ push {lr}
  @ bl time_delay_200ms
  @ pop {lr}

  @ mov r6, 0
  @ push {lr}
  @ bl wave_22_topview
  @ pop {lr}

  @ push {lr}
  @ bl time_delay_200ms
  @ pop {lr}

  @ mov r6, 0
  @ push {lr}
  @ bl wave_44_topview
  @ pop {lr}

  @ push {lr}
  @ bl time_delay_200ms
  @ pop {lr}

  mov r6, 0
  push {lr}
  bl wave_11_topview
  pop {lr}

  push {lr}
  bl time_delay_200ms
  pop {lr}

  @ mov r6, 0
  @ push {lr}
  @ bl wave_55_topview
  @ pop {lr}

  @ push {lr}
  @ bl time_delay_200ms
  @ pop {lr}

  b main

loop:
  b loop
