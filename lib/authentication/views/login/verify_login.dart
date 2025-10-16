import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class VerifyLogin extends StatefulWidget {
  const VerifyLogin({super.key});

  @override
  State<VerifyLogin> createState() => _VerifyLoginState();
}

class _VerifyLoginState extends State<VerifyLogin> {
  final otpController = TextEditingController();
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
          color: Color.fromRGBO(234, 239, 243, 1),
        ),
        borderRadius: BorderRadius.circular(20),
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
                  Row(
                    children: [
                      Icon(Icons.arrow_back, size: 11),
                      Text(
                        'Back',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Gap(context.getWidth(0.25)),
                      Text(
                        'Verification',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.07,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Gap(10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Kindly enter your Verification',
                  style: AppStyles.montserrat16Md,
                ),
                Text(
                  'code',
                  style: AppStyles.montserrat16Md,
                ),
                Text(
                  'To log in, kindly enter the verification code sent to your email address',
                  style: AppStyles.montserrat12Rg,
                ),
                Gap(20),
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
            Gap(context.getHeight(0.4)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  MyButton(
                    title: 'SUBMIT',
                    backgroundColor: Color(0xFFCCD6E0),
                    onPressed: () {},
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
