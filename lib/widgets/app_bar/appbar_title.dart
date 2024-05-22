import 'package:flutter/material.dart';

import '../../theme/custom_text_style.dart';

import '../../util/theme_helper.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarTitle extends StatelessWidget {
  AppbarTitle({
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
          style: CustomTextStyles.titleLargePoppins.copyWith(
            color: appTheme.black90001,
          ),
        ),
      ),
    );
  }
}
