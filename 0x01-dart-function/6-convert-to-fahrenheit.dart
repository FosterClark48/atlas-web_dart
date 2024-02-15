// Create a func convertToF() that accepts a list of doubles representing a list of temps in celsius, converts them to fahrenheit and returns them in a list.
List<double> convertToF(List<double> temperaturesInC) {
  List<double> temperaturesInF = [];

  // Iterate over temp in C and convert to F, convert double to 2 digits, and add to list
  for(double tempC in temperaturesInC) {
    double tempF = tempC * 1.8 + 32;
    temperaturesInF.add(double.parse(tempF.toStringAsFixed(2)));
  }

  return (temperaturesInF);
}
