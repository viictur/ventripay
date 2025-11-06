import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/core/app_styles.dart';
import 'package:summer_flutter/core/loading_overlay_scaffold.dart';
import 'package:summer_flutter/core/snackbar.dart';

class AddView extends StatefulWidget {
  const AddView({super.key});

  @override
  State<AddView> createState() => _AddViewState();
}

class _AddViewState extends State<AddView> {
  final amtController = TextEditingController();

  String selectedCurrency = 'NGN';
  final List<String> currency = ['NGN', 'USD'];

  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        return LoadingOverlayScaffold(
          isLoading: auth.isLoading,
          child: Scaffold(
            appBar: AppBar(
              toolbarHeight: 30,
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
              title: Text('Add Money'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  Center(
                    child: DropdownButton<String>(
                      value: selectedCurrency,
                      items: const [
                        DropdownMenuItem(
                          value: 'NGN',
                          child: Text('Naira (₦)'),
                        ),
                        DropdownMenuItem(
                          value: 'USD',
                          child: Text('Dollar (\$)'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(
                          () => selectedCurrency = value!,
                        );
                      },
                    ),
                  ),
                  Text(
                    'Enter amount',
                    style: GoogleFonts.montserrat(
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextFormField(
                    controller: amtController,
                    //inputFormatters: [],
                    decoration: InputDecoration(
                      hintStyle: AppStyles.montserrat12Rg
                          .copyWith(
                            color: Color(0xFF949494),
                          ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                    ),
                  ),
                  Gap(10),
                  Center(
                    child: ElevatedButton(
                      onPressed: () async {
                        try {
                          final amount = double.tryParse(
                            amtController.text,
                          );
                          final isDollar =
                              selectedCurrency == 'USD'
                              ? true
                              : false;
                          await auth
                              .deposit(amount!, isDollar)
                              .then((res) {
                                if (res.success) {
                                  SnackbarHandler.showSuccessSnackbar(
                                    context: context,
                                    message: res.message,
                                  );
                                  Navigator.pop(context);
                                } else {
                                  SnackbarHandler.showErrorSnackbar(
                                    context: context,
                                    message: res.message,
                                  );
                                }
                              });
                        } catch (e) {
                          SnackbarHandler.showErrorSnackbar(
                            context: context,
                            message: '$e',
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                      child: Text('Deposit Money'),
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
