#include "textflag.h"

// func Sin(x float32) float32
TEXT ·Sin(SB), NOSPLIT, $0-8
    // Load the float32 argument into register S0
    FMOVS S0, S0
    // Call the Go math function for sine
    MOVD  S0, R0
    BL    ·math.Sin(SB)
    FMOVS S0, S0
    RET
