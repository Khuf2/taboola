/* 
    The Taboola take-home assessment following phone call with Steve Jambor
    Question 2 (Java):
        Return true if given string contains a digit
*/

public class findDigits {

    public static void main(String[] args) {
        String input = "SKDLJALKSDJ6";
        boolean result = hasDigits(input);
        System.out.println("Contains digits? :: " + result);
    }

    // ASCII values for digits 0-9 is [48, 57]
    public static boolean hasDigits(String input) {
        for(int i = 0; i < input.length(); i++) {
            if((int) input.charAt(i) >= 48 && (int) input.charAt(i) <= 57) {
                return true;
            }
        }
        return false;
    }
}