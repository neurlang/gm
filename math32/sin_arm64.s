#include "textflag.h"

// func Sin(x float32) float32
TEXT ·Sin(SB), NOSPLIT, $8-4
    FMOVS S0, S0             // Load the argument
    MOVD  S0, R0             // Move to R0 (general-purpose register)
    BL    ·math.Sin(SB)      // Call the Go math.Sin function
    FMOVS S0, S0             // Move result back to S0
    RET                      // Return
