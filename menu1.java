import java.util.Scanner;
public class menu1{
menu1(){
	Scanner input  = new Scanner(System.in);
	int pil,p;
	do{
		System.out.println();
		System.out.println("======MENU=======");
		System.out.println("  1. Kalkulator  ");
		System.out.println("  2. Persegi     ");
		System.out.println("  3. Fibonacci   ");
		System.out.println("  4. Faktorial   ");
		System.out.println("  5. Exit        ");
		System.out.println("=================");
		System.out.println("Masukkan pilihan anda : ");
		pil = input.nextInt();
		
		switch(pil){
			case 1 :
				System.out.println();
				System.out.print("masukkan nilai pertama : ");
				double x = input.nextDouble();
				System.out.print("masukkan nilai kedua : ");
				double y = input.nextDouble();
				System.out.println();
				kalkulator(x,y);
				break;
				
			case 2:
				System.out.println();
				System.out.print("masukkan banyak baris : ");
				int n = input.nextInt();
				System.out.println();
				persegi(n);
				break;
			
			case 3:
				System.out.println();
				System.out.print("masukkan bilangan fibonacci : ");
				p = input.nextInt();
				System.out.println();
				fibonacci(p);
				break;
			
			case 4 :
				System.out.println();
				System.out.print("masukkan bilangan faktorial : ");
				p = input.nextInt();
				System.out.println();
				System.out.print(p+"! = ");
				System.out.println(faktorial(p));
				break;
				default:
				System.exit(0);
				}
			} while (pil!=5);
		}
		
		void kalkulator(double x, double y){
			double hasiljum = x+y;
			double hasilkur = x-y;
			double hasilkali = x*y;
			double hasilbagi = x/y;
			System.out.println("Hasil penjumlahan : "+hasiljum);
			System.out.println("Hasil pengurangan : "+hasilkur);
			System.out.println("Hasil perkalian : "+hasilkali);
			System.out.println("Hasil pembagian : "+hasilbagi);
		}
		
		void persegi(int a){
			for(int i=0; i<a; i++){
				for(int j=0; j<a; j++){
					System.out.print(" *");
				}
					System.out.println();
				}
		}
		int faktorial(int p){
			if(p==0){
				return 1;
			} else{
				if(p==1)
					System.out.print(p+" = ");
				else
					System.out.print(p+" * ");
				return p*faktorial(p-1);
			}
		}
		
		void fibonacci(int p){
			int a=0, b=1, c, j=0;
			for(int i=0; i<p; i++){
			if(i < p-1)
				System.out.print(a+" + ");
			else
				System.out.print(a);
				c =  a+b;
				a = b;
				b = a;
				j = j+b;
			}
			System.out.print(" = " + j);
		}
	public static void main(String[] args){
	new menu1();
	}
}
				
		