#include "textflag.h"

// func Sqrt(x float32) float32
TEXT ·Sqrt(SB), NOSPLIT, $8
    // Load argument (float32 x) from stack into S0
    LDR S0, [FP, 8]   // Load the float32 argument from the stack frame into S0

    // Perform the square root operation using the raw FSQRT instruction
    WORD $0x1E61C000      // Compute the square root of S0

    // Store the result (float32) back on the stack
    STR S0, [FP, 8]   // Store the result from S0 back to the stack frame

    // Return
    RET
