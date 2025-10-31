import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/app_scaffold.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/dashboard/dashboard_view.dart';
import 'package:summer_flutter/authentication/views/login/verify_login.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/extension.dart';
import 'package:summer_flutter/core/loading_overlay_scaffold.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/core/snackbar.dart';
import 'package:summer_flutter/core/validators.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final pwdController = TextEditingController();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        return LoadingOverlayScaffold(
          isLoading: auth.isLoading,
          child: Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
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
                            mainAxisAlignment:
                                MainAxisAlignment
                                    .spaceBetween,
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
                                                FontWeight
                                                    .w500,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Enter Email',
                                    style:
                                        GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight:
                                              FontWeight
                                                  .w700,
                                          letterSpacing:
                                              0.07,
                                        ),
                                  ),
                                ],
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
                            'Email Address',
                            style: GoogleFonts.montserrat(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecoration(
                              hintText:
                                  'Eg.ventripay@gmail.com',
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
                          Divider(
                            color: Color(0xFF003366),
                            height: 1,
                          ),
                          Gap(10),
                          Text(
                            'Password',
                            style: GoogleFonts.montserrat(
                              fontSize: 9,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextFormField(
                            controller: pwdController,
                            validator:
                                Validators.validatePassword(),
                            decoration: InputDecoration(
                              fillColor: Color(0xFFFCFCFC),
                              hintText: 'Password',
                              hintStyle:
                                  AppStyles.montserrat14S,
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.visibility,
                              ),
                              contentPadding:
                                  EdgeInsets.all(10),
                            ),
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
                                'Remember Email',
                                style: AppStyles
                                    .montserrat12Rg
                                    .copyWith(fontSize: 9),
                              ),
                            ],
                          ),
                          Gap(context.getHeight(0.57)),
                          Padding(
                            padding: const EdgeInsets.all(
                              12.0,
                            ),
                            child: Column(
                              children: [
                                MyButton(
                                  title: 'NEXT',
                                  backgroundColor: Color(
                                    0xFF003366,
                                  ),
                                  onPressed: () async {
                                    final email =
                                        emailController.text
                                            .trim();
                                    final pwd =
                                        pwdController.text
                                            .trim();

                                    if (email.isEmpty ||
                                        pwd.isEmpty) {
                                      SnackbarHandler.showErrorSnackbar(
                                        context: context,
                                        message:
                                            "Please enter both email and password",
                                      );
                                      return;
                                    }

                                    final res = await auth
                                        .login(email, pwd);

                                    if (res.success) {
                                      SnackbarHandler.showSuccessSnackbar(
                                        context: context,
                                        message:
                                            res.message,
                                      );
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const AppScaffold(),
                                        ),
                                      );
                                    } else {
                                      SnackbarHandler.showErrorSnackbar(
                                        context: context,
                                        message:
                                            res.message,
                                      );
                                    }

                                    // .then((
                                    //   res,
                                    // ) {
                                    //   if (res.success) {
                                    //     SnackbarHandler.showSuccessSnackbar(
                                    //       context: context,
                                    //       message:
                                    //           res.message,
                                    //     );
                                    //     Navigator.push(
                                    //       context,
                                    //       MaterialPageRoute(
                                    //         builder: (context) =>
                                    //             const AppScaffold(),
                                    //       ),
                                    //     );
                                    //   } else {
                                    //     SnackbarHandler.showErrorSnackbar(
                                    //       context: context,
                                    //       message:
                                    //           res.message,
                                    //     );
                                    //   }
                                    // });
                                  },
                                  style: AppStyles
                                      .montserrat16Xl
                                      .copyWith(
                                        color: Colors.white,
                                      ),
                                ),
                                SizedBox(
                                  width: double.infinity,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
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
          ),
        );
      },
    );
  }
}
