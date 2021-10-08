import java.nio.charset.*;
import java.util.*;

class AlphaNumericStringGenerator {
    public static void main(String[] args) {
        int i = 8;
        System.out.println("A senha aleatória é: " + getRandomString(i));
    }

    static String getRandomString(int i) {
        byte[] bytearray;
        String mystring;
        StringBuffer thebuffer;

        bytearray = new byte[256];
        new Random().nextBytes(bytearray);

        mystring = new String(bytearray, Charset.forName("UTF-8"));

        // Create the StringBuffer
        thebuffer = new StringBuffer();

        for (int m = 0; m < mystring.length(); m++) {

            char n = mystring.charAt(m);

            if (((n >= 'A' && n <= 'Z') || (n >= '0' && n <= '9')) && (i > 0)) {

                thebuffer.append(n);
                i--;
            }
        }
        return thebuffer.toString();
    }
}
