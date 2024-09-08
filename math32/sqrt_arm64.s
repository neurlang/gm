#include "textflag.h"

// func Sqrt(x float32) float32
TEXT ·Sqrt(SB), NOSPLIT, 4-4
    // Load argument (float32 x) from stack into S0
    MOVW x+0(FP), R0
    FMOVS R0, S0  // Move from general-purpose register R0 to floating-point register S0

    // Perform the square root operation using the raw FSQRT instruction
    WORD $0x1E61C000 // FSQRT S0, S0 in ARM64 assembly

    // Store the result (float32) back on the stack
    FMOVS S0, R0   // Move result back to general-purpose register R0
    MOVW R0, ret+0(FP)  // Store the result from R0 back to the return value

    // Return
    RET

// Declare argument and return symbol offsets
GLOBL x+0(SB), 4, $0
GLOBL ret+0(SB), 4, $0
