package main

import "fmt"
import "strconv"

func main() {
	var n int
	fmt.Scan(&n)
	str := ""
	for i := n; i > 0; i-- {
		str += "#"
		fmt.Printf("%"+strconv.Itoa(n)+"s\n", str)

	}
}
