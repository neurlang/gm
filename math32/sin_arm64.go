package math32

import "math"

func Sin(num float32) float32 {
	return float32(math.Sin(float64(num)))
}
