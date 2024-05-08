import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:vinxes_store/utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: VAppTheme.appTheme,
      darkTheme: VAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
