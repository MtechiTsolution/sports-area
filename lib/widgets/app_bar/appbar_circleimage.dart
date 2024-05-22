import 'package:flutter/material.dart';


import '../../screens/dashboard/dashboard_screen.dart';
import '../../theme/app_decoration.dart';
import '../../util/size_utils.dart';
import '../custom_image_view.dart';


// ignore: must_be_immutable
class AppbarCircleimage extends StatelessWidget {
  AppbarCircleimage({
    Key? key,
    this.imagePath,
    this.svgPath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  String? svgPath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadiusStyle.circleBorder18,
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView1(
          svgPath: svgPath,
          imagePath: imagePath,
          height: getSize(41),
          width: getSize(41),
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            getHorizontalSize(20),
          ),
        ),
      ),
    );
  }
}
