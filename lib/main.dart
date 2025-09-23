import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/views/login/login.dart';
import 'package:summer_flutter/authentication/views/login/phone.dart';
import 'package:summer_flutter/authentication/views/signup/views/country_view.dart';
import 'package:summer_flutter/lesson/counter_view.dart';
import 'package:summer_flutter/lesson/hesc.dart';
import 'package:summer_flutter/lesson/lifecycle.dart';
import 'package:summer_flutter/lesson/my_clock.dart';
import 'package:summer_flutter/lesson/provider/counter_provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/providers/cart_provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/providers/product_provider.dart';
import 'package:summer_flutter/lesson/shopping_cart/views/shop_view.dart';
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
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ShopView(),
      ),
    );
  }
}
