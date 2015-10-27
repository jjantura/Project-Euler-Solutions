import java.math.BigInteger;

public class p182 {

    private static long unconcealedCount(BigInteger e, BigInteger n) {
        BigInteger i = BigInteger.valueOf(0);
        long count = 0;
        while (i.compareTo(n) < 0) {
            if ((i.pow(e.intValue()).mod(n)).compareTo(i) == 0) ++count;            
            i = i.add(BigInteger.valueOf(1));
        }
        return count;
    }
    public static void main(String[] args) {

        BigInteger p = BigInteger.valueOf(1009);
        BigInteger q = BigInteger.valueOf(3643);

        BigInteger n = p.multiply(q);
        BigInteger phi = (p.subtract(BigInteger.valueOf(1))).multiply(q.subtract(BigInteger.valueOf(1)));

        BigInteger e = BigInteger.valueOf(2);
        System.out.println("phi: " + phi);
        long sum = 0;
        while (e.compareTo(phi) < 0) {
            if (e.gcd(phi).compareTo(BigInteger.valueOf(1)) == 0) {
                BigInteger a = (e.subtract(BigInteger.valueOf(1)).gcd(p.subtract(BigInteger.valueOf(1)))).add(BigInteger.valueOf(1));
                BigInteger b = (e.subtract(BigInteger.valueOf(1)).gcd(q.subtract(BigInteger.valueOf(1)))).add(BigInteger.valueOf(1));
                if ((a.multiply(b)).compareTo(BigInteger.valueOf(9)) == 0) {
                    sum += e.longValue();
                }                 
            }                         
            e = e.add(BigInteger.valueOf(1));
        }        
        System.out.println(sum);
    }
}

