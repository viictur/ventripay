import 'package:flutter/material.dart';

class CardView extends StatefulWidget {
  const CardView({super.key});

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VentriPay Card'),
        leading: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.deepPurple),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.arrow_circle_left),
        ),
        actions: [Text('Q&A')],
      ),
      body: SafeArea(child: Column()),
    );
  }
}
