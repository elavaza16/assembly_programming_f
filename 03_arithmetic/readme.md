# **03_arithmetic Flag Analysis**

## add/
1. add1.asm (8-bit addition)
    [Adding 120 + 10]

    Overflow Flag - 1 
        Adding two positive numbers exceeding the range (-128 to 127) results to negartive result in two's complement
    Sign Flag - 1 
        The most significant bit of the result is 1, result is negative 
    Auxiliary Carry Flag - 1
        A carry occured between the lower nibble to upper nibble
    Parity Flag - 1
        The result contains 2 set bits (no. of 1s is even)
    Carry Flag - 0
        There is no carry out of the 7th bit
    Zero Flag - 0
        The result of the operation is not 0

2. add2.asm (16-bit addition)
    [Adding 32000 + 500]

    Overflow Flag - 0
        The result falls within range of the 16-bit signed range
    Sign Flag - 0
        The result is positive, most significant bit is 0
    Auxiliary Carry Flag - 0
        There is no carry from the lower nibble to the upper nibble
    Parity Flag - 0
        The result contains 5 set bits (no. of 1s is odd)
    Carry Flag - 0
        There is no carry out of the 7th bit
    Zero Flag - 0
        The result of the operation is not 0

3. add3.asm ()



        TO BE UNDERSTOOD



## sub/
1. sub1.asm (8-bit subtraction)
    [Subtracting 50 - 80]

    Overflow Flag - 0
        The result of the operation (-30) is within the 8-bit signed range (-127 to +128)
    Sign Flag - 1
        The most significant bit of the result is 1, the result is negative
    Auxiliary Carry Flag - 0
        There was no borrow from the upper nibble to the lower nibble
    Parity Flag - 1
        The result contains 4 set bits (no. of 1s is even)
    Carry Flag - 1
        50 is smaller than 80, a higher bit was borrowed to complete the operation
    Zero Flag - 0
        The result of the operation is not 0

2. sub2.asm (16-bit subtraction)
    [Subtracting 1000 - 2000]

    Overflow Flag - 0
        The result of the operation (-1000) is within the 16-bit signed range (-32768 to +32767)
    Sign Flag - 1
        The most significant bit of the result is 1, result is negative
    Auxiliary Carry Flag - 0
        There was no borrow form the upper nibble to the lower nibble
    Parity Flag - 1
        The result contains 2 set bits (no. of 1s is even)
    Carry Flag - 1
        1000 is smaller than 2000, a higher bit was borrowed to complete the operation
    Zero Flag - 0
        The result of the operation is  not 0

3. sub3.asm ()


        TO BE UNDERSTOOD



## mul/
For MUL and IMUL, they mainly affect Carry Flag and Overflow Flag because they indicate whether the result is too large to fit in the original operand size.
Other flags (Zero, Sign, Auxiliary Carry, and Parity flags) are left undefined because they are not meaningfully determined by the multiplication operation.

1. mul1.asm (8-bit multiplication)
    [Multiply 25 * 10]

    Carry Flag - 0
        The result (250) of the operation fits within 8 bits range
    Overflow Flag - 0
        Identical to Carry Flag

2. mul2.asm (16-bit multiplication)
    [Multiply 3000 * 200]

    Carry Flag - 1
        The result of the operation (600000) exceeds 16-bit range, upper register is used so the Carry Flag is set to indicate that the upper register contains meaningful data
    Overflow Flag - 1
        Identical to Carry Flag

3. mul3.asm (32-bit multiplication)
    [Multiply 100000 * 300000]

        Carry Flag - 1
            The result of the operation (30000000000) exceeds 16-bit range, upper register is used so the Carry Flag is set to indicate that the upper register contains meaningful data
        Overflow Flag - 1
            Identical to Carry Flag


## div/
    DIV does not affect the flags because division does not produce a meaningful carry, overflow, zero, or sign condition that the CPU needs to records in the flags.
    Therefore Carry Flag, Overflow Flag, Sign Flag, Zero Flag, Auxiliary Carry Flag, and Parity Flag are all undefined after DIV operations.
    A divide error is raised separately if the quotient is too large or the divisor is 0