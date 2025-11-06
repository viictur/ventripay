import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/app_scaffold.dart';
import 'package:summer_flutter/authentication/views/card/card_application.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/core/snackbar.dart';

class VirtualCard extends StatefulWidget {
  const VirtualCard({super.key});

  @override
  State<VirtualCard> createState() => _VirtualCardState();
}

class _VirtualCardState extends State<VirtualCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/virtual.png',
                      ),
                    ),
                    Gap(10),
                    Text(
                      'VentriPay Card',
                      style: AppStyles.montserrat16Xl
                          .copyWith(fontSize: 19.85),
                    ),
                    Text(
                      'Built for your Digital',
                      style: AppStyles.montserrat16Xl
                          .copyWith(
                            fontSize: 19.85,
                            color: Color(0xFF003366),
                          ),
                    ),
                    Text(
                      'Life',
                      style: AppStyles.montserrat16Xl
                          .copyWith(
                            fontSize: 19.85,
                            color: Color(0xFF003366),
                          ),
                    ),
                  ],
                ),
                Gap(10),
                Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/card/quick.png',
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Quick Access',
                              style: AppStyles
                                  .montserrat12Xl
                                  .copyWith(
                                    fontSize: 13.23,
                                  ),
                            ),
                            Text(
                              'Apply and activate Instantly',
                              style: AppStyles
                                  .montserrat12Rg
                                  .copyWith(fontSize: 9.92),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(20),
                    Row(
                      children: [
                        Image.asset(
                          'assets/card/global.png',
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shop Globally',
                                style: AppStyles
                                    .montserrat12Xl
                                    .copyWith(
                                      fontSize: 13.23,
                                    ),
                              ),
                              Text(
                                'Utilize your VentriPay Virtual Card to make purchases online from any location Master cards are accepted',
                                style: AppStyles
                                    .montserrat12Rg
                                    .copyWith(
                                      fontSize: 9.92,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Gap(20),
                    Row(
                      children: [
                        Image.asset(
                          'assets/card/budget.png',
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Budget Effectively',
                              style: AppStyles
                                  .montserrat12Xl
                                  .copyWith(
                                    fontSize: 13.23,
                                  ),
                            ),
                            Text(
                              'Restrict your spending to the amount that is uploaded to your card',
                              style: AppStyles
                                  .montserrat12Rg
                                  .copyWith(fontSize: 9.92),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Gap(20),
                    Row(
                      children: [
                        Image.asset(
                          'assets/card/safety.png',
                        ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Safety',
                              style: AppStyles
                                  .montserrat12Xl
                                  .copyWith(
                                    fontSize: 13.23,
                                  ),
                            ),
                            Text(
                              'Not passing hands in person. No chance of loss',
                              style: AppStyles
                                  .montserrat12Rg
                                  .copyWith(fontSize: 9.92),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(15),
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        isChecked = value!;
                      },
                    ),
                    Text(
                      'Click the button to accept Terms & Conditions',
                    ),
                  ],
                ),
                Gap(10),
                MyButton(
                  height: 45,
                  title: 'GET IT NOW',
                  onPressed: () {
                    if (isChecked) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              const CardApplication(),
                        ),
                      );
                    } else {
                      SnackbarHandler.showErrorSnackbar(
                        context: context,
                        message:
                            'Pls agree to Terms & Conditions to continue',
                      );
                    }
                  },
                  backgroundColor: Color(0xFF557799),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
