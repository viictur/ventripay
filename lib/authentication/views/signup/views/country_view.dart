import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/signup/views/signup_view.dart';
import 'package:summer_flutter/core/app_colors.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/my_button.dart';

class Country extends StatefulWidget {
  const Country({super.key});

  @override
  State<Country> createState() => _CountryState();
}

class _CountryState extends State<Country> {
  final List<String> countries = [
    'America',
    'Bolivia',
    'Canada',
    'Denmark',
    'Egypt',
  ];
  String selectedCountry = 'Egypt';
  final myController = TextEditingController();
  List<String> filterList = [];
  bool isShown = true;

  void filter() {
    final word = myController.text.toLowerCase().trim();
    setState(() {
      filterList = countries
          .where(
            (country) =>
                country.toLowerCase().contains(word),
          )
          .toList();
    });
  }

  @override
  void initState() {
    myController.addListener(filter);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        return Scaffold(
          body: SingleChildScrollView(
            child: SafeArea(
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(0xFFF8F8F8),
                    ),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start,
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
                        Text(
                          'What country do you live in?',
                          style: GoogleFonts.montserrat(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 0.07,
                          ),
                        ).onTap(() {
                          print(
                            'The container cannot be tapped',
                          );
                        }),
                        Gap(10),
                      ],
                    ),
                  ),
                  Text('Country'),
                  Container(
                    // height: context.getHeight(0.4),
                    // width: context.getWidth(0.8),
                    padding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 4,
                    ),
                    margin: EdgeInsetsGeometry.symmetric(
                      vertical: 3,
                      horizontal: 12,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFF1F0F0),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(
                        8,
                      ),
                      color: Color(0xFFFCFCFC),
                    ),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                      icon: isShown
                          ? Icon(
                              Icons
                                  .keyboard_arrow_down_rounded,
                              size: 40,
                            )
                          : Icon(
                              Icons.keyboard_arrow_up,
                              size: 40,
                            ),
                      initialValue: selectedCountry,
                      items: countries.map((item) {
                        return DropdownMenuItem(
                          value: item,
                          child: Text(item.toUpperCase()),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedCountry = value!;
                        });
                      },
                    ),
                  ),
                  Card(
                    elevation: 0.5,
                    margin: EdgeInsetsGeometry.symmetric(
                      vertical: 10,
                      horizontal: 12,
                    ),
                    child: Container(
                      // padding: EdgeInsets.symmetric(
                      //   horizontal: 10,
                      //   vertical: 4,
                      // ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF1F0F0),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: Color(0xFFFCFCFC),
                      ),
                      child: Column(
                        children: [
                          TextFormField(
                            controller: myController,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                          ),
                          if (filterList.isNotEmpty) ...[
                            Container(
                              child: ListView.builder(
                                shrinkWrap: true,
                                itemCount:
                                    filterList.length,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                      filterList[index],
                                      style: AppStyles
                                          .montserrat14xG
                                          .copyWith(
                                            letterSpacing:
                                                0.07,
                                          ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  ),
                  Gap(context.getHeight(0.56)),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.center,
                      children: [
                        MyButton(
                          title: 'Continue',
                          backgroundColor: Color(
                            0xFF003366,
                          ),
                          onPressed: () {
                            auth.user.country =
                                selectedCountry;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SignUp(),
                              ),
                            );
                          },
                          style: AppStyles.montserrat16Xl
                              .copyWith(
                                color: Colors.white,
                              ),
                        ),
                        RichText(
                          text: TextSpan(
                            text:
                                'Already have an account? ',
                            style:
                                GoogleFonts.redHatDisplay(
                                  fontSize: 14,
                                  fontWeight:
                                      FontWeight.w400,
                                  color: Colors.black,
                                ),
                            children: [
                              TextSpan(
                                text: 'Sign in here',
                                style:
                                    GoogleFonts.redHatDisplay(
                                      fontSize: 14,
                                      fontWeight:
                                          FontWeight.w500,
                                      color:
                                          AppColors.primary,
                                      decoration:
                                          TextDecoration
                                              .underline,
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
      },
    );
  }
}
