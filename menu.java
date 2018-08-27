import java.util.Scanner;
public class menu{
	menu(){
		Scanner input = new Scanner(System.in);
		int pil,f;
		do{
			System.out.println();
			System.out.println("======Menu======");
			System.out.println("  1.Kakulator");
			System.out.println("  2.Persegi");
			System.out.println("  3.Faktorial");
			System.out.println("  4.Fibonacci");
			System.out.println("  5.Exit");
			System.out.println("================");
			System.out.print("  Pilihan : ");
			pil=input.nextInt();
			switch(pil){
				case 1:
				System.out.println();
				System.out.print("Masukkan Nilai Pertama : ");
				double a = input.nextDouble();
				System.out.print("Masukkan Nilai Kedua : ");
				double b = input.nextDouble();
				System.out.println();
				kalkulator(a,b);
				break;
				case 2:
				System.out.println();
				System.out.print("Masukkan jumlah baris : ");
				int p= input.nextInt();
				System.out.println();
				persegi(p);
				break;
				case 3:
				System.out.println();
				System.out.print("Masukkan bilangan faktorial : ");
				f=input.nextInt();
				System.out.println();
				System.out.print(f+"! = ");
				System.out.println(faktorial(f));
				break;
				case 4:
				System.out.println();
				System.out.print("Masukkan bilangan fibonacci : ");
				f=input.nextInt();
				System.out.println();
				fibonacci(f);
				break;
				default:
				System.exit(0);
			}
		} while(pil!=5);
	}
	
	void kalkulator(double a, double b){
		double hasiljum = a+b;
		double hasilkurang = a-b;
		double hasilkali = a*b;
		double hasilbagi = a/b;
		System.out.println("Hasil Penjumlahan : " + hasiljum);
		System.out.println("Hasil Pengurangan : " + hasilkurang);
		System.out.println("Hasil Perkalian : " + hasilkali);
		System.out.println("Hasil Pembagian : " + hasilbagi);
	}
	
	void persegi(int a){
		for(int i=0; i<a;i++){
			for(int j=0;j<a;j++){
				System.out.print("* ");
			}
			System.out.println();
		}
	}
	
	int faktorial(int f){
		if (f==0){
			return 1;
		} else {
			if (f==1) System.out.print(f+" = ");
			else System.out.print(f+" * ");
			return f*faktorial(f-1);
		}
	}
	
	void fibonacci(int f){
		int a = 0, b = 1, c, j = 0;
		for(int i=0;i<f;i++){
			if (i < f-1) System.out.print(a +" + ");
			else System.out.print(a);
			c = a + b;
			b = a;
			a = c;
			j = j + b;
		}
		System.out.println (" = " + j);
	}
	
	public static void main(String[] args){
		new menu();
	}
}