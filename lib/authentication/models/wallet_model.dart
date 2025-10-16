import 'package:cloud_firestore/cloud_firestore.dart';

class WalletModel {
  final String id;
  final double nairaBal;
  final double dollarBal;

  WalletModel({
    this.id = "",
    this.nairaBal = 0.00,
    this.dollarBal = 0.00,
  });

  factory WalletModel.fromJson(DocumentSnapshot json) {
    final data = json.data() as Map<String, dynamic>;
    return WalletModel(
      id: json.id,
      nairaBal: data["nairaBal"] as double? ?? 0.00,
      dollarBal: data["dollarBal"] as double? ?? 0.00,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nairaBal': nairaBal,
      'dollarBal': dollarBal,
    };
  }
}
