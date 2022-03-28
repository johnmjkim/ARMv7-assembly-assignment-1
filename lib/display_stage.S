@ display_stage.S
@ display_stage library for the BBC micro:bit v2
@ By John Kim, 2022
@ Australian National University
.syntax unified

@ Wave top view for stage 3
@ args
@ r6 : how many times to show rain drops
@ r7 : set time limit
.global wave_44_topview
.type wave_44_topview, %function
wave_44_topview:
  mov r4, 4
  mov r5, 4
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wave_44_topviewrepeat1
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wave_44_topviewrepeat2
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wave_44_topviewrepeat3
  pop {lr}

  bx lr
.size wave_44_topview, . -wave_44_topview

.type wave_44_topviewrepeat1, % function
wave_44_topviewrepeat1:
  push {lr}
  cmp r7, r6
  IT GE
  blge wave_44_topview1
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wave_44_topviewrepeat1
  pop {lr}

  bx lr
.size wave_44_topviewrepeat1, . -wave_44_topviewrepeat1

.type wave_44_topview1, %function
wave_44_topview1:
  mov r4, 3
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_44_topview1, . -wave_44_topview1

.type wave_44_topviewrepeat2, % function
wave_44_topviewrepeat2:
  push {lr}
  cmp r7, r6
  IT GE
  blge wave_44_topview2
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wave_44_topviewrepeat2
  pop {lr}

  bx lr
.size wave_44_topviewrepeat2, . -wave_44_topviewrepeat2

.type wave_44_topview2, %function
wave_44_topview2:
  mov r4, 2
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_44_topview2, . -wave_44_topview2

.type wave_44_topviewrepeat3, % function
wave_44_topviewrepeat3:
  push {lr}
  cmp r7, r6
  IT GE
  blge wave_44_topview3
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wave_44_topviewrepeat3
  pop {lr}

  bx lr
.size wave_44_topviewrepeat3, . -wave_44_topviewrepeat3

.type wave_44_topview3, %function
wave_44_topview3:
  mov r4, 1
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 1
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 1
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 1
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_44_topview3, . -wave_44_topview3

@ Wave top view for stage 3
@ args
@ r6 : how many times to show rain drops
@ r7 : set time limit
.global wave_22_topview
.type wave_22_topview, %function
wave_22_topview:
  mov r4, 2
  mov r5, 2
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wave_22_topviewrepeat1
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wave_22_topviewrepeat2
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wave_22_topviewrepeat3
  pop {lr}

  bx lr
.size wave_22_topview, . -wave_22_topview

.type wave_22_topviewrepeat1, % function
wave_22_topviewrepeat1:
  push {lr}
  cmp r7, r6
  IT GE
  blge wave_22_topview1
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wave_22_topviewrepeat1
  pop {lr}

  bx lr
.size wave_22_topviewrepeat1, . -wave_22_topviewrepeat1

.type wave_22_topview1, %function
wave_22_topview1:
  mov r4, 1
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 1
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 1
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_22_topview1, . -wave_22_topview1

.type wave_22_topviewrepeat2, % function
wave_22_topviewrepeat2:
  push {lr}
  cmp r7, r6
  IT GE
  blge wave_22_topview2
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wave_22_topviewrepeat2
  pop {lr}

  bx lr
.size wave_22_topviewrepeat2, . -wave_22_topviewrepeat2

.type wave_22_topview2, %function
wave_22_topview2:
  mov r4, 1
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_22_topview2, . -wave_22_topview2

.type wave_22_topviewrepeat3, % function
wave_22_topviewrepeat3:
  push {lr}
  cmp r7, r6
  IT GE
  blge wave_22_topview3
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wave_22_topviewrepeat3
  pop {lr}

  bx lr
.size wave_22_topviewrepeat3, . -wave_22_topviewrepeat3

.type wave_22_topview3, %function
wave_22_topview3:
  mov r4, 1
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_22_topview3, . -wave_22_topview3

@ Wave top view for stage 3
@ args
@ r6 : how many times to show rain drops
@ r7 : set time limit
.global wave_33_topview
.type wave_33_topview, %function
wave_33_topview:
  mov r4, 3
  mov r5, 3
  push {lr}
  bl blink_200ms
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wave_33_topviewrepeat1
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wave_33_topviewrepeat2
  pop {lr}

  bx lr
.size wave_33_topview, . -wave_33_topview

.type wave_33_topviewrepeat1, % function
wave_33_topviewrepeat1:
  push {lr}
  cmp r7, r6
  IT GE
  blge wave_33_topview1
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wave_33_topviewrepeat1
  pop {lr}

  bx lr
.size wave_33_topviewrepeat1, . -wave_33_topviewrepeat1

.type wave_33_topview1, %function
wave_33_topview1:
  mov r4, 2
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_33_topview1, . -wave_33_topview1

.type wave_33_topviewrepeat2, % function
wave_33_topviewrepeat2:
  push {lr}
  cmp r7, r6
  IT GE
  blge wave_33_topview2
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wave_33_topviewrepeat2
  pop {lr}

  bx lr
.size wave_33_topviewrepeat2, . -wave_33_topviewrepeat2

.type wave_33_topview2, %function
wave_33_topview2:
  mov r4, 1
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 1
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 1
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 2
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 3
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wave_33_topview2, . -wave_33_topview2

@ Wave side view for stage 2
@ args
@ r6 : how many times to show rain drops
@ r7 : set time limit
.global wavesideview
.type wavesideview, %function
wavesideview:
  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wavesideviewrepeat1
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wavesideviewrepeat2
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wavesideviewrepeat3
  pop {lr}

  ldr r7, =TIME_FIVEHUNDRED_MICRO_SEC
  push {lr}
  bl wavesideviewrepeat4
  pop {lr}

  push {lr}
  bl time_delay_500ms
  pop {lr}

  bx lr
.size wavesideview, . -wavesideview

.type wavesideviewrepeat1, % function
wavesideviewrepeat1:
  push {lr}
  cmp r7, r6
  IT GE
  blge wavesideview1
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wavesideviewrepeat1
  pop {lr}

  bx lr
.size wavesideviewrepeat1, . -wavesideviewrepeat1

.type wavesideview1, %function
wavesideview1:
  mov r4, 4
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wavesideview1, . -wavesideview1

.type wavesideviewrepeat2, % function
wavesideviewrepeat2:
  push {lr}
  cmp r7, r6
  IT GE
  blge wavesideview2
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wavesideviewrepeat2
  pop {lr}

  bx lr
.size wavesideviewrepeat2, . -wavesideviewrepeat2

.type wavesideview2, %function
wavesideview2:
  mov r4, 4
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 3
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wavesideview2, . -wavesideview2

.type wavesideviewrepeat3, % function
wavesideviewrepeat3:
  push {lr}
  cmp r7, r6
  IT GE
  blge wavesideview3
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wavesideviewrepeat3
  pop {lr}

  bx lr
.size wavesideviewrepeat3, . -wavesideviewrepeat3

.type wavesideview3, %function
wavesideview3:
  mov r4, 4
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 4
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 2
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 4
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wavesideview3, . -wavesideview3

.type wavesideviewrepeat4, % function
wavesideviewrepeat4:
  push {lr}
  cmp r7, r6
  IT GE
  blge wavesideview4
  cmp r7, r6
  IT GE
  subge r7, r7, 1
  cmp r7, r6
  IT GE
  blge wavesideviewrepeat4
  pop {lr}

  bx lr
.size wavesideviewrepeat4, . -wavesideviewrepeat4

.type wavesideview4, %function
wavesideview4:
  mov r4, 5
  mov r5, 1
  push {lr}
  bl blink
  pop {lr}

  mov r4, 5
  mov r5, 5
  push {lr}
  bl blink
  pop {lr}

  bx lr
.size wavesideview4, . -wavesideview4

@ slow raindrop for stage 2 & 3
@ args
@ r6 : how many times to show rain drops
.global slowraindrop
.type slowraindrop, %function
slowraindrop:
  mov r4, 1
  mov r5, 3
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
  blle blink_20ms
  cmp r4, #5
  IT LE
  addle r4, r4, 1
  cmp r4, #5
  IT LE
  blle raindrop_col
  pop {lr}
  
  bx lr
.size raindrop_col, . -raindrop_col