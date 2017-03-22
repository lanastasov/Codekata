public class ReverseString {
	static String RevString1(String str) {
		String reverse = new StringBuilder(str).reverse().toString();
		return reverse;
	}
	
	static String RevString2(String str) {
		char[] in = str.toCharArray();
		int begin=0;
		int end=in.length-1;
		char temp;
		while(end>begin){
			temp = in[begin];
			in[begin]=in[end];
			in[end] = temp;
			end--;
			begin++;
		}
		return new String(in);
	}
	
	static String RevString3(String str) {
		char[] rev = str.toCharArray();
		String revString = "";
		for (int i = rev.length-1; i>=0; i--) 
			revString += rev[i];
		return revString;
	}
	
	public static void main(String[] args) {
		System.out.println("String after reverse: "+ RevString1("foobar1"));
		System.out.println("String after reverse: "+ RevString2("foobar2"));
		System.out.println("String after reverse: "+ RevString3("foobar3"));
	}

}
