import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/my_button.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
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
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Password',
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
                        hintText: 'Password',
                        hintStyle: AppStyles.montserrat14S,
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ),
                  ),
                  Gap(10),
                  Text(
                    'Confirm Password',
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
                        hintText: 'Password',
                        hintStyle: AppStyles.montserrat14S,
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.visibility),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        color: Color(0xFFE4E2E2),
                      ),
                      Gap(10),
                      Expanded(
                        child: Text(
                          'I agree to receiving email updates about new products, announcements, and special deals.',
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(8),
                  Row(
                    children: [
                      Icon(
                        Icons.check_box_outline_blank,
                        color: Color(0xFFE4E2E2),
                      ),
                      Gap(10),
                      Expanded(
                        child: Text(
                          'I agree to the Terms of Use and Privacy Policy',
                          style: GoogleFonts.redHatDisplay(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Gap(18),
                  MyButton(
                    title: 'Continue',
                    backgroundColor: Color(0xFFCCD6E0),
                    onPressed: () {},
                    style: AppStyles.montserrat16Xl
                        .copyWith(color: Colors.white),
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
