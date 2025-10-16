import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/core/app_styles.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() =>
      _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('Dashboard'),
                  Stack(
                    children: [
                      Icon(Icons.headset_mic_outlined),
                      Positioned(
                        top: -5,
                        right: -5,
                        child: Text(
                          'Help',
                          style: TextStyle(
                            backgroundColor: Colors.red,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.notifications_outlined,
                        ),
                      ),
                      Positioned(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                          child: Text('1'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'ID VERIFICATION',
                        style: AppStyles.montserrat12Rg
                            .copyWith(fontSize: 10.9),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Verify your ID to finish setting up your account ',
                        style: AppStyles.montserrat12Md
                            .copyWith(fontSize: 10.9),
                      ),
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                          onPressed: () {},
                          child: Text('Begin'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(10),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFFF2F2F2),
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    Card(
                      child: Row(
                        children: [
                          Image.asset('assets/us.png'),
                          RichText(
                            text: TextSpan(
                              text: 'USD - ',
                              style:
                                  AppStyles.montserrat12Md,
                              children: [
                                TextSpan(
                                  text: 'US Dollar',
                                  style: AppStyles
                                      .montserrat12Md,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          '\$0',
                          style: AppStyles.montserrat13xG
                              .copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        Icon(Icons.visibility),
                      ],
                    ),
                    Card(
                      child: Row(
                        children: [
                          Image.asset('assets/house.png'),
                          Text('Get Your US Bank Account'),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_outlined,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons
                                    .add_circle_outline_rounded,
                                color: Color(0xFF8099B2),
                                size: 30,
                              ),
                            ),
                            Text('Add'),
                          ],
                        ),
                        Column(
                          children: [
                            ImageIcon(
                              AssetImage(
                                'assets/convert.png',
                              ),
                              size: 30,
                            ),
                            Text('Convert'),
                          ],
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons
                                    .arrow_outward_outlined,
                                color: Color(0xFF8099B2),
                                size: 30,
                              ),
                            ),
                            Text('Send'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
