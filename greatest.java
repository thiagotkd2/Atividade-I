import java.util.Arrays;
import java.util.Random;
public class ordenacao {
	public static void main(String[] args) {
		// array declaration
		int[] arr = new int[5];

		// random class
		Random rdm = new Random();

		// populating the array
		for(int i = 0; i<arr.length; i++) {
			arr[i] = rdm.nextInt(50);
		}

		// print the array
		System.out.println(Arrays.toString(arr));

		// find the max value
		int max = arr[0];
		for(int i = 1; i<4; i++) {
			if(max<arr[i]) {
				max=arr[i];
			}
		}

		// Arrays.sort(arr); -> alternative way is sorting
		// then print the last element.

		// then print it
		System.out.println(max);


	}
}
