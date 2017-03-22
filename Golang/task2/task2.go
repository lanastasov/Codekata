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

// Solution 2
/*
package main
import "fmt"

func min(n int) string {
	if n == 2 {
		return "min(int, int)"
	}
	return "min(int, " + min(n-1) + ")"
}

func main() {
	var n int
	fmt.Scan(&n)

	fmt.Println(min(n))
}
*/

// Solution 3
/*
package main
import "fmt"

func construct(n int) string {
    var res = ""
    
    for i := 0; i < n - 1; i++ {
        res += "min(int, "
    }
    res += "int"
    for i := 0; i < n - 1; i++ {
        res += ")"
    }
    return res
}

func main() {
    var n int
    fmt.Scanf("%d", &n)
    
    if (n>2) {
        fmt.Println(construct(n))
    } else {
        fmt.Println("min(int, int)")
    }
    
}
*/


// JAVA Solution
/* 
public class Solution {

    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        String ip = "min(int, int)";
        String left = "min(int, ";
        String right = ")";
        
        for(int i=2; i<n; i++) {
            ip = left + ip + right;    
        }
        
        System.out.println(ip);
    }
}
*/
