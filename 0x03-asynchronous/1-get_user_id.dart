// Create a function getUserID() that returns a future string representing the user’s ID.
import '1-util.dart';
import 'dart:convert' as convert;

Future<String> getUserId() async {
  var userData = await fetchUserData();
  Map<String, dynamic> data = convert.jsonDecode(userData);
  return data['id'];
}
