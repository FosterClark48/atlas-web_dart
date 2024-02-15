// Create a function calculateArea() that accepts two variables height and base and returns the area of the triangle.
double calculateArea(double height, double base) {
  var area = height * base / 2;
  // Convert doublt to string w/ 2 decimal places, then back to double using double.parse
  return double.parse(area.toStringAsFixed(2));
}
