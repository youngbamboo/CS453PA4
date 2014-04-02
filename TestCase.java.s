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
# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.ORANGE
ldi    r22,2
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

# True/1 expression
    ldi    r24, 1
# push one byte expression onto stack
push   r24

#While ()
MJ_L0:
# True/1 expression
ldi    r22, 1
# push one byte expression onto stack
push   r22
# if not(condition)
# load a one byte expression off stack
pop    r24
ldi    r25,0
cp     r24, r25
# WANT breq MJ_L2
brne   MJ_L1
jmp    MJ_L2
# while loop body
MJ_L1:

# Button expression Meggy.Button.A
ldi	r22,2
push	r22

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24, Button_A
# if button value is zero, push 0 else push 1
tst    r24
breq   MJ_L3
MJ_L4:
ldi    r24, 1
jmp    MJ_L5
MJ_L3:
MJ_L5:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0

#If statement
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L8
brne   MJ_L10
jmp    MJ_L8
MJ_L10:

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.VIOLET
ldi    r22,6
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

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.DARK
ldi    r22,0
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

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.DARK
ldi    r22,0
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

jmp    MJ_L11

#Else statement
MJ_L8:

# Button expression Meggy.Button.B
ldi	r22,1
push	r22

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24, Button_B
# if button value is zero, push 0 else push 1
tst    r24
breq   MJ_L12
MJ_L13:
ldi    r24, 1
jmp    MJ_L14
MJ_L12:
MJ_L14:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0

#If statement
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L17
brne   MJ_L19
jmp    MJ_L17
MJ_L19:

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
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

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.DARK
ldi    r22,0
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

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.DARK
ldi    r22,0
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

jmp    MJ_L20

#Else statement
MJ_L17:

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.ORANGE
ldi    r22,2
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

# Load constant int 7
ldi    r24,lo8(7)
ldi    r25,hi8(7)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.DARK
ldi    r22,0
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

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Load constant int 0
ldi    r24,lo8(0)
ldi    r25,hi8(0)
push    r25
push    r24

# Casting int to byte by popping
# 2 bytes off stack and only pushing low order bits
# back on.  Low order bits are on top of stack.
pop    r24
pop    r25
push    r24

# Color expression Meggy.Color.DARK
ldi    r22,0
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

#Else statement
MJ_L20:

#Else statement
MJ_L11:

# Load constant int 100
ldi    r24,lo8(100)
ldi    r25,hi8(100)
push    r25
push    r24

call   _Z8delay_msj

#Jump to while
jmp    MJ_L0

# end of while
MJ_L20:



/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main

