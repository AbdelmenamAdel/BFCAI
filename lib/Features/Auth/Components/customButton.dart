// ignore_for_file: must_be_immutable

import 'package:bfcai_fc_from_figma/Core/Utils/App_color.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {super.key,
      this.onPressed,
      this.iconData,
      this.text,
      this.width,
      this.backgroundColor});
  @required
  String? text;
  IconData? iconData;
  Function()? onPressed;
  double? width = 125;
  Color? backgroundColor = AppColor.primaryColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            backgroundColor: AppColor.primaryColor),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text == null ? "" : '$text',
              style: const TextStyle(color: AppColor.white),
            ),
            Icon(
              iconData,
            )
          ],
        ),
      ),
    );
  }
}
