import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:summer_flutter/core/app_styles.dart';

import '../../../../core/app_colors.dart';
import '../../../../core/my_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      Icon(Icons.arrow_back, size: 11),
                      Text(
                        'Back',
                        style: GoogleFonts.montserrat(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Gap(6),
                    ],
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
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Full Name (as it appears on your official ID)',
                    style: AppStyles.montserrat16xG,
                  ),
                  Gap(10),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFF1F0F0),
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Color(0xFFFCFCFC),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your name',
                        hintStyle: AppStyles.montserrat14S,
                        border: InputBorder.none,
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
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Color(0xFFFCFCFC),
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      items: ['Male', 'Female'].map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (item) {},
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
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Color(0xFFFCFCFC),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText:
                            'Enter your email address',
                        hintStyle: AppStyles.montserrat14S,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Gap(10),
                  Text(
                    'Enter Phone Number',
                    style: AppStyles.montserrat16xG,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: Color(0xFFF1F0F0),
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Color(0xFFFCFCFC),
                    ),
                    //use container
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        //labelText: 'Phone Number',
                        hintText: '00 0000 000',
                        hintStyle: AppStyles.montserrat14S,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.circular(8),
                        ),
                      ),
                      dropdownDecoration: BoxDecoration(
                        color: Color(0xFFF0F0F0),
                        shape: BoxShape.rectangle,
                      ),
                      initialCountryCode: 'NG',
                      dropdownTextStyle:
                          GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                      disableLengthCheck: true,
                      dropdownIconPosition:
                          IconPosition.trailing,
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.center,
                children: [
                  MyButton(
                    title: 'Continue',
                    backgroundColor: Color(0xFFCCD6E0),
                    onPressed: () {},
                    style: AppStyles.montserrat16Xl
                        .copyWith(color: Colors.white),
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Already have an account? ',
                      style: GoogleFonts.redHatDisplay(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sign in here',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
