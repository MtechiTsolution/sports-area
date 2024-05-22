import 'package:flutter/material.dart';

import '../../theme/custom_text_style.dart';

import '../../util/theme_helper.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarSubtitle3 extends StatelessWidget {
  AppbarSubtitle3({
    Key? key,
    required this.text,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String text;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          style: CustomTextStyles.titleMediumBlack90001.copyWith(
            color: appTheme.black90001,
          ),
        ),
      ),
    );
  }
}
