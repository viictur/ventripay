import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class Ok extends StatelessWidget {
  const Ok({super.key});

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Color.fromRGBO(34, 59, 81, 1),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Pinput(
            defaultPinTheme: defaultPinTheme,
            // focusedPinTheme: focusedPinTheme,
            // submittedPinTheme: submittedPinTheme,
            validator: (s) {
              return s == '2222'
                  ? null
                  : 'Pin is incorrect';
            },
            pinputAutovalidateMode:
                PinputAutovalidateMode.onSubmit,
            showCursor: true,
            onCompleted: (pin) => print(pin),
          ),
        ),
      ),
    );
  }
}
