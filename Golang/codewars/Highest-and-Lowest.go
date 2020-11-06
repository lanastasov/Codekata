//highAndLow("1 2 3 4 5");  // return "5 1"
//highAndLow("1 2 -3 4 5"); // return "5 -3"
//highAndLow("1 9 3 4 -5"); // return "9 -5"

package kata

import (
  "strings"
  "strconv"
)
func HighAndLow(in string) string {
  max := -2147483648
  min := 2147483647
  for _, i := range strings.Split(in, " ") {
    j, _ := strconv.Atoi(i)
    if j > max {
       max = j
    }
    if j < min {
      min = j
    }
  }
  return  strconv.Itoa(max) + " " + strconv.Itoa(min)
}
