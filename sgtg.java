public class sgtg {
    public static void main(String[] args) {
        int i, j, k;
        for (i =5; i>0; i--) {
            for (j =i-1;j>0; j--){
                System.out.print(" ");
            }
			for (k=5-(i-1); k>0; k--) {
				System.out.print("*");
			}
				System.out.println();
		}
				for(i=0; i<5; i++){
					for(j=0; j<i+1; j++){
						System.out.print(" ");
					}
					for(k=0; k<5-(i+1); k++){
						System.out.print("*");
					}
				    System.out.println();
                }
            }
        }


