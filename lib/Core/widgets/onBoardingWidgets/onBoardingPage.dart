import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Utils/App_String.dart';
import '../../Utils/App_color.dart';
import '../../constants/constants.dart';

Widget buildOnboardingPage(OnboardingScreen screen) {
  return Scaffold(
    body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            const Spacer(),
            TextButton(
              onPressed: () {},
              child: const Text(
                AppStrings.skip,
                style: TextStyle(color: AppColor.black, fontSize: 16),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        SizedBox(height: 300, width: 300, child: Image.asset(screen.imagePath)),
        const SizedBox(height: 45),
        Text(
          screen.title,
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        const SizedBox(height: 10),
        Text(
          screen.description,
          style: const TextStyle(fontSize: 17, color: AppColor.secondaryColor),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}
