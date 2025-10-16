import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summer_flutter/authentication/views/identity/selfie.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class ScanId extends StatefulWidget {
  const ScanId({super.key});

  @override
  State<ScanId> createState() => _ScanIdState();
}

class _ScanIdState extends State<ScanId> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
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
                    'Verify your Identity',
                    style: AppStyles.redHat15,
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
            Text(
              'Front of your ID',
              style: AppStyles.montserrat12Md.copyWith(
                fontSize: 24,
              ),
            ),
            Gap(context.getHeight(0.5)),
            MyButton(
              height: 48,
              width: 390,
              title: 'SUBMIT PHOTO',
              backgroundColor: Color(0xFF003366),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Selfie(),
                  ),
                );
              },
              style: AppStyles.montserrat16Xl.copyWith(
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
