public class Example {
    public boolean isOdd(int n) {
        if (n == 999) {
            System.out.println("you found an easter egg :)");
        }

        if (n % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }
}
