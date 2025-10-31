import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/login/login.dart';
import 'package:summer_flutter/authentication/views/signup/views/password_view.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/validators.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/my_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final genders = ['Male', 'Female'];
  String selectedGender = 'Male';
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        print(auth.user.toJson());
        //authprov,var,model
        return Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
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
                          'Basic Information',
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
                            'First Name (as it appears on your official ID)',
                            style: AppStyles.montserrat16xG,
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
                              color: Color(0xFFFCFCFC),
                            ),
                            child: TextFormField(
                              controller:
                                  firstNameController,
                              validator:
                                  Validators.validateString(),
                              decoration: InputDecoration(
                                hintText:
                                    'Enter your first name',
                                hintStyle:
                                    AppStyles.montserrat14S,
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Gap(10),
                          Text(
                            'Last Name (as it appears on your official ID)',
                            style: AppStyles.montserrat16xG,
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
                              color: Color(0xFFFCFCFC),
                            ),
                            child: TextFormField(
                              controller:
                                  lastNameController,
                              validator:
                                  Validators.validateString(),
                              decoration: InputDecoration(
                                hintText:
                                    'Enter your last name',
                                hintStyle:
                                    AppStyles.montserrat14S,
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Gap(10),
                          Text(
                            'Gender',
                            style: AppStyles.montserrat16xG,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xFFF1F0F0),
                              ),
                              borderRadius:
                                  BorderRadius.circular(8),
                              color: Color(0xFFFCFCFC),
                            ),
                            child: DropdownButtonFormField(
                              icon: Icon(
                                Icons.keyboard_arrow_down,
                              ),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Gender',
                                contentPadding:
                                    EdgeInsets.all(10),
                                hintStyle:
                                    AppStyles.montserrat14S,
                              ),
                              items: genders.map((item) {
                                return DropdownMenuItem(
                                  value: item,
                                  child: Text(item),
                                );
                              }).toList(),
                              onChanged: (item) {
                                selectedGender = item!;
                              },
                            ),
                          ),
                          Gap(10),
                          Text(
                            'Email',
                            style: AppStyles.montserrat16xG,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Color(0xFFF1F0F0),
                              ),
                              borderRadius:
                                  BorderRadius.circular(8),
                              color: Color(0xFFFCFCFC),
                            ),
                            child: TextFormField(
                              controller: emailController,
                              validator:
                                  Validators.validateEmail,
                              decoration: InputDecoration(
                                hintText:
                                    'Enter your email address',
                                hintStyle:
                                    AppStyles.montserrat14S,
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.all(10),
                              ),
                            ),
                          ),
                          Gap(10),
                          Text(
                            'Enter Phone Number',
                            style: AppStyles.montserrat16xG,
                          ),
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF0F0F0),
                                  border: Border.all(
                                    color: Color(
                                      0xFFE4E4E4,
                                    ),
                                  ),
                                  borderRadius:
                                      BorderRadius.only(
                                        topLeft:
                                            Radius.circular(
                                              8,
                                            ),
                                        bottomLeft:
                                            Radius.circular(
                                              8,
                                            ),
                                      ),
                                ),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'assets/flag.png',
                                    ),
                                    Gap(6),
                                    Text('+234'),
                                    Icon(
                                      Icons
                                          .keyboard_arrow_down,
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(
                                        0xFFF1F0F0,
                                      ),
                                    ),
                                  ),
                                  child: TextFormField(
                                    controller:
                                        phoneController,
                                    validator:
                                        Validators.validatePhoneNumber(),
                                    decoration: InputDecoration(
                                      hintText:
                                          '00 0000 000',
                                      hintStyle: AppStyles
                                          .montserrat14S,
                                      border:
                                          InputBorder.none,
                                      contentPadding:
                                          EdgeInsets.symmetric(
                                            horizontal: 8,
                                          ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Gap(context.getHeight(0.23)),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.center,
                            children: [
                              MyButton(
                                title: 'Continue',
                                backgroundColor: Color(
                                  0xFF003366,
                                ),
                                onPressed: () {
                                  if (formKey.currentState!
                                      .validate()) {
                                    auth.user.firstName =
                                        firstNameController
                                            .text;
                                    auth.user.lastName =
                                        lastNameController
                                            .text;
                                    auth.user.phoneNumber =
                                        phoneController
                                            .text;
                                    auth.user.gender =
                                        selectedGender;
                                    auth.user.email =
                                        emailController
                                            .text;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const Password(),
                                      ),
                                    );
                                  }
                                },
                                style: AppStyles
                                    .montserrat16Xl
                                    .copyWith(
                                      color: Colors.white,
                                    ),
                              ),
                              // RichText(
                              //   text: TextSpan(
                              //     text:
                              //         'Already have an account? ',
                              //     style:
                              //         GoogleFonts.redHatDisplay(
                              //           fontSize: 14,
                              //           fontWeight:
                              //               FontWeight.w400,
                              //           color: Colors.black,
                              //         ),
                              //     children: [
                              //       TextSpan(
                              //         text: 'Sign in here',
                              //         style:
                              //             GoogleFonts.redHatDisplay(
                              //               fontSize: 14,
                              //               fontWeight:
                              //                   FontWeight.w500,
                              //               color:
                              //                   AppColors.primary,
                              //               decoration:
                              //                   TextDecoration
                              //                       .underline,
                              //             ),
                              //       ),
                              //     ],
                              //   ),
                              // ),//couldnt use gesture detector or textbutton in richtext
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment
                                        .center,
                                children: [
                                  Text(
                                    'Already have an account? ',
                                    style:
                                        GoogleFonts.redHatDisplay(
                                          fontSize: 14,
                                          fontWeight:
                                              FontWeight
                                                  .w400,
                                          color:
                                              Colors.black,
                                        ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const Login(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Sign in here',
                                      style: GoogleFonts.redHatDisplay(
                                        fontSize: 14,
                                        fontWeight:
                                            FontWeight.w500,
                                        color: AppColors
                                            .primary,
                                        decoration:
                                            TextDecoration
                                                .underline,
                                      ),
                                    ),
                                  ),
                                ],
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
