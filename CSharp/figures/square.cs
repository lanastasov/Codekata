using System;
					
public class Program
{
	public static void Main()
	{
		
		var n = int.Parse(Console.ReadLine());
		
		
		for (int i=0; i<n; i++) {
			Console.Write("*");
		}
		Console.WriteLine("");
		for (int i=0; i<n-2; i++) {
			Console.Write("*");
			for (int j=0; j<n-2; j++) {
				Console.Write(" ");
			}
			Console.WriteLine("*");
		}
		for (int i=0; i<n; i++) {
			Console.Write("*");
		}
	}
}