import java.util.Scanner;
public class kalkulator{
public static void main (String [] args){
Scanner input  = new Scanner(System.in);
int a, b, tambah,kurang,kali,bagi;

System.out.println();
System.out.println("masukkan nilai pertama : ");
a = input.nextInt();
System.out.println("masukkan nilai kedua : ");
b = input.nextInt();

tambah = a+b;
kurang= a-b;
bagi=a/b;
kali=a*b;

System.out.println("Hasil dari penjumlahan = "+tambah);
System.out.println("Hasil dari pengurangan = "+kurang);
System.out.println("Hasil dari perkalian = "+kali);
System.out.println("Hasil dari pembagian = "+bagi);

	}
}



