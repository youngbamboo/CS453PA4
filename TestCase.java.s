    .file  "main.java"
__SREG__ = 0x3f
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__tmp_reg__ = 0
__zero_reg__ = 1
    .global __do_copy_data
    .global __do_clear_bss
    .text
.global main
    .type   main, @function
main:
    push r29
    push r28
    in r28,__SP_L__
    in r29,__SP_H__
/* prologue: function */
    call _Z18MeggyJrSimpleSetupv 
    /* Need to call this so that the meggy library gets set up */
# Load constant int 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push    r25
push    r24

# less than expression
# int<byte
# load two one byte expression off stack
pop    r18
pop    r19
# load a one byte expression off stack
pop    r24
ldi    r25,hi8(0)
cp    r24, r18
cpc    r25, r19
brlt MJ_L1
# load false
MJ_L0:
ldi     r24, 0
jmp      MJ_L2
# load true
MJ_L1:
ldi    r24, 1
# push result of less than
MJ_L2:
# push one byte expression onto stack
push   r24

#If statement
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L3
brne   MJ_L5
jmp    MJ_L3
MJ_L5:

# Load constant int 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.GREEN
ldi    r22,4
# push one byte expression onto stack
push   r22

#MEGGY Setpixel
# load a one byte expression off stack
pop    r20
# load a one byte expression off stack
pop    r22
# load a one byte expression off stack
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

jmp    MJ_L6

#No Else statement
MJ_L3:
MJ_L6:

# Load constant int 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push    r25
push    r24

# Load constant int 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# less than expression
# byte<int
# load two one byte expression off stack
pop    r18
ldi    r19,hi8(0)
# load a one byte expression off stack
pop    r24
pop    r25
cp    r24, r18
cpc    r25, r19
brlt MJ_L8
# load false
MJ_L7:
ldi     r24, 0
jmp      MJ_L9
# load true
MJ_L8:
ldi    r24, 1
# push result of less than
MJ_L9:
# push one byte expression onto stack
push   r24

#If statement
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L10
brne   MJ_L12
jmp    MJ_L10
MJ_L12:

# Load constant int 2
ldi    r24,lo8(2)
ldi    r25,hi8(2)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 3
ldi    r24,lo8(3)
ldi    r25,hi8(3)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.GREEN
ldi    r22,4
# push one byte expression onto stack
push   r22

#MEGGY Setpixel
# load a one byte expression off stack
pop    r20
# load a one byte expression off stack
pop    r22
# load a one byte expression off stack
pop    r24
call   _Z6DrawPxhhh
call   _Z12DisplaySlatev

jmp    MJ_L13

#No Else statement
MJ_L10:
MJ_L13:



/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main

