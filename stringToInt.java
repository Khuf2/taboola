/* 
    The Taboola take-home assessment following phone call with Steve Jambor
    Question 1 (Java):
        Parse string of digits into an integer w/o parse function
*/

import java.util.*;
import java.lang.Math;

public class stringToInt {

    public static Hashtable<Character, Integer> numMap;

    public static void main(String[] args) {
        numMap = new Hashtable<>();
        numMap.put('1', 1);
        numMap.put('2', 2);
        numMap.put('3', 3);
        numMap.put('4', 4);
        numMap.put('5', 5);
        numMap.put('6', 6);
        numMap.put('7', 7);
        numMap.put('8', 8);
        numMap.put('9', 9);

        String input = "12345";
        int result = intParse(input);
        System.out.println("Converted :: " + result);
    }

    public static int intParse(String input) {
        int result = 0;
        for(int i = input.length()-1; i >= 0; i--) {
            System.out.println(numMap.get(input.charAt(i)) + " * " + (input.length()-i));
            result += numMap.get(input.charAt(i)) * Math.pow(10, input.length()-i-1);
        }
        return result;
    }
}