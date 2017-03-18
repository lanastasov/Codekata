package main

import "fmt"

func main() {
	var n int
	var ip = "min(int, int)"
	var left = "min(int, "
	var right = ")"
	fmt.Scanf("%d\n", &n)

	for i := 2; i < n; i++ {
		ip = left + ip + right
	}

	fmt.Println(ip)
}
