package main

import (
	"fmt"
	"regexp"
	"strings"
)

func main() {

	lessons := []string{"lesson1.mp4", "lesson2.mp4", "lesson3.mp4",
		"lesson4.mp4", "lesson5.mp4", "lesson9.mp4",
		"lesson10.mp4", "lesson11.mp4", "lesson99.mp4",
		"lesson100.mp4"}
	for _, str := range lessons {

		re := regexp.MustCompile(`\D\d{1}\.`)
		re2 := regexp.MustCompile(`\D\d{2}\.`)

		v := re.FindString(str)
		if v != "" {
			v = strings.TrimLeft(v, string(v[0]))
			v = strings.TrimRight(v, string(v[len(v)-1]))
			fmt.Println(strings.Replace(str, v, "00"+v, 1))
		}

		v = re2.FindString(str)
		if v != "" {
			v = strings.TrimLeft(v, string(v[0]))
			v = strings.TrimRight(v, string(v[len(v)-1]))
			fmt.Println(strings.Replace(str, v, "0"+v, 1))
		}

	}

}
