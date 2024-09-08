package math32

import "math"

func Tan(num float32) float32 {
	return float32(math.Tan(float64(num)))
}
