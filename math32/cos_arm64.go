package math32

import "math"

func Cos(num float32) float32 {
	return float32(math.Cos(float64(num)))
}
