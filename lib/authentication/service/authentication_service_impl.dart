import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:summer_flutter/authentication/models/user_model.dart';
import 'package:summer_flutter/authentication/models/wallet_model.dart';
import 'package:summer_flutter/authentication/service/authentication_service.dart';
import 'package:summer_flutter/core/network/general_response.dart';

class AuthenticationServiceImpl
    extends AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _database =
      FirebaseFirestore.instance;

  @override
  Future<GeneralResponse> login(
    String email,
    String password,
  ) async {
    try {
      email = email.trim();
      password = password.trim();

      UserCredential userCredential = await _auth
          .signInWithEmailAndPassword(
            email: email,
            password: password,
          );
      if (userCredential.user != null) {
        return GeneralResponse(
          success: true,
          message: 'Login successful.',
        );
        // Welcome back ${user.firstName}
      }
      return GeneralResponse(
        success: false,
        message: 'Something went wrong.',
      );
    } catch (e) {
      return GeneralResponse(
        success: false,
        message: 'An unknown error occurred: $e.',
      );
    }
  }

  @override
  Future<GeneralResponse> signup(UserModel user) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(
            email: user.email,
            password: user.password,
          );
      if (userCredential.user != null) {
        final userId = userCredential.user!.uid;
        final userData = {
          'id': userId,
          'firstName': user.firstName,
          'lastName': user.lastName,
          'gender': user.gender,
          'email': user.email,
          'phoneNumber': user.phoneNumber,
          'interest': user.interest,
          'createdAt': user.createdAt,
          'updatedAt': user.updatedAt,
        };
        await _database
            .collection('Users')
            .doc(userId)
            .set(userData);

        await userCredential.user!.sendEmailVerification();

        final wallet = WalletModel(
          id: userId,
          nairaBal: 0.00,
          dollarBal: 0.00,
        );
        await createWallet(wallet, userId);

        return GeneralResponse(
          success: true,
          message:
              'Welcome to Ventripay, ${user.firstName}',
        );
      }
      return GeneralResponse(
        success: false,
        message: 'Something went wrong. Please try again',
      );
    } catch (e) {
      return GeneralResponse(success: false, message: '$e');
    }
  }

  @override
  Future<void> createWallet(
    WalletModel wallet,
    String userId,
  ) async {
    try {
      final myWallet = wallet.toJson();
      await _database
          .collection('Wallet')
          .doc(userId)
          .set(myWallet);
    } catch (e) {
      print('Error while creating the wallet $e');
    }
  }

  @override
  Future<GeneralResponse> getUser() async {
    try {
      if (_auth.currentUser != null) {
        final userId = _auth.currentUser!.uid;
        final userData = await _database
            .collection('Users')
            .doc(userId)
            .get();
        final userWallet = await _database
            .collection('Wallet')
            .doc(userId)
            .get();
        final data = [userData, userWallet];
        return GeneralResponse(
          success: true,
          message: 'Success',
          data: data,
        );
      }
      return GeneralResponse(
        success: false,
        message: 'Failure',
      );
    } catch (e) {
      return GeneralResponse(
        success: false,
        message: 'Something went wrong',
      );
    }
  }

  @override
  Future<GeneralResponse> cardApply(
    double amount,
    UserModel user,
  ) async {
    try {
      if (_auth.currentUser != null) {
        final userId = _auth.currentUser!.uid;
        final myWallet = await _database
            .collection('Wallet')
            .doc(userId)
            .get();
        final wallet = WalletModel.fromJson(myWallet);
        if (wallet.nairaBal < amount) {
          return GeneralResponse(
            success: false,
            message: 'Insufficient funds.',
          );
        }
        final newBal = amount - wallet.nairaBal;
        final newWallet = {'nairaBal': newBal};
        await _database
            .collection('Wallet')
            .doc(userId)
            .update(newWallet);
        final myUser = {
          'id': userId,
          'firstName': user.firstName,
          'lastName': user.lastName,
          'middleName': user.middleName,
          'gender': user.gender,
          'email': user.email,
          'phoneNumber': user.phoneNumber,
          'interest': user.interest,
          'dob': user.dob,
          'timeApplied': DateTime.now().day,
        };
        await _database
            .collection('Card Applications')
            .doc(userId)
            .set(myUser);

        return GeneralResponse(
          success: true,
          message: 'Successful',
        );
      }
      return GeneralResponse(
        success: false,
        message: 'An error occurred.',
      );
    } catch (e) {
      print('An error $e occurred.');
      return GeneralResponse(
        success: false,
        message: 'An error occurred.',
      );
    }
  }

  @override
  Future<GeneralResponse> signOut() async {
    try {
      await _auth.signOut();
      if (_auth.currentUser == null) {
        return GeneralResponse(
          success: true,
          message: 'Signed out successfully.',
        );
      }
      return GeneralResponse(
        success: false,
        message: 'Sign out failed. Please try again.',
      );
    } catch (e) {
      return GeneralResponse(
        success: false,
        message: 'Error during signout: $e',
      );
    }
  }
}
