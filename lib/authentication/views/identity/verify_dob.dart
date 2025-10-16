import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summer_flutter/authentication/views/identity/scan_id.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class VerifyDob extends StatefulWidget {
  const VerifyDob({super.key});

  @override
  State<VerifyDob> createState() => _VerifyDobState();
}

class _VerifyDobState extends State<VerifyDob> {
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
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
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
            Gap(10),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Text(
                    'Date of Birth (as it appears on your official ID)',
                    style: AppStyles.montserrat16xG,
                  ),
                  Gap(10),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(18),
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          border: Border.all(
                            color: Color(0xFFF1F0F0),
                          ),
                          borderRadius:
                              BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(
                                alpha: 0.2,
                              ),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text('Month'),
                            Text('05'),
                          ],
                        ),
                      ),
                      Gap(40),
                      Container(
                        padding: EdgeInsets.all(18),
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          border: Border.all(
                            color: Color(0xFFF1F0F0),
                          ),
                          borderRadius:
                              BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(
                                alpha: 0.2,
                              ),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text('Day'),
                            Text('24'),
                          ],
                        ),
                      ),
                      Gap(40),
                      Container(
                        padding: EdgeInsets.all(18),
                        width: 100,
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                          border: Border.all(
                            color: Color(0xFFF1F0F0),
                          ),
                          borderRadius:
                              BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withValues(
                                alpha: 0.2,
                              ),
                              spreadRadius: 2,
                              blurRadius: 8,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text('Year'),
                            Text('2024'),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Gap(context.getHeight(0.57)),
                  MyButton(
                    title: 'Continue',
                    backgroundColor: Color(0xFF003366),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const ScanId(),
                        ),
                      );
                    },
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
