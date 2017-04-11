import java.io.*;
import java.util.*;

public class Solution {
    
    public static void main(String[] args) {
        /* Enter your code here. Read input from STDIN. Print output to STDOUT. Your class should be named Solution. */
        Scanner in = new Scanner(System.in);
        String ss = "";
        int cnt = 0;
        ss = in.nextLine().toLowerCase();
 
        char[] chr = ss.toCharArray();
        char[] abc = {'a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'};

        for(int i=0; i<abc.length; i++) {
            for(int j=0; j<chr.length; j++) {
                if (chr[j] == abc[i]) {
                    cnt+=1;
                    break;
                }
            }
        }
        if (cnt == 26) {
            System.out.println("pangram");
        } else {
            System.out.println("not pangram");
        }
    }
}
