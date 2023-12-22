package main

import (
	"fmt"
)

func difference(A1 [10]int, A2 [10]int) []int {
	var diff []int
	for _, v1 := range A1 {
		found := false
		for _, v2 := range A2 {
			if v1 == v2 {
				found = true
				break
			}
		}
		if !found {
			diff = append(diff, v1)
		}
	}

	return diff
}
func main() {
	ArrayA := [10]int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9}
	ArrayB := [10]int{0, 1, 2, 3, 4, 6, 7, 8, 9}
	ArrayC := [10]int{0, 1, 2, 3, 4, 5, 6, 8, 9}

	fmt.Printf("Resposta para o Primeiro ARRAY: %+v\n", difference(ArrayA, ArrayB))
	fmt.Printf("Resposta para o Primeiro ARRAY: %+v\n", difference(ArrayA, ArrayC))
}
