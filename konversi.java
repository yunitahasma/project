import java.io.*;
import java.util.Scanner;

public class konversi{
	 int suhuCelcius, hslKnvrsiKelvin;
	 int keKelvin = 273;
	 double keFahrenheit = 1.8;
	 double keReamur = 0.8; 
	 double hslKnvrsiFahrenheit, hslKnvrsiReamur;
	
	konversi(int sC){
		this.suhuCelcius = sC;
	}
		konversi(){
	}		
		private String CetakJudul(){
			String judul_program = "PROGRAM KONVERSI SUHU CELCIUS MENGGUNAKAN JAVA";
			System.out.println("\n\t" + judul_program);
			System.out.println("\t------------------------------------------------");	
			return judul_program;
		}
		private int HitCelciusKelvin(){
			hslKnvrsiKelvin = suhuCelcius + keKelvin;
			return hslKnvrsiKelvin;
		}
		private double HitCelciusFahrenheit(){
			hslKnvrsiFahrenheit = (suhuCelcius * keFahrenheit) + 32;
			return hslKnvrsiFahrenheit; 
		}
		private double HitCelciusReamur(){
			hslKnvrsiReamur = (suhuCelcius * keReamur);
			return hslKnvrsiReamur;
		}
		public static void main(String[] args){
			konversi ctk = new konversi();
			ctk.CetakJudul();	
			System.out.print("\n\tMasukkan Suhu Celcius : ");
			Scanner scan = new Scanner(System.in);
			int a = scan.nextInt();
			konversi obj = new konversi(a);
			konversi obj1 = new konversi();
			System.out.println("\t\t1. Hasil Konversi Celcius ke Kelvin adalah " + obj.HitCelciusKelvin()); 
			System.out.printf("\t\t2. Hasil Konversi Celcius ke Fahrenheit adalah %.2f", obj.HitCelciusFahrenheit());
			System.out.printf("\n\t\t3. Hasil Konversi Celcius ke Reamur adalah %.2f", obj.HitCelciusReamur());
			System.out.println("\n");
			System.out.println("\tHasil Overloading Konstruktor----------------");
			System.out.println("\t\t1. Hasil Konversi Celcius ke Kelvin adalah " + obj1.HitCelciusKelvin()); 
			System.out.printf("\t\t2. Hasil Konversi Celcius ke Fahrenheit adalah %.2f", obj1.HitCelciusFahrenheit());
			System.out.printf("\n\t\t3. Hasil Konversi Celcius ke Reamur adalah %.2f", obj1.HitCelciusReamur());
			System.out.println("\n");
			}
		}
