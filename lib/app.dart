import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vinxes_store/bindings/general_bindings.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
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
      initialBinding: GeneralBindings(),
      // Show loader or circular progress indicator while authentication repository is deciding which screen to show
      home: const Scaffold(
          backgroundColor: VColors.primary,
          body: Center(child: CircularProgressIndicator(color: Colors.white))),
    );
  }
}
