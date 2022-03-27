.syntax unified
.global main

.type main, %function
main:
  nop
  @ mov r4, 1
  @ mov r5, 1
  str lr, [sp]
  bl led_setdir_r1
  bl led_setdir_c1
  bl led_on_r1
  bl time_delay_200ms
  bl led_off_r1
  bl led_cleardir_r1
  bl led_cleardir_c1
  bl time_delay_200ms
  ldr lr, [sp]
  b main

@ .type led_blink, %function
@ @ args:
@ @ r4 : row
@ @ r5 : col
@ led_blink:
@   nop
@   str lr, [sp]
@   bl cmp_row
@   ldr lr, [sp]
@   bx lr
@ .size led_blink, . -led_blink

@ .type cmp_row, %function
@ cmp_row:
@   cmps r4, #1
@   beq set_r1
@   cmps r4, #2
@   beq set_r2
@   cmps r4, #3
@   beq set_r3
@   cmps r4, #4
@   beq set_r4
@   cmps r4, #5
@   beq set_r5
@   bx lr
@ .size cmp_row, . -cmp_row

@ .type cmp_col, %function
@ cmp_col:
@   cmps r5, #1
@   beq set_c1
@   cmps r5, #2
@   beq set_c2
@   cmps r5, #3
@   beq set_c3
@   cmps r5, #4
@   beq set_c4
@   cmps r5, #5
@   beq set_c5
@   bx lr
@ .size cmp_col, . -cmp_col

@ bl led_setbit_r1
