/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kompre;

/***************
Jawaban Kompre Nomor 3 Ganjil.java
Nama    : Selvy Sekar A
NIM     : 0101515025
***************/
public class compre_nmr3ganjil {
    public static void main(String[] args) {
        int i, j, k, l;
        for (i = 1; i <= 4; i++) {
            for (j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
            
            if (i == 4) {
                for (k = 1; k <= 4; k++) {
                    for (l = 3; l >=k; l--) {
                        System.out.print("*");
                    }
                    System.out.println();
                }
            }
        }
    }
}


