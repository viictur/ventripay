import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summer_flutter/core/app_styles.dart';

class Reason extends StatefulWidget {
  const Reason({super.key});

  @override
  State<Reason> createState() => _ReasonState();
}

class _ReasonState extends State<Reason> {
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
                  Text(
                    'What do you want to use VentriPay for?',
                    style: GoogleFonts.montserrat(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.07,
                    ),
                  ),
                  Gap(10),
                  Text(
                    'Select all use cases that match your want.',
                    style: AppStyles.montserrat12Rg
                        .copyWith(color: Color(0xFF616060)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Card(
                    color: Color(0xFFCCD6E0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusGeometry.circular(12),
                    ),
                    // child: ListTile(
                    //   contentPadding: EdgeInsets.symmetric(
                    //     vertical: 1,
                    //     horizontal: 8,
                    //   ),
                    //   leading: Icon(Icons.ac_unit),
                    //   title: Text(
                    //     'Obtain a virtual card for online purchasing',
                    //     style: AppStyles.montserrat13xG,
                    //   ),
                    // ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.ac_unit),
                          Gap(8),
                          Text(
                            'Obtain a virtual card for online purchasing',
                            style: AppStyles.montserrat13xG,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(10),
                  Card(
                    color: Color(0xFFCCD6E0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusGeometry.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.ac_unit),
                          Gap(8),
                          Text(
                            'Manage and track my expenses',
                            style: AppStyles.montserrat13xG,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(10),
                  Card(
                    color: Color(0xFFCCD6E0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusGeometry.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.ac_unit),
                          Gap(8),
                          Text(
                            'Generate invoices to accept payments',
                            style: AppStyles.montserrat13xG,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(10),
                  Card(
                    color: Color(0xFFCCD6E0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusGeometry.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.ac_unit),
                          Gap(8),
                          Text(
                            'Open an abroad account to receive payments',
                            style: AppStyles.montserrat13xG,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(10),
                  Card(
                    color: Color(0xFFCCD6E0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusGeometry.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.ac_unit),
                          Gap(8),
                          Text(
                            'Save and keep my money in foreign currencies',
                            style: AppStyles.montserrat13xG,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(10),
                  Card(
                    color: Color(0xFFCCD6E0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusGeometry.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.ac_unit),
                          Gap(8),
                          Text(
                            'Send money abroad',
                            style: AppStyles.montserrat13xG,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Gap(10),
                  Card(
                    color: Color(0xFFCCD6E0),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadiusGeometry.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(Icons.ac_unit),
                          Gap(8),
                          Text(
                            'Currencies-based investment',
                            style: AppStyles.montserrat13xG,
                          ),
                        ],
                      ),
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
