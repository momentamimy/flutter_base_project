import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_project/router/app_router.dart';
import 'package:flutter_base_project/core/theme/app_theme.dart';
import 'package:flutter_base_project/core/theme/colors.dart';
import 'package:flutter_base_project/core/helper/localization/fallback_cupertino_localisations_delegate.dart';
import 'package:flutter_flavor/flutter_flavor.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: C.primaryColor));
    return FlavorBanner(
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'project_name',
          key: ValueKey<Locale>(context.locale),
          routerConfig: appRouter,
          theme: appTheme,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            const FallbackCupertinoLocalisationsDelegate(),
            EasyLocalization.of(context)!.delegate
          ],
        ),
      ),
    );
  }
}