import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/identity/verify_dob.dart';
import 'package:summer_flutter/authentication/views/signup/views/password_view.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/validators.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/my_button.dart';

class VerifyId extends StatefulWidget {
  const VerifyId({super.key});

  @override
  State<VerifyId> createState() => _VerifyIdState();
}

class _VerifyIdState extends State<VerifyId> {
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
                          'Verify your Identity',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.07,
                          ),
                        ),
                        Gap(10),
                        Container(
                          // decoration: BoxDecoration(
                          //   border: Border.all(width: 12),
                          //   shape: BoxShape.circle,
                          // ),
                          child: Icon(
                            Icons.circle_outlined,
                            fill: 1,
                            color: const Color.fromARGB(
                              255,
                              185,
                              184,
                              184,
                            ),
                          ),
                        ),
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
                                  firstNameController,
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
                          Gap(context.getHeight(0.38)),
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
                                    auth.user.gender =
                                        selectedGender;
                                    ScaffoldMessenger.of(
                                      context,
                                    ).showSnackBar(
                                      SnackBar(
                                        duration: Durations
                                            .extralong1,
                                        behavior:
                                            SnackBarBehavior
                                                .floating,
                                        backgroundColor:
                                            Color(
                                              0xFF003366,
                                            ),
                                        content: Text(
                                          'Success!',
                                        ),
                                      ),
                                    );
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
                                              const VerifyDob(),
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
