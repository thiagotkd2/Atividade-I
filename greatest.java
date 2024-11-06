public class Main {
	public static void main(String[] args) {
		int[] arr = {0, 20, 1, 0, 16, 1, 10};
		int max = arr[0];
		for(int i = 1; i<arr.length; i++) {
			if(max<arr[i]) {
				max=arr[i];
			}
		}
		System.out.println(max);
	}
}
