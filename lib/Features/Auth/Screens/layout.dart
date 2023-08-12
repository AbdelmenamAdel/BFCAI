import 'package:bfcai_fc_from_figma/Core/Utils/App_Images.dart';
import 'package:bfcai_fc_from_figma/Core/Utils/App_color.dart';
import 'package:bfcai_fc_from_figma/Features/Auth/Screens/Sign_in.dart';
import 'package:bfcai_fc_from_figma/Features/Auth/Screens/Sign_up.dart';
import 'package:flutter/material.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});
  static String id = 'LayoutScreen';

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              SizedBox(
                  height: 270,
                  width: 300,
                  child: Image.asset(AppImage.imaPath4)),
              const TabBar(
                  padding: EdgeInsets.all(15),
                  labelColor: AppColor.primaryColor,
                  unselectedLabelColor: AppColor.sign,
                  indicatorColor: AppColor.primaryColor,
                  tabs: [
                    Tab(text: 'Sign in'),
                    Tab(
                      text: 'Sign up',
                    )
                  ]),
              const Expanded(
                  child:
                      TabBarView(children: [SignInScreen(), SignUpScreen()])),
            ],
          ),
        ),
      ),
    );
  }
}
