import 'package:flutter/material.dart';



// ignore: must_be_immutable
class AppbarButton extends StatelessWidget {
  AppbarButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      // child: Padding(
      //   padding: margin ?? EdgeInsets.zero,
      //   child: CustomElevatedButton(
      //     height: getVerticalSize(27),
      //     width: getHorizontalSize(57),
      //     text: "lbl_post".tr,
      //     buttonTextStyle: CustomTextStyles.titleSmallInterPrimaryContainer,
      //   ),
      // ),
    );
  }
}
