import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/my_button.dart';

class PhysicalCard extends StatefulWidget {
  const PhysicalCard({super.key});

  @override
  State<PhysicalCard> createState() => _PhysicalCardState();
}

class _PhysicalCardState extends State<PhysicalCard> {
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
                              'No Cost of Use and Application',
                              style: AppStyles
                                  .montserrat12Xl
                                  .copyWith(
                                    fontSize: 13.23,
                                  ),
                            ),
                            Text(
                              'The ATM withdrawal and maintenance costs are completely free',
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
                        Image.asset('assets/promo.png'),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Get 10% off Daily',
                                style: AppStyles
                                    .montserrat12Xl
                                    .copyWith(
                                      fontSize: 13.23,
                                    ),
                              ),
                              Text(
                                'You can get exciting discounts when you use your VentriPay Master Card.',
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
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: false,
                      onChanged: (value) {},
                    ),
                    RichText(
                      text: TextSpan(
                        text: 'Click the button to accept ',
                        style: AppStyles.montserrat13xG
                            .copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                        children: [
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: AppStyles.montserrat13xG
                                .copyWith(
                                  fontWeight:
                                      FontWeight.w600,
                                  color: Color(0xFF003366),
                                ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                MyButton(
                  height: 45,
                  title:
                      'CLICK HERE FOR DELIVERY TO YOUR HOME',
                  style: AppStyles.montserrat14Md.copyWith(
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  backgroundColor: Color(0xFF557799),
                ),
                Gap(11),
                MyButton(
                  height: 45,
                  title:
                      'PICK UP FROM LOCAL MERCHANTS NEAR YOU',
                  style: AppStyles.montserrat14Md,
                  onPressed: () {},
                  backgroundColor: Colors.white,
                ),
                // OutlinedButton(
                //   onPressed: () {},
                //   style: OutlinedButton.styleFrom(
                //     foregroundColor: Colors.black,
                //   ),
                //   child: Text(
                //     'PICK UP FROM LOCAL MERCHANTS NEAR YOU',
                //   ),
                // ),
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
