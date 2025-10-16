import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:summer_flutter/authentication/views/signup/views/reason.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  final otpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 54,
      height: 54,
      textStyle: TextStyle(
        fontSize: 20,
        color: Color.fromRGBO(30, 60, 87, 1),
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFFE4E2E2)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
    final focusedPinTheme = defaultPinTheme
        .copyDecorationWith(
          border: Border.all(
            color: Color.fromRGBO(114, 178, 238, 1),
          ),
          borderRadius: BorderRadius.circular(8),
        );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Color(0xFFF8F8F8),
              ),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Verify Your Email',
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Gap(10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Please enter the OTP sent to',
                    style: AppStyles.montserrat16R,
                  ),
                  Text(
                    'ventrpay@gmail.com',
                    style: AppStyles.montserrat16Md,
                  ),
                  Gap(context.getHeight(0.03)),
                  //read up on pinput from pub.dev
                  Pinput(
                    length: 6,
                    defaultPinTheme: defaultPinTheme,
                    focusedPinTheme: focusedPinTheme,
                    submittedPinTheme: defaultPinTheme,
                    showCursor: true,
                    onCompleted: (pin) {
                      otpController.text = pin;
                    },
                  ),
                ],
              ),
            ),
            Gap(context.getHeight(0.56)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  MyButton(
                    title: 'Verify Account',
                    backgroundColor: Color(0xFFCCD6E0),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const Reason(),
                        ),
                      );
                    },
                    style: AppStyles.montserrat16Xl
                        .copyWith(color: Colors.white),
                  ),
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.center,
                    children: [
                      Icon(Icons.refresh),
                      SizedBox(width: 6),
                      Text(
                        'Resend code',
                        style: GoogleFonts.redHatDisplay(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
