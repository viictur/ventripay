import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/dashboard/dashboard_view.dart';
import 'package:summer_flutter/authentication/views/login/login.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/lesson/provider/counter_provider.dart';

class Reason extends StatefulWidget {
  const Reason({super.key});

  @override
  State<Reason> createState() => _ReasonState();
}

class _ReasonState extends State<Reason> {
  final List<String> reasons = [
    'Obtain a virtual card for online purchasing',
    'Manage and track my expenses',
    'Generate invoices to accept payments',
    'Open an abroad account to receive payments',
    'Save and keep my money in foreign currencies',
    'Send money abroad',
    'Currencies-based investment',
  ];

  final List<String> images = [
    'assets/reason/reason_card.png',
    'assets/reason/stat.png',
    'assets/reason/expense.png',
    'assets/reason/reason_home.png',
    'assets/reason/money.png',
    'assets/reason/rocket.png',
    'assets/reason/chart.png',
  ];

  final List<bool> isSelected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];

  List<String> finalSelection = [];

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        print(auth.user.toJson());
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
                            .copyWith(
                              color: Color(0xFF616060),
                            ),
                      ),
                    ],
                  ),
                ),
                Gap(context.getHeight(0.02)),
                Expanded(
                  flex: 15,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ListView.builder(
                      itemCount: reasons.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              isSelected[index] =
                                  !isSelected[index];
                              if (finalSelection.contains(
                                reasons[index],
                              )) {
                                finalSelection.remove(
                                  reasons[index],
                                );
                              } else {
                                finalSelection.add(
                                  reasons[index],
                                );
                              }
                            });
                          },
                          child: Card(
                            color: isSelected[index]
                                ? Color(0xFF6998C6)
                                : Color(0xFFCCD6E0),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(12),
                            ),
                            margin: const EdgeInsets.only(
                              bottom: 10,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(
                                10.0,
                              ),
                              child: Row(
                                children: [
                                  Image.asset(
                                    images[index],
                                  ),
                                  Gap(8),
                                  Expanded(
                                    child: Text(
                                      reasons[index],
                                      style: AppStyles
                                          .montserrat13xG,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                //change to scrollview
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: MyButton(
                      title: 'Submit',
                      backgroundColor: Color(0xFF003366),
                      onPressed: () {
                        auth.user.interest = finalSelection;
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const DashboardView(),
                          ),
                        );
                      },
                      style: AppStyles.montserrat16Xl
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
