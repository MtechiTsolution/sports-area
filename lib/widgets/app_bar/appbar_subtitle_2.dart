import 'package:flutter/material.dart';

import '../../theme/custom_text_style.dart';

import '../../util/theme_helper.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarSubtitle2 extends StatelessWidget {
  AppbarSubtitle2({
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
          style: CustomTextStyles.titleMediumRedA700.copyWith(
            color: appTheme.redA700,
          ),
        ),
      ),
    );
  }
}
