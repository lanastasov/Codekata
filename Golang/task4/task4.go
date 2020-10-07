package main

import (
	"fmt"
	"os"
)

func main() {

	dir, _ := os.Open(".")
	defer dir.Close()

	fileInfo, _ := dir.Readdir(-1)

	for _, file := range fileInfo {
		fmt.Println(file.Name())
	}
}
