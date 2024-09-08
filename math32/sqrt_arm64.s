#include "textflag.h"

// func Sqrt(x float32) float32
TEXT ·Sqrt(SB), NOSPLIT, $0-4
    // Load argument (float32 x) from stack (SP+0)
    LDR S0, [SP, #0]

    // Perform the square root operation
    FSQRT S0, S0

    // Store the result (float32) back on the stack (SP+0)
    STR S0, [SP, #0]

    // Return (result is in S0)
    RET
