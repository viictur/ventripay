import 'package:flutter/widgets.dart';
import 'package:summer_flutter/authentication/models/user_model.dart';

class AuthenticationProvider extends ChangeNotifier {
  final user = UserModel();
}
