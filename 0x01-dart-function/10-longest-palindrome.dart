// Write a function longestPalindrome() that accepts one argument String and returns the longest palindrome substring.
import '9-palindrome.dart';
String longestPalindrome(String s) {
  String longest = '';

  for (int start = 0; start < s.length; start++) {
    for (int end = start + 1; end <= s.length; end++) {
      String substr = s.substring(start, end);
      if (substr.length >= 3 && isPalindrome(substr) && substr.length > longest.length) {
        longest = substr;
      }
    }
  }
  return longest.isEmpty ? "none" : longest;
}
