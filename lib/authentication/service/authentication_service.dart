import 'package:summer_flutter/authentication/models/user_model.dart';
import 'package:summer_flutter/authentication/models/wallet_model.dart';
import 'package:summer_flutter/core/network/general_response.dart';

abstract class AuthenticationService {
  Future<GeneralResponse> signup(UserModel user);
  Future<GeneralResponse> login(
    String email,
    String password,
  );
  //func for wallet
  Future<void> createWallet(
    WalletModel wallet,
    String userId,
  );

  Future<GeneralResponse> getUser();

  Future<GeneralResponse> cardApply(
    double amount,
    UserModel user,
  );

  Future<GeneralResponse> signOut();

  Future<GeneralResponse> deposit(
    double amount,
    bool isDollar,
  );
}
