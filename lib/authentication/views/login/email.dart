import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
                      Gap(context.getWidth(0.17)),
                      Text(
                        'Enter Phone Number',
                        style: GoogleFonts.montserrat(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.07,
                        ),
                      ),
                      Gap(10),
                    ],
                  ),
                ],
              ),
            ),
            Gap(10),
            Text(
              'Email Address',
              style: GoogleFonts.montserrat(
                fontSize: 9,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Eg.ventripay@gmail.com',
                    hintStyle: AppStyles.montserrat12Rg
                        .copyWith(color: Color(0xFF949494)),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 8,
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Color(0xFF003366), height: 1),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Text(
                  'Remember Email',
                  style: AppStyles.montserrat12Rg.copyWith(
                    fontSize: 9,
                  ),
                ),
              ],
            ),
            Gap(context.getHeight(0.6)),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  MyButton(
                    title: 'NEXT',
                    backgroundColor: Color(0xFF003366),
                    onPressed: () {},
                    style: AppStyles.montserrat16Xl
                        .copyWith(color: Colors.white),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Color(0xFF003366),
                      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100))),
                    ),
                    child: Text(
                      'Receive code another way ',
                      style: AppStyles.montserrat16Xl,
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
