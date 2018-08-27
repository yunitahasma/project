public class UjiThread {
public static void main (String [] args) {
Mobil m1 = new Mobil("Merah");
Mobil m2 = new Mobil("Hijau");
m1.start();
m2.start();
}
}
class Mobil extends Thread {
// konstruktor
public Mobil (String id) {
super (id);
}
// Mendefinisikan sendiri run()
public void run() {
String nama = getName();
for (int i=0; i<5; i++) {
try {
sleep(1000); // Tunggu 1 detik
}
catch(InterruptedException ie) {
System.out.println("Terinterupsi");
}
System.out.println(" Lampu " + nama + ": Posisi " + i );
}
}
}

