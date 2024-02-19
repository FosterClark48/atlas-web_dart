// Create a function calculateTotal() that calculates the total price of items for a certain user.
import '4-util.dart';
import 'dart:convert' as convert;

Future<double> calculateTotal() async {
  double totalPrice = 0.0;
  try {
    // Get User data - id
    var userData = await fetchUserData();
    Map<String, dynamic> user = convert.jsonDecode(userData);
    var userId = user['id'];

    // Get user orders
    var userOrders = await fetchUserOrders(userId);
    List<dynamic> orders = convert.jsonDecode(userOrders);

    // Iterate over each item in the orders and get its price
    for (var item in orders) {
      var itemPriceString = await fetchProductPrice(item);
      var itemPrice = convert.jsonDecode(itemPriceString);
      totalPrice += itemPrice;
    }

    return totalPrice;
  } catch (e) {
    return -1;
  }
}
