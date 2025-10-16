import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summer_flutter/authentication/views/login/email.dart';
import 'package:summer_flutter/authentication/views/login/phone.dart';
import 'package:summer_flutter/core/app_colors.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
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
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back,
                              size: 11,
                            ),
                            Text(
                              'Back',
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(context.getHeight(0.15)),
                      Text(
                        'Login',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.07,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Gap(10),
                  Text(
                    'Get verification code to log in',
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Gap(12),
                  Text(
                    'How would you like to receive a verification code?',
                    style: AppStyles.montserrat12Rg,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const Phone(),
                        ),
                      );
                    },
                    child: Row(
                      // mainAxisAlignment:
                      //     MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF9F9F9),
                            borderRadius:
                                BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/phone.png',
                            width: 58,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Phone number',
                            style: GoogleFonts.montserrat(
                              fontSize: 18.14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const Email(),
                        ),
                      );
                    },
                    child: Row(
                      // mainAxisAlignment:
                      //     MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFF9F9F9),
                            borderRadius:
                                BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/email.png',
                            width: 58,
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Text(
                            'Email',
                            style: GoogleFonts.montserrat(
                              fontSize: 18.14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios_rounded,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Gap(context.getHeight(0.6)),
            Center(
              child: RichText(
                text: TextSpan(
                  text: 'Don\'t have an account? ',
                  style: GoogleFonts.redHatDisplay(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Sign up here',
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: AppColors.primary,
                        decoration:
                            TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
