// Write 3 functions - add() sub() showFunc()
int add(int a, int b) {
  int res = a + b;
  return res;
}

int sub(int a, int b) {
  int res = a - b;
  return res;
}

String showFunc(int a, int b) {
  int sum = add(a, b);
  int diff = sub(a, b);

  return('Add $a + $b = $sum\nSub $a - $b = $diff');
}
