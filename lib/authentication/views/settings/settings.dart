import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/signup/views/signup_view.dart';
import 'package:summer_flutter/core/my_button.dart';
import 'package:summer_flutter/core/snackbar.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthenticationProvider>(
      builder: (context, auth, _) {
        return Scaffold(
          appBar: AppBar(title: Text('Settings')),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Center(
              child: MyButton(
                title: 'Log out',
                onPressed: () async {
                  await auth.signOut().then((res) {
                    if (res.success) {
                      SnackbarHandler.showSuccessSnackbar(
                        context: context,
                        message: res.message,
                      );
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ),
                        (route) => false,
                      );
                    } else {
                      SnackbarHandler.showErrorSnackbar(
                        context: context,
                        message: res.message,
                      );
                    }
                  });
                },
                backgroundColor: Colors.blue,
              ),
            ),
          ),
        );
      },
    );
  }
}
