import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:summer_flutter/authentication/views/dashboard/dashboard_view.dart';
import 'package:summer_flutter/authentication/views/login/email.dart';
import 'package:summer_flutter/authentication/views/login/verify_login.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class Phone extends StatefulWidget {
  const Phone({super.key});

  @override
  State<Phone> createState() => _PhoneState();
}

class _PhoneState extends State<Phone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
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
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            children: [
                              Icon(
                                Icons.arrow_back,
                                size: 11,
                              ),
                              Gap(6),
                              Text(
                                'Back',
                                style:
                                    GoogleFonts.montserrat(
                                      fontSize: 12,
                                      fontWeight:
                                          FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Gap(context.getWidth(0.17)),
                        Text(
                          'Enter Phone Number',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.07,
                          ),
                        ),
                        Gap(10),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(6),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Phone Number',
                      style: GoogleFonts.montserrat(
                        fontSize: 9,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/flag.png',
                                width: 12,
                                height: 12,
                              ),
                              Gap(2),
                              Text(
                                '+234',
                                style: AppStyles
                                    .montserrat12Rg,
                              ),
                              //small line divider
                              Icon(
                                Icons.keyboard_arrow_down,
                                size: 16,
                              ),
                            ],
                          ),
                        ),
                        Gap(2),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: '81 1340 1250',
                              hintStyle: AppStyles
                                  .montserrat12Rg
                                  .copyWith(
                                    color: Color(
                                      0xFF949494,
                                    ),
                                  ),
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(
                                    horizontal: 8,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Color(0xFF003366),
                      height: 1,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: (value) {},
                        ), // not good looking
                        Text(
                          'Remember Phone number',
                          style: AppStyles.montserrat12Rg
                              .copyWith(fontSize: 9),
                        ),
                      ],
                    ),
                    Gap(context.getHeight(0.6)),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          MyButton(
                            title: 'NEXT',
                            backgroundColor: Color(
                              0xFF003366,
                            ),
                            onPressed: () {},
                            style: AppStyles.montserrat16Xl
                                .copyWith(
                                  color: Colors.white,
                                ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const VerifyLogin(),
                                  ),
                                );
                              },
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  side: BorderSide.none,
                                  borderRadius:
                                      BorderRadius.circular(
                                        10,
                                      ),
                                ),
                              ),
                              child: Text(
                                'Receive code another way ',
                                style: AppStyles
                                    .montserrat16Xl,
                              ),
                            ),
                          ),
                        ],
                      ),
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
