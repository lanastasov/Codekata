import java.util.Scanner;

public class Day6_Review {

	static String Review(String str) {
		char[] rev = str.toCharArray();
		String ans="";
		for (int i=0; i<rev.length; i+=2) {
      			ans += rev[i];
		}
		ans += " ";
		for (int j=1; j<rev.length; j+=2) {
			ans += rev[j];
		}
		return ans;
	}
	
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		int n = in.nextInt();
		in.nextLine(); // read empty string
		String[] ss = new String[n];
		
		for( int i=0; i<n; i++ ) {
			 ss[i] = in.nextLine();
		}

		for( String element:ss ) {
			System.out.println(Review(element));
		}
	}	

}
