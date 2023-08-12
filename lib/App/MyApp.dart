import 'package:bfcai_fc_from_figma/Features/Auth/Screens/homeOnboarding.dart';
import 'package:bfcai_fc_from_figma/Features/Auth/Screens/layout.dart';
import 'package:flutter/material.dart';

import '../Features/Auth/Screens/whatsapp/home_layout.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeLayout.id: (context) => const HomeLayout(),
        LayoutScreen.id: (context) => const LayoutScreen(),
      },
      home: const HomeOnBoarding(),
    );
  }
}
