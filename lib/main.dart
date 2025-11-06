import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/app_scaffold.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/views/card/card_application.dart';
import 'package:summer_flutter/authentication/views/card/card_result.dart';
import 'package:summer_flutter/authentication/views/card/physical_card.dart';
import 'package:summer_flutter/authentication/views/card/virtual_card.dart';
import 'package:summer_flutter/authentication/views/dashboard/add_view.dart';
import 'package:summer_flutter/authentication/views/dashboard/dashboard_view.dart';
import 'package:summer_flutter/authentication/views/identity/scan_id.dart';
import 'package:summer_flutter/authentication/views/identity/verify_dob.dart';
import 'package:summer_flutter/authentication/views/identity/verify_id.dart';
import 'package:summer_flutter/authentication/views/login/email.dart';
import 'package:summer_flutter/authentication/views/login/login.dart';
import 'package:summer_flutter/authentication/views/login/phone.dart';
import 'package:summer_flutter/authentication/views/login/verify_login.dart';
import 'package:summer_flutter/authentication/views/settings/settings.dart';
import 'package:summer_flutter/authentication/views/signup/views/country_view.dart';
import 'package:summer_flutter/authentication/views/signup/views/splash_screen.dart';
import 'package:summer_flutter/lesson/counter_view.dart';
import 'package:summer_flutter/lesson/hesc.dart';
import 'package:summer_flutter/lesson/lifecycle.dart';
import 'package:summer_flutter/lesson/my_clock.dart';
import 'package:summer_flutter/lesson/provider/counter_provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/providers/cart_provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/providers/product_provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/views/shop_view.dart';
import 'package:summer_flutter/lesson/todo/provider/todo_provider.dart';
import 'package:summer_flutter/lesson/todo/views/todo_view.dart';
import 'package:summer_flutter/locator.dart';
import 'package:summer_flutter/ok.dart';
import 'package:summer_flutter/onboarding/views/onboarding_view.dart';
import 'package:summer_flutter/authentication/views/signup/views/password_view.dart';
import 'package:summer_flutter/authentication/views/signup/views/reason.dart';
import 'package:summer_flutter/authentication/views/signup/views/signup_view.dart';
import 'package:summer_flutter/lesson/test.dart';
import 'package:summer_flutter/authentication/views/signup/views/verify.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TodoProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthenticationProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
