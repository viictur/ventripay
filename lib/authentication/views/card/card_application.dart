import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/models/user_model.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/card/card_pay.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/loading_overlay_scaffold.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/core/snackbar.dart';
import 'package:summer_flutter/locator.dart';
import 'package:summer_flutter/onboarding/views/onboarding_view.dart';

class CardApplication extends StatefulWidget {
  const CardApplication({super.key});

  @override
  State<CardApplication> createState() =>
      _CardApplicationState();
}

class _CardApplicationState extends State<CardApplication> {
  final firstNameController = TextEditingController();
  final middleNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final dobController = TextEditingController();
  final genderController = TextEditingController();

  final fee = 100.00;

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        firstNameController.text = auth.user.firstName;
        middleNameController.text = auth.user.middleName;
        lastNameController.text = auth.user.lastName;
        dobController.text = auth.user.dob;
        genderController.text = auth.user.gender;

        return LoadingOverlayScaffold(
          isLoading: auth.isLoading,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 36,
              leading: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFE8EAED),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back),
                  color: Color(0xFF003366),
                ),
              ),
              title: Text('Card Application'),
            ),
            body: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Personal Information',
                      style: AppStyles.montserrat12Md
                          .copyWith(fontSize: 18),
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
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextField(
                        controller: lastNameController,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFFCFCFC),
                          contentPadding:
                              EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                          hintStyle:
                              AppStyles.montserrat14xG,
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
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextField(
                        controller: firstNameController,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFFCFCFC),
                          contentPadding:
                              EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                          hintStyle:
                              AppStyles.montserrat14xG,
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
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextField(
                        controller: middleNameController,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFFCFCFC),
                          contentPadding:
                              EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                          hintStyle:
                              AppStyles.montserrat14xG,
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
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextField(
                        controller: dobController,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFFCFCFC),
                          contentPadding:
                              EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                          hintStyle:
                              AppStyles.montserrat14xG,
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
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                      ),
                      child: TextField(
                        controller: genderController,
                        decoration: InputDecoration(
                          fillColor: Color(0xFFFCFCFC),
                          contentPadding:
                              EdgeInsets.symmetric(
                                horizontal: 10,
                              ),
                          hintStyle:
                              AppStyles.montserrat14xG,
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
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
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
                                MainAxisAlignment
                                    .spaceBetween,
                            children: [
                              Text(
                                'Wallet',
                                style: AppStyles
                                    .montserrat14xG,
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
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
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
                                MainAxisAlignment
                                    .spaceBetween,
                            children: [
                              Text(
                                'Issuance Fee',
                                style: AppStyles
                                    .montserrat14xG,
                              ),
                              Text(
                                '\$ $fee',
                                style: AppStyles
                                    .montserrat14xG,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
                            children: [
                              Text(
                                'Maintenance Fee',
                                style: AppStyles
                                    .montserrat14xG,
                              ),
                              Text(
                                'Free',
                                style: AppStyles
                                    .montserrat14xG,
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
                      onPressed: () async {
                        showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.vertical(
                                  top: Radius.circular(
                                    25.0,
                                  ),
                                ),
                          ),
                          context: context,
                          builder: (context) => CardPay(),
                        );
                        final newUser = UserModel(
                          firstName:
                              firstNameController.text,
                          lastName: lastNameController.text,
                          middleName:
                              middleNameController.text,
                          dob: dobController.text,
                          gender: genderController.text,
                        );
                        await auth.cardApply(fee, newUser).then((
                          res,
                        ) {
                          if (res.success) {
                            SnackbarHandler.showSuccessSnackbar(
                              context: context,
                              message: res.message,
                            );
                          } else {
                            SnackbarHandler.showErrorSnackbar(
                              context: context,
                              message: res.message,
                            );
                          }
                        });
                      },
                      style: AppStyles.montserrat16Xl
                          .copyWith(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
