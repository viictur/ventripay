import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:summer_flutter/authentication/provider/authentication_provider.dart';
import 'package:summer_flutter/authentication/service/authentication_service.dart';
import 'package:summer_flutter/authentication/service/authentication_service_impl.dart';

final locator = GetIt.instance;

Future<void> setupLocator() async {
  locator.registerLazySingleton<AuthenticationService>(
    () => AuthenticationServiceImpl(),
  );
  locator.registerLazySingleton<AuthenticationProvider>(
    () => AuthenticationProvider(),
  );
}
