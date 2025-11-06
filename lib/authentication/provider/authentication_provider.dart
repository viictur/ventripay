import 'package:flutter/widgets.dart';
import 'package:summer_flutter/authentication/models/user_model.dart';
import 'package:summer_flutter/authentication/models/wallet_model.dart';
import 'package:summer_flutter/authentication/service/authentication_service.dart';
import 'package:summer_flutter/authentication/service/authentication_service_impl.dart';
import 'package:summer_flutter/core/network/general_response.dart';
import 'package:summer_flutter/locator.dart';

class AuthenticationProvider extends ChangeNotifier {
  UserModel user = UserModel();
  bool isLoading = false;
  final authService = locator<AuthenticationService>();
  WalletModel wallet = WalletModel();

  Future<GeneralResponse> signup() async {
    try {
      isLoading = true;
      notifyListeners();
      final res = await authService.signup(user);
      if (res.success) {
        await getUser();
        return GeneralResponse(
          success: true,
          message: res.message,
        );
      } else {
        return GeneralResponse(
          success: false,
          message: res.message,
        );
      }
    } catch (e) {
      return GeneralResponse(
        success: false,
        message: 'An error occurred',
      );
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<void> getUser() async {
    try {
      isLoading = true;
      notifyListeners();
      final res = await authService.getUser();
      if (res.success) {
        final myUser = res.data[0];
        final myWallet = res.data[1];
        user = UserModel.fromJson(myUser);
        wallet = WalletModel.fromJson(myWallet);
        notifyListeners();
      }
    } catch (e) {
      print('An error occurred $e.');
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<GeneralResponse> login(
    String email,
    String password,
  ) async {
    try {
      isLoading = true;
      notifyListeners();
      final res = await authService.login(email, password);
      if (res.success) {
        await getUser();
        return GeneralResponse(
          success: true,
          message: res.message,
        );
      } else {
        return GeneralResponse(
          success: false,
          message: res.message,
        );
      }
    } catch (e) {
      return GeneralResponse(
        success: false,
        message: 'Error $e',
      );
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<GeneralResponse> cardApply(
    double amount,
    UserModel user,
  ) async {
    try {
      isLoading = true;
      notifyListeners();
      final res = await authService.cardApply(amount, user);
      if (res.success) {
        return GeneralResponse(
          success: true,
          message: res.message,
        );
      } else {
        return GeneralResponse(
          success: false,
          message: res.message,
        );
      }
    } catch (e) {
      return GeneralResponse(
        success: false,
        message: 'An unknown error: $e',
      );
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<GeneralResponse> signOut() async {
    try {
      isLoading = true;
      notifyListeners();
      final res = await authService.signOut();
      if (res.success) {
        return GeneralResponse(
          success: true,
          message: res.message,
        );
      } else {
        return GeneralResponse(
          success: false,
          message: res.message,
        );
      }
    } catch (e) {
      return GeneralResponse(
        success: false,
        message: 'An unknown error: $e',
      );
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }

  Future<GeneralResponse> deposit(
    double amount,
    bool isDollar,
  ) async {
    try {
      isLoading = true;
      notifyListeners();
      final res = await authService.deposit(
        amount,
        isDollar,
      );
      if (res.success) {
        await getUser();
        return GeneralResponse(
          success: true,
          message: res.message,
        );
      } else {
        return GeneralResponse(
          success: false,
          message: res.message,
        );
      }
    } catch (e) {
      return GeneralResponse(
        success: false,
        message: 'An unknown error: $e',
      );
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
