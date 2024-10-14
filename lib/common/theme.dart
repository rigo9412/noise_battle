import "package:flutter/material.dart";
 
Color colorBackgroundRipple100 = Color.fromARGB(255, 156,163,246);
Color colorBackgroundRipple200 = Color.fromARGB(255, 138,147,244);
Color colorBackgroundRipple300 = Color.fromARGB(255, 120,130,242);
Color colorBackgroundRipple400 = Color.fromARGB(255, 102,114,241);
Color colorBackgroundRipple500 = Color(0xff5461ef);
class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFF2B37C9),
      surfaceTint: Color(0xff3f4bdb),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5461ef),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color.fromARGB(255, 115, 229, 255),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffc0c4ff),
      onSecondaryContainer: Color(0xff2d326b),
      tertiary: Color(0xff821591),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffad43b9),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff410002),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff1a1b23),
      onSurfaceVariant: Color(0xff454655),
      outline: Color(0xff767686),
      outlineVariant: Color(0xffc6c5d7),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3039),
      inversePrimary: Color(0xffbec2ff),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff00046a),
      primaryFixedDim: Color(0xffbec2ff),
      onPrimaryFixedVariant: Color(0xff222ec3),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff0f144d),
      secondaryFixedDim: Color(0xffbec2ff),
      onSecondaryFixedVariant: Color(0xff3c417b),
      tertiaryFixed: Color(0xffffd6fc),
      onTertiaryFixed: Color(0xff36003e),
      tertiaryFixedDim: Color(0xfffcaaff),
      onTertiaryFixedVariant: Color(0xff7b088a),
      surfaceDim: Color(0xffdbd9e5),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f2fe),
      surfaceContainer: Color(0xffefecf9),
      surfaceContainerHigh: Color(0xffe9e7f3),
      surfaceContainerHighest: Color(0xffe3e1ed),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff1d28bf),
      surfaceTint: Color(0xff3f4bdb),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff5461ef),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff383d77),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff6a70ad),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff760085),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffad43b9),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff8c0009),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffda342e),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff1a1b23),
      onSurfaceVariant: Color(0xff414251),
      outline: Color(0xff5d5e6e),
      outlineVariant: Color(0xff79798a),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3039),
      inversePrimary: Color(0xffbec2ff),
      primaryFixed: Color(0xff5864f2),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff3d49d8),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff6a70ad),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff525792),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xffb147bd),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff942ba2),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdbd9e5),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f2fe),
      surfaceContainer: Color(0xffefecf9),
      surfaceContainerHigh: Color(0xffe9e7f3),
      surfaceContainerHighest: Color(0xffe3e1ed),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00067d),
      surfaceTint: Color(0xff3f4bdb),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff1d28bf),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff161b54),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff383d77),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff41004a),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff760085),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff4e0002),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff8c0009),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfffbf8ff),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff222331),
      outline: Color(0xff414251),
      outlineVariant: Color(0xff414251),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2f3039),
      inversePrimary: Color(0xffebeaff),
      primaryFixed: Color(0xff1d28bf),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00099b),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff383d77),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff21275f),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff760085),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff52005d),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffdbd9e5),
      surfaceBright: Color(0xfffbf8ff),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff4f2fe),
      surfaceContainer: Color(0xffefecf9),
      surfaceContainerHigh: Color(0xffe9e7f3),
      surfaceContainerHighest: Color(0xffe3e1ed),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbec2ff),
      surfaceTint: Color(0xffbec2ff),
      onPrimary: Color(0xff000ba6),
      primaryContainer: Color(0xff3945d5),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xffbec2ff),
      onSecondary: Color(0xff252a63),
      secondaryContainer: Color(0xff333871),
      onSecondaryContainer: Color(0xffcacdff),
      tertiary: Color(0xfffcaaff),
      onTertiary: Color(0xff580064),
      tertiaryContainer: Color(0xff92289f),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff12131b),
      onSurface: Color(0xffe3e1ed),
      onSurfaceVariant: Color(0xffc6c5d7),
      outline: Color(0xff8f8fa0),
      outlineVariant: Color(0xff454655),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e1ed),
      inversePrimary: Color(0xff3f4bdb),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff00046a),
      primaryFixedDim: Color(0xffbec2ff),
      onPrimaryFixedVariant: Color(0xff222ec3),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff0f144d),
      secondaryFixedDim: Color(0xffbec2ff),
      onSecondaryFixedVariant: Color(0xff3c417b),
      tertiaryFixed: Color(0xffffd6fc),
      onTertiaryFixed: Color(0xff36003e),
      tertiaryFixedDim: Color(0xfffcaaff),
      onTertiaryFixedVariant: Color(0xff7b088a),
      surfaceDim: Color(0xff12131b),
      surfaceBright: Color(0xff383842),
      surfaceContainerLowest: Color(0xff0d0e16),
      surfaceContainerLow: Color(0xff1a1b23),
      surfaceContainer: Color(0xff1f1f27),
      surfaceContainerHigh: Color(0xff292932),
      surfaceContainerHighest: Color(0xff34343d),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc3c6ff),
      surfaceTint: Color(0xffbec2ff),
      onPrimary: Color(0xff00035a),
      primaryContainer: Color(0xff7a85ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffc3c6ff),
      onSecondary: Color(0xff080d48),
      secondaryContainer: Color(0xff878ccb),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffdb1ff),
      onTertiary: Color(0xff2d0034),
      tertiaryContainer: Color(0xffd265dc),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffbab1),
      onError: Color(0xff370001),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff12131b),
      onSurface: Color(0xfffdf9ff),
      onSurfaceVariant: Color(0xffcac9dc),
      outline: Color(0xffa2a1b3),
      outlineVariant: Color(0xff828293),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e1ed),
      inversePrimary: Color(0xff2430c4),
      primaryFixed: Color(0xffe0e0ff),
      onPrimaryFixed: Color(0xff00024c),
      primaryFixedDim: Color(0xffbec2ff),
      onPrimaryFixedVariant: Color(0xff0310b4),
      secondaryFixed: Color(0xffe0e0ff),
      onSecondaryFixed: Color(0xff030644),
      secondaryFixedDim: Color(0xffbec2ff),
      onSecondaryFixedVariant: Color(0xff2b3069),
      tertiaryFixed: Color(0xffffd6fc),
      onTertiaryFixed: Color(0xff25002b),
      tertiaryFixedDim: Color(0xfffcaaff),
      onTertiaryFixedVariant: Color(0xff61006e),
      surfaceDim: Color(0xff12131b),
      surfaceBright: Color(0xff383842),
      surfaceContainerLowest: Color(0xff0d0e16),
      surfaceContainerLow: Color(0xff1a1b23),
      surfaceContainer: Color(0xff1f1f27),
      surfaceContainerHigh: Color(0xff292932),
      surfaceContainerHighest: Color(0xff34343d),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xfffdf9ff),
      surfaceTint: Color(0xffbec2ff),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xffc3c6ff),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xfffdf9ff),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffc3c6ff),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xfffff9fa),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xfffdb1ff),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xfffff9f9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffbab1),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff12131b),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xfffdf9ff),
      outline: Color(0xffcac9dc),
      outlineVariant: Color(0xffcac9dc),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe3e1ed),
      inversePrimary: Color(0xff000894),
      primaryFixed: Color(0xffe5e5ff),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xffc3c6ff),
      onPrimaryFixedVariant: Color(0xff00035a),
      secondaryFixed: Color(0xffe5e5ff),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffc3c6ff),
      onSecondaryFixedVariant: Color(0xff080d48),
      tertiaryFixed: Color(0xffffdcfb),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xfffdb1ff),
      onTertiaryFixedVariant: Color(0xff2d0034),
      surfaceDim: Color(0xff12131b),
      surfaceBright: Color(0xff383842),
      surfaceContainerLowest: Color(0xff0d0e16),
      surfaceContainerLow: Color(0xff1a1b23),
      surfaceContainer: Color(0xff1f1f27),
      surfaceContainerHigh: Color(0xff292932),
      surfaceContainerHighest: Color(0xff34343d),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
     useMaterial3: true,
     brightness: colorScheme.brightness,
     colorScheme: colorScheme,
     textTheme: textTheme.apply(
       bodyColor: colorScheme.onSurface,
       displayColor: colorScheme.onSurface,
     ),
     scaffoldBackgroundColor: colorScheme.primaryContainer,
     canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
