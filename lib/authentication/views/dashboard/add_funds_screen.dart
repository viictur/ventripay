import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AddFundsScreen extends StatefulWidget {
  const AddFundsScreen({super.key});

  @override
  State<AddFundsScreen> createState() =>
      _AddFundsScreenState();
}

class _AddFundsScreenState extends State<AddFundsScreen> {
  String selectedCurrency = 'NGN'; // default
  final TextEditingController amountController =
      TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _db = FirebaseFirestore.instance;

  bool isLoading = false;

  Future<void> depositFunds() async {
    final user = _auth.currentUser;
    if (user == null) return;

    final amount = double.tryParse(
      amountController.text.trim(),
    );
    if (amount == null || amount <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter a valid amount.'),
        ),
      );
      return;
    }

    setState(() => isLoading = true);

    try {
      final walletRef = _db
          .collection('Wallet')
          .doc(user.uid);
      final walletSnapshot = await walletRef.get();

      if (!walletSnapshot.exists) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Wallet not found.'),
          ),
        );
        return;
      }

      final walletData = walletSnapshot.data()!;
      double newBalance;

      if (selectedCurrency == 'NGN') {
        newBalance =
            (walletData['nairaBal'] ?? 0.0) + amount;
        await walletRef.update({'nairaBal': newBalance});
      } else {
        newBalance =
            (walletData['dollarBal'] ?? 0.0) + amount;
        await walletRef.update({'dollarBal': newBalance});
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            'Deposited $amount $selectedCurrency successfully!',
          ),
        ),
      );

      amountController.clear();
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Error: $e')));
    } finally {
      setState(() => isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Funds')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text(
              'Select Currency',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            DropdownButton<String>(
              value: selectedCurrency,
              items: const [
                DropdownMenuItem(
                  value: 'NGN',
                  child: Text('Naira (₦)'),
                ),
                DropdownMenuItem(
                  value: 'USD',
                  child: Text('Dollar (\$)'),
                ),
              ],
              onChanged: (value) {
                setState(() => selectedCurrency = value!);
              },
            ),
            const SizedBox(height: 16),
            TextField(
              controller: amountController,
              decoration: const InputDecoration(
                labelText: 'Enter Amount',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: isLoading ? null : depositFunds,
              child: isLoading
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                    )
                  : const Text('Deposit'),
            ),
          ],
        ),
      ),
    );
  }
}
