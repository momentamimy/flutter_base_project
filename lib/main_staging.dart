import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/core/theme/constants.dart';
import 'package:flutter_base_project/injection_container.dart';
import 'package:flutter_base_project/my_app.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

Future<void> main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  InjectionContainer().init();

  await EasyLocalization.ensureInitialized();
  FlavorConfig(
    name: "STAGING",
    color: Colors.red,
    location: BannerLocation.bottomStart,
    variables: {
      "counter": 5,
      "baseUrl": "https://www.example.com",
    },
  );
  runApp(EasyLocalization(
    saveLocale: true,
    startLocale: Q.selectedLocale,
    supportedLocales: Q.supportedLanguages,
    path: 'assets/translations',
    fallbackLocale: Q.selectedLocale,
    child: const MyApp(),
  ));
}


