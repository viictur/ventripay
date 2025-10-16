import 'package:flutter/foundation.dart';

class Endpoints {
  static const baseUrl2 = kDebugMode
      ? "https://myagent-python.onrender.com"
      : "https://myagent-python.onrender.com";

  static const baseUrl = kDebugMode
      ? "https://my-agent-backend.vercel.app"
      : "https://my-agent-backend.vercel.app";

  static const phoneRegister = '/auth/register/phone/initiate';
  static const phoneLogin = '/auth/login/phone/initiate';
  static const phoneRegisterVerify = '/auth/register/phone/verify';
  static const phoneLoginVerify = '/auth/login/phone/verify';
  static const phoneRegisterComplete = '/auth/register/phone/complete';

  static const googleSignup = '/auth/signup/google';
  static const goggleSignupComplete = '/auth/google/signup/callback';
  static const facebookSignup = '/auth/signup/facebook';
  static const facebookSignupCallback = '/auth/facebook/signup/callback';
  static const googleLogin = '/auth/login/google';
  static const googleLoginCallback = '/auth/google/login/callback';
  static const facebookLogin = '/auth/login/facebook';
  static const facebookLoginCallback = '/auth/facebook/login/callback';

  static const oauthComplete = '/auth/register/oauth/complete';
  static const getMe = '/auth/me';

  static const listhouse = '/house';
  static const getHouses = '/house';
  static const getRentedHouse = '/house/rented';
  static const getLandlordHouse = '/house/landlord-house';
  static String getHouseDetail(String houseId) => '/house/$houseId';
  static const toggleViewed = '/house/toggle-viewed';
  static const toggleSaved = '/house/toggle-saved';

  static const uploadImages = '/upload/multiple-images';
  static const uploadProfilePic = '/upload/upload-profilePic';
  static const paymentUrl = '/user/fundwallet';
  static const fetchWallet = '/user/wallet';
  static const getTransactions = '/user/transactions';
  static const updateProfile = '/user/updateProfile';
  static const updateBankDetails = '/user/updateBankDetails';
  static const verifyPayment = '/payment/verify/transaction';

  static const getBanks = '/payment/bank-list';
  static const getUserBankDetails = '/payment/verify/bank';

  static const createMessage = '/house/create-message';
  static const addConversation = '/messages/conversation';
  static const getUserMessage = '/messages/user';
  static const getMessageWithConversation = '/messages';

  static const saveUnregisteredToken = '/auth/token/unregistered';
  static const saveToken = '/auth/token/assign';
  static const saveDeviceInfo = '/auth/deviceinfo/assign';

  static const initiateCommitment = '/commitment-fees/initiate/';
  static const rejectHouse = '/commitment-fees/reject/';
  static const continueCommitment = '/commitment-fees/continue/';
  static const getActive = '/commitment-fees/active/';
  static const getAgreement = '/commitment-fees/get-Agreement/';

  static const getBadges = '/badges';
  static const getUserBadges = '/badges/user';

  static const rateHouse = "/ratings/rate-house";
  static const rateUser = "/ratings/rate-user";
}
