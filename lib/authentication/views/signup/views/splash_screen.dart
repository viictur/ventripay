import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:summer_flutter/app_scaffold.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/locator.dart';
import 'package:summer_flutter/onboarding/views/onboarding_view.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final auth = FirebaseAuth.instance;
  final prov = locator<AuthenticationProvider>();

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5), () async {
      if (auth.currentUser != null) {
        await prov.getUser();
        print('firs name = ${prov.user.firstName}');
        print('last name = ${prov.user.lastName}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AppScaffold(),
          ),
        );
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingView(),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/splash.png')),
    );
  }
}
