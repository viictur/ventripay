import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
      appBar: AppBar(
        title: Text('VentriPay Card'),
        leading: Container(
          decoration: BoxDecoration(shape: BoxShape.circle),
          child: Icon(
            Icons.arrow_circle_left,
            color: Color(0xFFE8EAED),
          ),
        ),
        actions: [
          Text(
            'Q&A',
            style: AppStyles.montserrat16Xl.copyWith(
              color: Color(0xFF003366),
              fontSize: 15.44,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
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
                    SizedBox(height: 10),
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
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                  ),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/home.png',
                              color: Color(0xFF7595B6),
                            ),
                          ),
                          Text('Dashboard'),
                        ],
                      ),
                      Gap(5),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/card.png',
                              color: Color(0xFF003366),
                            ),
                          ),
                          Text('Card'),
                        ],
                      ),
                      Gap(5),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons
                                  .favorite_border_outlined,
                              color: Color(0xFF7595B6),
                            ),
                          ),
                          Text('Frequent'),
                          Text('Transactions'),
                        ],
                      ),
                      Gap(10),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/settings.png',
                            ),
                          ),
                          Text('Settings'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
