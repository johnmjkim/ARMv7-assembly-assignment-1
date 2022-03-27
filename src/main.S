.syntax unified
.global main

.type main, %function
main:
  @ Set r7 : row, r8 : col
  @ ROW1-5, COL1-5 input number from 0, 4, 8, 12, 16
  b light_onoff

light_onoff:
  mov r7, 0
  mov r8, 8
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 4
  mov r8, 4
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 4
  mov r8, 8
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL
  
  mov r7, 4
  mov r8, 12
  bl set_dirROW
  bl set_dirCOL4
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL4

  mov r7, 8
  mov r8, 0
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 8
  mov r8, 4
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 8
  mov r8, 8
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 8
  mov r8, 12
  bl set_dirROW
  bl set_dirCOL4
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL4

  mov r7, 8
  mov r8, 16
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 12
  mov r8, 4
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 12
  mov r8, 12
  bl set_dirROW
  bl set_dirCOL4
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL4

  mov r7, 16
  mov r8, 4
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 16
  mov r8, 8
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL

  mov r7, 16
  mov r8, 12
  bl set_dirROW
  bl set_dirCOL4
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL4

  b light_onoff

.data
base_address:
  @ Base address of P0, P1
  .word 0x50000000, 0x50000300

.data
offset:
  @ Offest of OUT, DIR
  .word 0x504, 0x514

.data
led_row:
  @ LED pin row number 1~5
  @ ROW1, ROW2, ROW3, ROW4, ROW5
  .word 21, 22, 15, 24, 19

.data
led_col:
  @ LED pin col number 1~5
  @ COL1, COL2, COL3, COL4, COL5
  @ COL4 uses base address of P1
  .word 28, 11, 31, 5, 30

.type led_onoff, %function
@ args:
@ r7: ROW
@ r8: COL
led_onoff:
  bl set_dirROW
  bl set_dirCOL
  bl on_row
  bl off_row
  bl clear_dirROW
  bl clear_dirCOL4
  bx lr
.size led_onoff, .-led_onoff

.type set_dirROW, %function
set_dirROW:
  @ Set base address of P0, 0x50000000
  ldr r0, =base_address
  ldr r1, [r0]
  @ Set offset as DIR, 0x514
  ldr r0, =offset
  ldr r2, [r0, 4]
  @ Set led row ROW
  ldr r0, =led_row
  ldr r3, [r0, r7]
  str lr, [sp]
  bl set_bit
  ldr lr, [sp]
  bx lr
.size set_dirROW, .-set_dirROW

.type set_dirCOL, %function
set_dirCOL:
  @ Set base address of P0, 0x50000000
  ldr r0, =base_address
  ldr r1, [r0]
  @ Set offset as DIR, 0x514
  ldr r0, =offset
  ldr r2, [r0, 4]
  @ Set led col COL
  ldr r0, =led_col
  ldr r3, [r0, r8]
  str lr, [sp]
  bl set_bit
  ldr lr, [sp]
  bx lr
.size set_dirCOL, .-set_dirCOL

.type set_dirCOL4, %function
set_dirCOL4:
  @ Set base address of P0, 0x50000300
  ldr r0, =base_address
  ldr r1, [r0, 4]
  @ Set offset as DIR, 0x514
  ldr r0, =offset
  ldr r2, [r0, 4]

  @ Set led col COL
  ldr r0, =led_col
  ldr r3, [r0, r8]
  str lr, [sp]
  bl set_bit
  ldr lr, [sp]
  bx lr
.size set_dirCOL4, .-set_dirCOL4

.type clear_dirROW, %function
clear_dirROW:
  @ Set base address of P0, 0x50000000
  ldr r0, =base_address
  ldr r1, [r0]
  @ Set offset as DIR, 0x514
  ldr r0, =offset
  ldr r2, [r0, 4]
  @ Set led row ROW
  ldr r0, =led_row
  ldr r3, [r0, r7]
  str lr, [sp]
  bl clear_bit
  ldr lr, [sp]
  bx lr
.size clear_dirROW, .-clear_dirROW

.type clear_dirCOL, %function
clear_dirCOL:
  @ Set base address of P0, 0x50000000
  ldr r0, =base_address
  ldr r1, [r0]
  @ Set offset as DIR, 0x514
  ldr r0, =offset
  ldr r2, [r0, 4]
  @ Set led col COL
  ldr r0, =led_col
  ldr r3, [r0, r8]
  str lr, [sp]
  bl clear_bit
  ldr lr, [sp]
  bx lr
.size clear_dirCOL, .-clear_dirCOL

.type clear_dirCOL4, %function
clear_dirCOL4:
  @ Set base address of P0, 0x50000300
  ldr r0, =base_address
  ldr r1, [r0, 4]
  @ Set offset as DIR, 0x514
  ldr r0, =offset
  ldr r2, [r0, 4]
  @ Set led col COL
  ldr r0, =led_col
  ldr r3, [r0, r8]
  str lr, [sp]
  bl clear_bit
  ldr lr, [sp]
  bx lr
.size clear_dirCOL4, .-clear_dirCOL4

.type on_row, %function
on_row:
  @ Set base address of P0, 0x50000000
  ldr r0, =base_address
  ldr r1, [r0]
  @ Offet of OUT, 0x504
  ldr r0, =offset
  ldr r2, [r0]
  @ Set led row ROW
  ldr r0, =led_row
  ldr r3, [r0, r7]
  @ Set led bit to OUTPUT
  str lr, [sp]
  bl set_bit
  ldr lr, [sp]
  bx lr
.size on_row, .-on_row

.type off_row, %function
off_row:
  @ Set base address of P0, 0x50000000
  ldr r0, =base_address
  ldr r1, [r0]
  @ Offet of OUT, 0x504
  ldr r0, =offset
  ldr r2, [r0]
  @ Set led row ROW
  ldr r0, =led_row
  ldr r3, [r0, r7]
  @ Set led bit to OUTPUT
  str lr, [sp]
  bl clear_bit
  ldr lr, [sp]
  bx lr
.size off_row, .-off_row

.type set_bit, %function
@ args:
@ r1: base address
@ r2: offset
@ r3: bit index
@ result: r1
set_bit:
  nop
  @ load r4 to get value of pin by using r2
  ldr r4, [r1, r2]

  @ set bit of r4 at the bit index of r3
  @ by doing a logical or with 0b1 left-shifted by bit index r3
  mov r5, 0b1
  lsl r5, r5, r3
  orr r4, r4, r5

  @ store the modified result back into pin by using r2
  str r4, [r1, r2]
  bx lr
.size set_bit, .-set_bit

.type clear_bit, %function
@ args:
@ r1: base address
@ r2: offset
@ r3: bit index
@ result: r1
clear_bit:
  nop
  @ load r4 to get value of pin by using r2
  ldr r4, [r1, r2]

  @ set bit of r4 at the bit index of r3
  @ by doing a bic with 0b1 left-shifted by bit index r3
  mov r5, 0b1
  lsl r5, r5, r3
  bic r4, r4, r5

  @ store the modified result back into pin by using r2
  str r4, [r1, r2]
  bx lr
.size clear_bit, .-clear_bit

.type time_delay, %function
@ args:
@ r0: amount of time
time_delay:
  nop
  subs r0, r0, 1

  bpl time_delay
  bx lr