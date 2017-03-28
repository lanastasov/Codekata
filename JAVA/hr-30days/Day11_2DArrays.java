import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;

public class Day11_2DArrays {

	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
        int arr[][] = new int[6][6];
        for(int i=0; i < 6; i++){
            for(int j=0; j < 6; j++){
                arr[i][j] = in.nextInt();
            }
        }
        int max = -10000;
        for(int l=0; l<4; l++){ 
        	for(int m=0; m<4; m++) {
            	if(max<arr[l][m]+arr[l][m+1]+arr[l][m+2]+arr[l+1][m+1]+arr[l+2][m]+arr[l+2][m+1]+arr[l+2][m+2]){
            		max = arr[l][m]+arr[l][m+1]+arr[l][m+2]+arr[l+1][m+1]+arr[l+2][m]+arr[l+2][m+1]+arr[l+2][m+2];
            	}
            }	
        }
        System.out.println(max);
	}
}
