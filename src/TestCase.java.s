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
# Button expression Meggy.Button.Up
ldi	r22,4
push	r22

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24, Button_Up
# if button value is zero, push 0 else push 1
tst    r24
breq   MJ_L0
MJ_L1:
ldi    r24, 1
jmp    MJ_L2
MJ_L0:
MJ_L2:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0

# Button expression Meggy.Button.Right
ldi	r22,32
push	r22

### MeggyCheckButton
call    _Z16CheckButtonsDownv
lds    r24, Button_Right
# if button value is zero, push 0 else push 1
tst    r24
breq   MJ_L5
MJ_L6:
ldi    r24, 1
jmp    MJ_L7
MJ_L5:
MJ_L7:
# push one byte expression onto stack
push   r24
# load condition and branch if false
# load a one byte expression off stack
pop    r24
#load zero into reg
ldi    r25, 0

# Comare equal
cp r24,r25
breq MJ_L10
MJ_L11:
ldi     r24, 0
jmp      MJ_L12
MJ_L10:
ldi     r24, 1
MJ_L12:
push r24

# # load a two byte expression off stack
pop    r18
pop    r19
# load a two byte expression off stack
pop    r24
pop    r25
# Do INT sub operation
add    r24, r18
adc    r25, r19
# push hi order byte first
# push two byte expression onto stack
push   r25
push   r24

#If statement
#use cp to set SREG
cp     r24, r25
#WANT breq MJ_L13
brne   MJ_L14
jmp    MJ_L13
MJ_L14:

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

jmp    MJ_L15

#No Else statement
MJ_L13:
MJ_L15:



/* epilogue start */
    endLabel:
    jmp endLabel
    ret
    .size   main, .-main

