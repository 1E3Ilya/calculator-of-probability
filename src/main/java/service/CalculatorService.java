package service;


import java.math.BigInteger;

public class CalculatorService {

    public static BigInteger factorial(int n) {
        BigInteger result = BigInteger.ONE;
        for (int i = 2; i <= n; i++) {
            result = result.multiply(BigInteger.valueOf(i));
        }
        return result;
    }

    public static BigInteger arrangementsWithoutRepeat(int n, int k) {
        if (n < k) {
            throw new IllegalArgumentException("n должно быть не меньше k");
        }
        return factorial(n).divide(factorial(n - k));
    }

    public static long arrangementsWithRepetition(int n, int k) {
        return (long) Math.pow(n, k);
    }

    public static BigInteger permutationsWithoutRepetition(int n) {
        return factorial(n);
    }

    public static BigInteger permutationsWithRepetition(int count, int arr[]) {
        BigInteger denominator = BigInteger.ONE;
        int sum = 0;
        for (int n : arr) {
            sum += n;
            denominator = factorial(n).multiply(denominator);
        }
        return factorial(sum).divide(denominator);
    }

    public static BigInteger combinationsWithoutRepetition(int n, int k) {
        if (n < k) {
            throw new IllegalArgumentException("n должно быть не меньше k");
        }
        return factorial(n).divide(factorial(k).multiply(factorial(n - k)));
    }

    public static BigInteger combinationsWithRepetition(int n, int k) {
        return combinationsWithoutRepetition(n + k - 1, k);
    }

    public static String urnModelAllTagged(int n, int k, int m) {
        return reduce(combinationsWithoutRepetition(m, k), combinationsWithoutRepetition(n, k));
    }

    public static String urnModelSomeTagged(int n, int k, int m, int r) {
        return reduce(combinationsWithoutRepetition(m, r).multiply(combinationsWithoutRepetition(n - m, k - r)), combinationsWithoutRepetition(n, k));
    }
    public static String reduce(BigInteger x, BigInteger y) {
        BigInteger gcd = x.gcd(y);
        x = x.divide(gcd);
        y = y.divide(gcd);

        return x.toString() + "/" + y.toString();
    }
}
