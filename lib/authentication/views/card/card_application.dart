import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/onboarding/views/onboarding_view.dart';

class CardApplication extends StatefulWidget {
  const CardApplication({super.key});

  @override
  State<CardApplication> createState() =>
      _CardApplicationState();
}

class _CardApplicationState extends State<CardApplication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 30,
        leading: Container(
          decoration: BoxDecoration(
            color: Color(0xFFE8EAED),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.arrow_back,
            color: Color(0xFF003366),
          ),
        ),
        title: Text('Card Application'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Personal Information',
                style: AppStyles.montserrat12Md.copyWith(
                  fontSize: 18,
                ),
              ),
              Text(
                'Last Name',
                style: AppStyles.montserrat14xG,
              ),
              Gap(10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF1F0F0),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xFFFCFCFC),
                    hintText: 'VentriPay',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    hintStyle: AppStyles.montserrat14xG,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Gap(10),
              Text(
                'First Name',
                style: AppStyles.montserrat14xG,
              ),
              Gap(10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF1F0F0),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xFFFCFCFC),
                    hintText: 'Chisom',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    hintStyle: AppStyles.montserrat14xG,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Gap(10),
              Text(
                'Middle Name',
                style: AppStyles.montserrat14xG,
              ),
              Gap(10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF1F0F0),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xFFFCFCFC),
                    hintText: 'Adebanjo',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    hintStyle: AppStyles.montserrat14xG,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Gap(10),
              Text(
                'Date of Birth',
                style: AppStyles.montserrat14xG,
              ),
              Gap(10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF1F0F0),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xFFFCFCFC),
                    hintText: '24/05/2024',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    hintStyle: AppStyles.montserrat14xG,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Gap(10),
              Text(
                'Gender',
                style: AppStyles.montserrat14xG,
              ),
              Gap(10),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF1F0F0),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Color(0xFFFCFCFC),
                    hintText: 'Male',
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    hintStyle: AppStyles.montserrat14xG,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Gap(10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF1F0F0),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Details',
                      style: AppStyles.montserrat12Md
                          .copyWith(fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Wallet',
                          style: AppStyles.montserrat14xG,
                        ),
                        Icon(Icons.check),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(context.getHeight(0.02)),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Color(0xFFF1F0F0),
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'FEE and Charges',
                      style: AppStyles.montserrat12Md
                          .copyWith(fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Issuance Fee',
                          style: AppStyles.montserrat14xG,
                        ),
                        Text(
                          '\$0.98',
                          style: AppStyles.montserrat14xG,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Maintenance Fee',
                          style: AppStyles.montserrat14xG,
                        ),
                        Text(
                          'Free',
                          style: AppStyles.montserrat14xG,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Gap(context.getHeight(0.05)),
              MyButton(
                height: 45,
                title: 'Verify and make payments',
                backgroundColor: Color(0xFF003366),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const OnboardingView(),
                    ),
                  );
                },
                style: AppStyles.montserrat16Xl.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
