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
