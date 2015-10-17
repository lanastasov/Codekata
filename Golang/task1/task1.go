package main

import (
	"fmt"
	"github.com/xlab/handysort"
	"path/filepath"
	"sort"
	// "strings"
)

// Natural Sort of Strings

func main() {

	// uncorrect sort
	files, _ := filepath.Glob("*.txt")
	sort.Strings(files)
	for i := range files {
		fmt.Println(" <-", files[i])
	}
	fmt.Println("\n")

	str := []string{
		"1. file1.txt",
		"10. file10.txt",
		"11. file11.txt",
		"12. file12.txt",
		"13. file13.txt",
		"2. file2.txt",
		"3. file3.txt",
		"4. file4.txt",
		"5. file5.txt",
		"6. file6.txt",
		"7. file7.txt",
		"8. file8.txt",
		"9. file9.txt",
	}

	// correct natural sort
	sort.Sort(handysort.Strings(str))
	for g := range str {
		fmt.Println(" ->", str[g])
	}
}
