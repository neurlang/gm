#include "textflag.h"

// func Sqrt(x float32) float32
TEXT ·Sqrt(SB), NOSPLIT, $8
    // Load argument (float32 x) from stack into S0
    WORD $0xF800C000   // LDR S0, [FP, 8] (Load float32 from stack to S0)

    // Perform the square root operation using the raw FSQRT instruction
    WORD $0x1E61C000   // FSQRT S0, S0 (Compute the square root of S0)

    // Store the result (float32) back on the stack
    WORD $0xF800C000   // STR S0, [FP, 8] (Store float32 from S0 back to stack)

    // Return
    RET
