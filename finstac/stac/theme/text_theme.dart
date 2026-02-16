import 'package:stac_core/stac_core.dart';

StacTextTheme get finstacTextTheme => StacTextTheme(
  // Display — 110% line, -1% letter, Semibold
  displayLarge: StacTextStyle(
    fontSize: 56,
    fontWeight: StacFontWeight.w600,
    height: 1.1,
    letterSpacing: -0.56,
  ),
  displayMedium: StacTextStyle(
    fontSize: 48,
    fontWeight: StacFontWeight.w600,
    height: 1.1,
    letterSpacing: -0.48,
  ),
  displaySmall: StacTextStyle(
    fontSize: 40,
    fontWeight: StacFontWeight.w600,
    height: 1.1,
    letterSpacing: -0.4,
  ),
  // Headline — 130% line, -1% letter, Semibold
  headlineLarge: StacTextStyle(
    fontSize: 34,
    fontWeight: StacFontWeight.w600,
    height: 1.3,
    letterSpacing: -0.34,
  ),
  headlineMedium: StacTextStyle(
    fontSize: 30,
    fontWeight: StacFontWeight.w600,
    height: 1.3,
    letterSpacing: -0.3,
  ),
  headlineSmall: StacTextStyle(
    fontSize: 27,
    fontWeight: StacFontWeight.w600,
    height: 1.3,
    letterSpacing: -0.27,
  ),
  // Title — 130% line, Regular / 0% letter (emphasised variants use Semibold; base style is Regular)
  titleLarge: StacTextStyle(
    fontSize: 24,
    fontWeight: StacFontWeight.normal,
    height: 1.3,
  ),
  titleMedium: StacTextStyle(
    fontSize: 21,
    fontWeight: StacFontWeight.normal,
    height: 1.3,
  ),
  titleSmall: StacTextStyle(
    fontSize: 19,
    fontWeight: StacFontWeight.normal,
    height: 1.3,
  ),
  // Body — 150% line
  bodyLarge: StacTextStyle(
    fontSize: 17,
    fontWeight: StacFontWeight.normal,
    height: 1.5,
  ),
  bodyMedium: StacTextStyle(
    fontSize: 15,
    fontWeight: StacFontWeight.normal,
    height: 1.5,
  ),
  bodySmall: StacTextStyle(
    fontSize: 13.5,
    fontWeight: StacFontWeight.normal,
    height: 1.5,
  ),
  // Label — 130% line, 12px
  labelLarge: StacTextStyle(
    fontSize: 12,
    fontWeight: StacFontWeight.w600,
    height: 1.3,
  ),
  labelMedium: StacTextStyle(
    fontSize: 12,
    fontWeight: StacFontWeight.w500,
    height: 1.3,
  ),
  labelSmall: StacTextStyle(
    fontSize: 12,
    fontWeight: StacFontWeight.normal,
    height: 1.3,
  ),
);
