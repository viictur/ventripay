import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
//read on dio from pub.dev

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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: context.getWidth(0.18)),
                    Text(
                      'Dashboard',
                      style: AppStyles.montserrat12Xl
                          .copyWith(fontSize: 19.74),
                    ),
                    Row(
                      children: [
                        Stack(
                          children: [
                            Icon(
                              Icons.headset_mic_outlined,
                            ),
                            Positioned(
                              top: -5,
                              right: -5,
                              child: Text(
                                'HELP',
                                style: TextStyle(
                                  fontSize: 8,
                                  backgroundColor: Color(
                                    0xFFFFE5C8,
                                  ),
                                  color: Color(0xFFFF0000),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Gap(10),
                        Stack(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons
                                    .notifications_outlined,
                                size: 30,
                              ),
                            ),
                            Positioned(
                              top: 14,
                              right: 15,
                              child: Container(
                                width: 7,
                                height: 7,
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Gap(context.getHeight(0.02)),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFF2A5580),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/model2.png'),
                          Gap(14),
                          Column(
                            crossAxisAlignment:
                                CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Good Morning, VentriPay',
                                style: AppStyles
                                    .montserrat16Md
                                    .copyWith(
                                      color: Colors.white,
                                      fontSize: 15.35,
                                    ),
                              ),
                              Gap(4),
                              Row(
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      text: 'Last Login ',
                                      style: AppStyles
                                          .montserrat12Rg
                                          .copyWith(
                                            color: Colors
                                                .white,
                                            fontSize: 10.96,
                                          ),
                                      children: [
                                        TextSpan(
                                          text:
                                              '10/10/2024 ',
                                          style: AppStyles
                                              .montserrat12Rg
                                              .copyWith(
                                                color: Colors
                                                    .white,
                                                fontSize:
                                                    10.96,
                                              ),
                                        ),
                                        TextSpan(
                                          text: '18:10',
                                          style: AppStyles
                                              .montserrat12Rg
                                              .copyWith(
                                                color: Colors
                                                    .white,
                                                fontSize:
                                                    10.96,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Gap(16),
                              Container(
                                width: context.getWidth(
                                  0.64,
                                ),
                                padding:
                                    EdgeInsets.symmetric(
                                      vertical: 6,
                                      horizontal: 12,
                                    ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFCCD6E0),
                                  borderRadius:
                                      BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment
                                              .spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset(
                                              'assets/shield.png',
                                            ),
                                            Gap(4),
                                            Text(
                                              'Available Balance',
                                              style: AppStyles
                                                  .montserrat12Rg
                                                  .copyWith(
                                                    fontSize:
                                                        8.7,
                                                  ),
                                            ),
                                            Gap(4),
                                            Image.asset(
                                              'assets/eye.png',
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              'Transaction History',
                                              style: AppStyles
                                                  .montserrat12Rg
                                                  .copyWith(
                                                    fontSize:
                                                        8.7,
                                                  ),
                                            ),
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_right_sharp,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/flag.png',
                                                  width: 10,
                                                  height:
                                                      10,
                                                ),
                                                Gap(4),
                                                Text(
                                                  'NGN',
                                                  style: AppStyles.montserrat12Rg.copyWith(
                                                    fontSize:
                                                        9.87,
                                                    fontWeight:
                                                        FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text('430.89 '),
                                          ],
                                        ),
                                        Gap(16),
                                        Container(
                                          width: 1,
                                          height: 20,
                                          decoration:
                                              BoxDecoration(
                                                color: Color(
                                                  0xFF707070,
                                                ),
                                              ),
                                        ),
                                        Gap(16),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment
                                                  .start,
                                          children: [
                                            Row(
                                              children: [
                                                Image.asset(
                                                  'assets/us.png',
                                                  width: 10,
                                                  height:
                                                      10,
                                                ),
                                                Gap(4),
                                                Text(
                                                  'USD',
                                                  style: AppStyles.montserrat12Rg.copyWith(
                                                    fontSize:
                                                        9.87,
                                                    fontWeight:
                                                        FontWeight.w300,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Text(' 0.00'),
                                          ],
                                        ),
                                        Gap(10),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons
                                                  .keyboard_arrow_down_sharp,
                                              color: Color(
                                                0xFF707070,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Gap(16),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                    borderRadius: BorderRadius.all(
                      Radius.circular(12),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ID VERIFICATION',
                            style: AppStyles.montserrat12Rg
                                .copyWith(fontSize: 10.9),
                          ),
                          Gap(10),
                          Text(
                            'Verify your ID to finish \nsetting up your account ',
                            style: AppStyles.montserrat12Md
                                .copyWith(fontSize: 10.9),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color(0xFF003366),
                                Color(0xFF0066CC),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            borderRadius:
                                BorderRadius.circular(12),
                          ),
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(
                                      12,
                                    ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  'Begin',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                                Icon(
                                  Icons
                                      .arrow_forward_outlined,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Gap(16),
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
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 14,
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFB5B5B5),
                          ),
                          borderRadius:
                              BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/us.png'),
                            Gap(10),
                            RichText(
                              text: TextSpan(
                                text: 'USD - ',
                                style: AppStyles
                                    .montserrat12xG
                                    .copyWith(
                                      fontSize: 11.4,
                                    ),
                                children: [
                                  TextSpan(
                                    text: 'US Dollar',
                                    style: AppStyles
                                        .montserrat12xG
                                        .copyWith(
                                          fontSize: 11.4,
                                          color: Color(
                                            0xFF707070,
                                          ),
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Gap(14),
                      Row(
                        mainAxisAlignment:
                            MainAxisAlignment.center,
                        children: [
                          Text(
                            '\$0',
                            style: AppStyles.montserrat13xG
                                .copyWith(
                                  fontWeight:
                                      FontWeight.w600,
                                  letterSpacing: 2,
                                ),
                          ),
                          Gap(10),
                          Image.asset(
                            'assets/blue_eye.png',
                          ),
                        ],
                      ),
                      Gap(14),
                      Container(
                        padding: EdgeInsets.symmetric(
                          vertical: 2,
                        ),
                        margin: EdgeInsets.symmetric(
                          horizontal: 50,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color(0xFFB5B5B5),
                          ),
                          borderRadius:
                              BorderRadius.circular(6),
                        ),
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/house.png'),
                            Gap(10),
                            Text(
                              'Get Your US Bank Account',
                              style: AppStyles
                                  .montserrat12xG
                                  .copyWith(fontSize: 11.4),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons
                                    .arrow_forward_outlined,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
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
                              Gap(16),
                              Image.asset(
                                'assets/convert.png',
                              ),
                              Gap(16),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons
                                      .arrow_outward_outlined,
                                  color: Color(0xFF8099B2),
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment.center,
                            children: [
                              Text('Add'),
                              Gap(16),
                              Text('Convert'),
                              Gap(16),
                              Text('Send'),
                            ],
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
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/quick_options/airtime.png',
                            ),
                          ),
                          Text(
                            'Airtime',
                            style: AppStyles.montserrat12xG
                                .copyWith(fontSize: 8.77),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/quick_options/betting.png',
                            ),
                          ),
                          Text(
                            'Betting',
                            style: AppStyles.montserrat12xG
                                .copyWith(fontSize: 8.77),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/quick_options/data.png',
                            ),
                          ),
                          Text(
                            'Data',
                            style: AppStyles.montserrat12xG
                                .copyWith(fontSize: 8.77),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/quick_options/loan.png',
                            ),
                          ),
                          Text(
                            'Loan',
                            style: AppStyles.montserrat12xG
                                .copyWith(fontSize: 8.77),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/quick_options/virtual.png',
                            ),
                          ),
                          Text(
                            'Virtual Cards',
                            style: AppStyles.montserrat12xG
                                .copyWith(fontSize: 8.77),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/quick_options/bill.png',
                            ),
                          ),
                          Text(
                            'Pay Bill',
                            style: AppStyles.montserrat12xG
                                .copyWith(fontSize: 8.77),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/quick_options/gift.png',
                            ),
                          ),
                          Text(
                            'Gift Cards',
                            style: AppStyles.montserrat12xG
                                .copyWith(fontSize: 8.77),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset(
                              'assets/quick_options/invoice.png',
                            ),
                          ),
                          Text(
                            'Invoice',
                            style: AppStyles.montserrat12xG
                                .copyWith(fontSize: 8.77),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                //Gap(context.getHeight(0.02)),
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
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: Color(0xFFF2F2F2),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('assets/home.png'),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/card.png'),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/fave.png'),
            label: 'Frequent',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/settings.png'),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
