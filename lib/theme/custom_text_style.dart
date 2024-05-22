import 'package:flutter/material.dart';

import '../util/size_utils.dart';
import '../util/theme_helper.dart';



/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: getFontSize(
          14,
        ),
      );
  static get headlineMedium => TextStyle(
    // Define your properties for headlineMedium here
  );

  static get titleSmall => TextStyle(
    // Define your properties for headlineMedium here
  );




  static get bodyLargePollerOneRed500 =>
      theme.textTheme.bodyLarge!.pollerOne.copyWith(
        color: appTheme.red500,
      );
  static get bodyLargePoppins => theme.textTheme.bodyLarge!.poppins.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePoppinsLight =>
      theme.textTheme.bodyLarge!.poppins.copyWith(
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodyLargePrimaryContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );
  static get bodyMediumPoppins => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPoppins15 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumPoppinsBlack900 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsBlack90015 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumPoppinsBlack90015_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          15,
        ),
      );
  static get bodyMediumPoppinsBlack900_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumPoppinsLight =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppinsLight_1 =>
      theme.textTheme.bodyMedium!.poppins.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodyMediumPoppins_1 => theme.textTheme.bodyMedium!.poppins;
  static get bodyMediumPoppins_2 => theme.textTheme.bodyMedium!.poppins;
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallGreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA700,
        fontSize: getFontSize(
          11,
        ),
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallInter10 => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          10,
        ),
      );
  static get bodySmallInter12 => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallInter12_1 => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallInter9 => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          9,
        ),
      );
  static get bodySmallInterBlack900 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallInterGray70001 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray70001,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallInterGray800 => theme.textTheme.bodySmall!.inter.copyWith(
        color: appTheme.gray800,
        fontSize: getFontSize(
          10,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterLight => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: getFontSize(
          10,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterPrimaryContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          12,
        ),
      );
  static get bodySmallInter_1 => theme.textTheme.bodySmall!.inter;
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          16,

        ),
        //color: Colors.pink,
        fontWeight: FontWeight.w400,
      );
  static get bodySmallLight12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w300,
      );
  static get bodySmallSecondaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: getFontSize(
          9,
        ),
      );
  // Display text style
  static get displaySmallPrimaryContainer =>
      theme.textTheme.displaySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  // Headline text style
  static get headlineLargeBlack90001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          30,
        ),
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeJostBlack90001 =>
      theme.textTheme.headlineLarge!.jost.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          30,
        ),
        fontWeight: FontWeight.w400,
      );
  static get headlineLargePoppinsBlack90001 =>
      theme.textTheme.headlineLarge!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          30,
        ),
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumInterBlack900 =>
      theme.textTheme.headlineMedium!.inter.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallBlack900 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black900,
      );
  static get headlineSmallBlack90001 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          25,
        ),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPoppinsBlack90001 =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w300,
      );
  static get headlineSmallPoppinsBlack90001Bold =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          25,
        ),
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallPoppinsPrimaryContainer =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  // Inter text style
  static get interBlack90001 => TextStyle(
        color: appTheme.black90001,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w500,
      ).inter;
  static get interGray700 => TextStyle(
        color: appTheme.gray700,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w700,
      ).inter;
  static get interRed500 => TextStyle(
        color: appTheme.red500,
        fontSize: getFontSize(
          6,
        ),
        fontWeight: FontWeight.w400,
      ).inter;
  static get interRedA700 => TextStyle(
        color: appTheme.redA700,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w700,
      ).inter;
  // Jost text style
  static get jostPrimaryContainer => TextStyle(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          70,
        ),
        fontWeight: FontWeight.w700,
      ).jost;
  // Label text style
  static get labelLargeBlack900 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
      );
  static get labelLargeBlack900Bold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
    fontSize: 14
      );
  static get labelLargeBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray100 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray40002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeKrubSecondaryContainer =>
      theme.textTheme.labelLarge!.krub.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppins => theme.textTheme.labelLarge!.poppins.copyWith(
        fontWeight: FontWeight.w700,
    fontSize: 14
      );
  static get labelLargePoppinsBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsBold_1 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        fontWeight: FontWeight.w700,
          fontSize: 18

      );
  static get labelLargePoppinsBold_2 =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsPrimaryContainer =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppinsPrimaryContainerBold =>
      theme.textTheme.labelLarge!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePoppins_1 => theme.textTheme.labelLarge!.poppins;
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimaryContainer => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargePrimaryContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSecondaryContainerBold =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeSemiBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSemiBold_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMediumBlack90001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumBlack90001SemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray800 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
    fontSize: 14
      );
  static get labelMediumGray900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray900,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumJostPrimaryContainer =>
      theme.textTheme.labelMedium!.jost.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsBlack900 =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPoppinsPrimaryContainer =>
      theme.textTheme.labelMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelMediumPrimaryContainer =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get labelSmallBold => theme.textTheme.labelSmall!.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelSmallBold8 => theme.textTheme.labelSmall!.copyWith(
        fontSize: getFontSize(
          8,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelSmallGray600 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray600,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelSmallGray80001 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w500,
      );
  static get labelSmallInter => theme.textTheme.labelSmall!.inter.copyWith(
        fontSize: getFontSize(
          12,
        ),
        fontWeight: FontWeight.w700,
      );
  static get labelSmallInterMedium =>
      theme.textTheme.labelSmall!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallMedium => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallMedium_1 => theme.textTheme.labelSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelSmallYellowA700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.yellowA700,
        fontSize: getFontSize(
          8,
        ),
        fontWeight: FontWeight.w500,
      );
  // Poppins text style
  static get poppinsBlack90001 => TextStyle(
        color: appTheme.black90001,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w400,
      ).poppins;
  static get poppinsBlack90001Bold => TextStyle(
        color: appTheme.black90001,
        fontSize: getFontSize(
          10,
        ),
        fontWeight: FontWeight.w700,
      ).poppins;
  static get poppinsBlack90001Light => TextStyle(
        color: appTheme.black90001,
        fontSize: getFontSize(
          4,
        ),
        fontWeight: FontWeight.w300,
      ).poppins;
  static get poppinsBlack90001Medium => TextStyle(
        color: appTheme.black90001,
        fontSize: getFontSize(
          14,
        ),
        fontWeight: FontWeight.w500,
      ).poppins;
  static get poppinsGray80001 => TextStyle(
        color: appTheme.gray80001,
        fontSize: getFontSize(
          7,
        ),
        fontWeight: FontWeight.w500,
      ).poppins;
  // Title text style
  static get titleLargeBlack => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w900,
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack900Medium => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargePoppins => theme.textTheme.titleLarge!.poppins.copyWith(
        fontSize: getFontSize(
          22,
        ),
        fontWeight: FontWeight.w400,
      );
  static get titleLargePoppins_1 => theme.textTheme.titleLarge!.poppins;
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack9000116 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumBlack90001Bold => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumBlack90001Medium =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          17,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlack900Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBlueA200 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueA200,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: getFontSize(
          16,
        ),
      );
  static get titleMediumPoppinsBlack900 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsBlack90001 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsBlack90001Medium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack90001Medium16 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black90001,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsBlack900_1 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumPoppinsPrimaryContainer =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          16,
        ),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsPrimaryContainerBold =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumPoppinsPrimaryContainerMedium =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleMediumRedA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallBlack900SemiBold => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900SemiBold15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w600,
      );
  static get titleSmallCaveat => theme.textTheme.titleSmall!.caveat;
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInter15 => theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallInterMedium =>
      theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterMedium15 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInterPrimaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallInterPrimaryContainerSemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInterPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallInterRedA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.redA700,
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallInterSecondaryContainer =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w900,
      );
  static get titleSmallInterSecondaryContainer_1 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get titleSmallInterSemiBold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInter_1 => theme.textTheme.titleSmall!.inter;
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallPrimaryContainer => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get titleSmallPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallRedA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.redA700,
      );
  static get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmall_1 => theme.textTheme.titleSmall!;
  static get titleSmall_2 => theme.textTheme.titleSmall!;
}














extension on TextStyle {
  TextStyle get krub {
    return copyWith(
      fontFamily: 'Krub',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get jost {
    return copyWith(
      fontFamily: 'Jost',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get pollerOne {
    return copyWith(
      fontFamily: 'Poller One',
    );
  }

  TextStyle get caveat {
    return copyWith(
      fontFamily: 'Caveat',
    );
  }
}
