import java.io.*;
import java.util.*;

public class Day10_BinaryNumbers {

	public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int n = in.nextInt();
        int temp = 0, max = 0;
        while(n > 0){
           int remainder = n%2;
           if(remainder == 1){
                temp += 1;
           } else {
                if(max < temp) {
                    max = temp;
                }
                temp = 0;
           }
           n = n/2;
        }
        if(max < temp){
            max = temp;
        }
        System.out.println(max);
	}
}
