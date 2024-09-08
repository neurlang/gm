#include "textflag.h"

// func Sqrt(x float32) float32
TEXT ·Sqrt(SB), NOSPLIT, $0-4
    // Load argument (float32 x) from stack into S0
    MOVW  (SP), R0         // Move 4 bytes (float32) from stack to R0 (general-purpose register)
    FMOVS R0, S0           // Move from general-purpose register R0 to floating-point register S0

    // Perform square root operation on the float32 value in S0
    FSQRT S0, S0

    // Store the result (float32) back on the stack
    FMOVS S0, R0           // Move result back to general-purpose register R0
    MOVW  R0, (SP)         // Store the result from R0 back to the stack

    // Return
    RET
