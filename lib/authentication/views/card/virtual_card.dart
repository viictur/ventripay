import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/app_scaffold.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/my_button.dart';

class VirtualCard extends StatefulWidget {
  const VirtualCard({super.key});

  @override
  State<VirtualCard> createState() => _VirtualCardState();
}

class _VirtualCardState extends State<VirtualCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('VentriPay Card'),
      //   toolbarHeight: 30,
      //   leading: Container(
      //     decoration: BoxDecoration(
      //       color: Color(0xFFE8EAED),
      //       shape: BoxShape.circle,
      //     ),
      //     child: Icon(
      //       Icons.arrow_back,
      //       color: Color(0xFF003366),
      //     ),
      //   ),
      //   actions: [
      //     Text(
      //       'Q&A',
      //       style: AppStyles.montserrat16Xl.copyWith(
      //         color: Color(0xFF003366),
      //         fontSize: 15.44,
      //       ),
      //     ),
      //   ],
      //   actionsPadding: EdgeInsets.symmetric(
      //     horizontal: 12,
      //   ),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.center,
                  children: [
                    Text('Virtual Card'),
                    Gap(10),
                    Text('Physical Card'),
                  ],
                ),
                Gap(10),
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
                    SizedBox(height: 10),
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
                    Gap(10),
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
                    SizedBox(height: 10),
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
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    Text(
                      'Click the button to accept Terms & Conditions',
                    ),
                  ],
                ),
                MyButton(
                  height: 45,
                  title: 'GET IT NOW',
                  onPressed: () {},
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
