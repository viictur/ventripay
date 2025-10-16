import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/dashboard/dashboard_view.dart';
import 'package:summer_flutter/authentication/views/signup/views/reason.dart';
import 'package:summer_flutter/authentication/views/signup/views/verify.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/core/validators.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final pwdController = TextEditingController();
  final confirmPwdController = TextEditingController();
  bool agreeEmail = false;
  bool agreePolicy = false;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        print(auth.user.toJson());
        return Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
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
                              Gap(6),
                              Text(
                                'Back',
                                style:
                                    GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight:
                                          FontWeight.w500,
                                    ),
                              ),
                              Gap(6),
                            ],
                          ),
                        ),
                        Text(
                          'Create Password',
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
                    child: Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter Password',
                            style:
                                GoogleFonts.redHatDisplay(
                                  fontSize: 16,
                                  fontWeight:
                                      FontWeight.w600,
                                  color: Colors.black,
                                ),
                          ),
                          Gap(10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xFFF1F0F0),
                              ),
                              borderRadius:
                                  BorderRadius.circular(8),
                            ),
                            child: TextFormField(
                              controller: pwdController,
                              validator:
                                  Validators.validatePassword(),
                              decoration: InputDecoration(
                                fillColor: Color(
                                  0xFFFCFCFC,
                                ),
                                hintText: 'Password',
                                hintStyle:
                                    AppStyles.montserrat14S,
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.visibility,
                                ),
                                contentPadding:
                                    EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Gap(10),
                          Text(
                            'Confirm Password',
                            style:
                                GoogleFonts.redHatDisplay(
                                  fontSize: 16,
                                  fontWeight:
                                      FontWeight.w600,
                                  color: Colors.black,
                                ),
                          ),
                          Gap(10),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xFFF1F0F0),
                              ),
                              borderRadius:
                                  BorderRadius.circular(8),
                            ),
                            child: TextFormField(
                              controller:
                                  confirmPwdController,
                              decoration: InputDecoration(
                                fillColor: Color(
                                  0xFFFCFCFC,
                                ),
                                hintText: 'Password',
                                hintStyle:
                                    AppStyles.montserrat14S,
                                border: InputBorder.none,
                                suffixIcon: Icon(
                                  Icons.visibility,
                                ),
                                contentPadding:
                                    EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Gap(context.getHeight(0.39)),
                          Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    agreeEmail =
                                        !agreeEmail;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      agreeEmail
                                          ? Icons
                                                .check_box_outlined
                                          : Icons
                                                .check_box_outline_blank,
                                      color: agreeEmail
                                          ? Color(
                                              0xFF003366,
                                            )
                                          : Color(
                                              0xFFE4E2E2,
                                            ),
                                    ),
                                    Gap(10),
                                    Expanded(
                                      child: Text(
                                        'I agree to receiving email updates about new products, announcements, and special deals.',
                                        style:
                                            GoogleFonts.redHatDisplay(
                                              fontSize: 10,
                                              fontWeight:
                                                  FontWeight
                                                      .w400,
                                              color: Colors
                                                  .black,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Gap(8),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    agreePolicy =
                                        !agreePolicy;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Icon(
                                      agreePolicy
                                          ? Icons
                                                .check_box_outlined
                                          : Icons
                                                .check_box_outline_blank,
                                      color: agreePolicy
                                          ? Color(
                                              0xFF003366,
                                            )
                                          : Color(
                                              0xFFE4E2E2,
                                            ),
                                    ),
                                    Gap(10),
                                    Expanded(
                                      child: RichText(
                                        text: TextSpan(
                                          text:
                                              'I agree to the ',
                                          style: AppStyles
                                              .redHat10,
                                          children: [
                                            TextSpan(
                                              text:
                                                  'Terms of Use',
                                              style: AppStyles
                                                  .redHat10
                                                  .copyWith(
                                                    color: Color(
                                                      0xFF003366,
                                                    ),
                                                    decoration:
                                                        TextDecoration.underline,
                                                  ),
                                            ),
                                            TextSpan(
                                              text: ' and ',
                                              style: AppStyles
                                                  .redHat10,
                                            ),
                                            TextSpan(
                                              text:
                                                  'Privacy Policy',
                                              style: AppStyles
                                                  .redHat10
                                                  .copyWith(
                                                    color: Color(
                                                      0xFF003366,
                                                    ),
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
                              Gap(context.getHeight(0.01)),
                              MyButton(
                                title: 'Continue',
                                backgroundColor: Color(
                                  0xFF003366,
                                ),
                                onPressed: () {
                                  //if statement for pwd(try doing it in the validation)
                                  //tried doing the pwd dont match thing
                                  //try snackbar for informing user to tick the boxes
                                  if (!formKey.currentState!
                                      .validate()) {
                                    return;
                                  }
                                  if (pwdController.text !=
                                      confirmPwdController
                                          .text) {
                                    ScaffoldMessenger.of(
                                      context,
                                    ).showSnackBar(
                                      SnackBar(
                                        backgroundColor:
                                            Color(
                                              0xFF003366,
                                            ),
                                        content: Text(
                                          'Passwords don\'t match.',
                                        ),
                                      ),
                                    );
                                    return;
                                  }
                                  if (!agreeEmail ||
                                      !agreePolicy) {
                                    ScaffoldMessenger.of(
                                      context,
                                    ).showSnackBar(
                                      const SnackBar(
                                        backgroundColor:
                                            Color(
                                              0xFF003366,
                                            ),
                                        content: Text(
                                          'Please tick the boxes',
                                        ),
                                      ),
                                    );
                                    return;
                                  }
                                  auth.user.password =
                                      confirmPwdController
                                          .text;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const Reason(),
                                    ),
                                  );
                                },
                                style: AppStyles
                                    .montserrat16Xl
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
