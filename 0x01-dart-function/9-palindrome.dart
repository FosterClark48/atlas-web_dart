// Write a function that accepts one argument String and returns True if the input String is a palindrome otherwise it returns False.
bool isPalindrome(String s) {
  if (s.length <= 2) {
    return false;
  }
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}
