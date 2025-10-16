import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:summer_flutter/authentication/views/signup/views/country_view.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/onboarding/models/onboarding_data.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() =>
      _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  var active = 'home';
  final pageController = PageController();
  final List<OnboardingData> data = [
    OnboardingData(
      title: 'WELCOME TO VENTRIPAY !',
      description:
          'Effortlessly send money across Africa and beyond, with security and speed you can trust.',
      image: 'assets/3d-cartoon-lumberjack-character 1.png',
    ),
    OnboardingData(
      title: 'Seamless Payments, Anytime, Anywhere',
      description:
          'Whether it’s paying bills, creating virtual cards, or sending money, VentriPay makes it fast and easy.',
      image:
          'assets/Wise__the_international_account___Money_without_borders-removebg-preview 2.png',
    ),
    OnboardingData(
      title: 'Your Trusted Partner in Secure Transactions',
      description:
          'Join VentriPay today and experience affordable, transparent, and reliable financial services for all your needs.',
      image: 'assets/Group 12913.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const Country(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xFFF9F9F9),
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('SKIP'),
                        Icon(Icons.arrow_forward),
                      ],
                    ),
                  ),
                ),
              ),
              //SizedBox(height: 20),
              Gap(20),
              Expanded(
                child: PageView.builder(
                  controller: pageController,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 40,
                            horizontal: 20,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFF6FBFF),
                            borderRadius:
                                BorderRadius.circular(20),
                            border: Border.all(
                              color: Color(0xFFD9E8F7),
                              width: 1,
                            ),
                          ),
                          child: Image.asset(
                            data[index].image,
                          ),
                        ),
                        Gap(16),
                        Text(
                          data[index].title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Gap(6),
                        Text(
                          data[index].description,
                          style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF003366),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    );
                  },
                ),
              ),
              //Gap(10),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                effect: ExpandingDotsEffect(
                  expansionFactor: 5,
                  dotHeight: 8,
                  dotWidth: 8,
                  activeDotColor: Color(0xFF003366),
                  dotColor: Color(0xFFCCD6E0),
                ),
              ),
              Gap(40),
              MyButton(
                style: AppStyles.montserrat16Xl.copyWith(
                  color: Color(0xFFFFFFFF),
                ),
                title: 'NEXT',
                textColor: Colors.white,
                backgroundColor: Color(0xFF003366),
                onPressed: () {
                  if (pageController.page!.toInt() <
                      data.length - 1) {
                    pageController.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const Country(),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
