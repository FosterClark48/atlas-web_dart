// Create a function usersCount() that prints the number of users.
import '0-util.dart';
Future<void> usersCount() async {
  var users = await fetchUsersCount();
  print(users);
}
