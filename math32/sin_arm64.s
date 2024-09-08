// func Sin(x float32) float32
TEXT ·Sin(SB), NOSPLIT, $0-4
    FMOVS S0, S0        // Load the input float x into S0
    FSIN S0, S0         // Perform sin operation
    RET                 // Return the result in S0
