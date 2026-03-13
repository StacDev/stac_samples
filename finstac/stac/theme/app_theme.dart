import 'package:stac_core/stac_core.dart';

import 'text_theme.dart';

@StacThemeRef(name: "light_theme")
StacTheme get finstacLightTheme => StacTheme(
  brightness: StacBrightness.light,
  colorScheme: const StacColorScheme(
    brightness: StacBrightness.light,
    primary: '#202021',
    onPrimary: '#FFFFFF',
    secondary: '#1DA08A',
    onSecondary: '#FFFFFF',
    tertiary: '#1E56A9',
    onTertiary: '#FFFFFF',
    error: '#FD1717',
    onError: '#FFFFFF',
    surface: '#FFFFFF',
    onSurface: '#202021',
    surfaceBright: '#F6F7F8',
    onSurfaceVariant: '#99202021', // #202021 at 60% opacity
    outline: '#1F202021', // #202021 at 12% opacity
    outlineVariant: '#2E202021', // #202021 at 18% opacity
  ),
  useMaterial3: true,
  fontFamily: 'Figtree',
  textTheme: finstacTextTheme,
  filledButtonTheme: filledButtonTheme,
  textButtonTheme: textButtonTheme,
  inputDecorationTheme: StacInputDecorationTheme(
    hintStyle: StacThemeData.textTheme.bodyMedium.copyWith(
      color: StacColors.onSurfaceVariant,
    ),
    labelStyle: StacThemeData.textTheme.bodyMedium.copyWith(
      color: StacColors.onSurfaceVariant,
    ),
    floatingLabelStyle: StacThemeData.textTheme.labelSmall.copyWith(
      color: StacColors.onSurfaceVariant,
    ),
    contentPadding: StacEdgeInsets.symmetric(horizontal: 16, vertical: 14),
    border: inputBorder,
    enabledBorder: inputBorder,
    focusedBorder: inputBorder,
    errorBorder: inputBorder,
    disabledBorder: inputBorder,
    focusedErrorBorder: inputBorder,
  ),
);

@StacThemeRef(name: "dark_theme")
StacTheme get finstacDarkTheme => StacTheme(
  brightness: StacBrightness.dark,
  colorScheme: const StacColorScheme(
    brightness: StacBrightness.dark,
    primary: '#FFFFFF',
    onPrimary: '#050608',
    secondary: '#63D9C8',
    onSecondary: '#050608',
    tertiary: '#66A4FF',
    onTertiary: '#050608',
    error: '#FF6565',
    onError: '#050608',
    surface: '#050608',
    onSurface: '#FFFFFF',
    surfaceBright: '#101214',
    onSurfaceVariant: '#A6FFFFFF', // #FFFFFF at 65% opacity
    outline: '#1AFFFFFF', // #FFFFFF at 10% opacity
    outlineVariant: '#29FFFFFF', // #FFFFFF at 16% opacity
  ),
  useMaterial3: true,
  fontFamily: 'Figtree',
  textTheme: finstacTextTheme,
  filledButtonTheme: filledButtonTheme,
  textButtonTheme: textButtonTheme,
  inputDecorationTheme: StacInputDecorationTheme(
    hintStyle: StacThemeData.textTheme.bodyMedium.copyWith(
      color: StacColors.onSurfaceVariant,
    ),
    labelStyle: StacThemeData.textTheme.bodyMedium.copyWith(
      color: StacColors.onSurfaceVariant,
    ),
    floatingLabelStyle: StacThemeData.textTheme.labelSmall.copyWith(
      color: StacColors.onSurfaceVariant,
    ),
    contentPadding: StacEdgeInsets.symmetric(horizontal: 16, vertical: 14),
    border: inputBorder,
    enabledBorder: inputBorder,
    focusedBorder: inputBorder,
    errorBorder: inputBorder,
    disabledBorder: inputBorder,
    focusedErrorBorder: inputBorder,
  ),
);

final filledButtonTheme = StacButtonStyle(
  shape: StacRoundedRectangleBorder(borderRadius: StacBorderRadius.circular(2)),
  textStyle: StacThemeData.textTheme.bodyMedium.copyWith(
    fontWeight: StacFontWeight.w600,
  ),
  minimumSize: StacSize(double.maxFinite, 56),
  padding: StacEdgeInsets.only(left: 20, top: 15, right: 16, bottom: 15),
);

final textButtonTheme = StacButtonStyle(
  textStyle: StacThemeData.textTheme.bodySmall,
  padding: StacEdgeInsets.all(0),
);

final inputBorder = StacInputBorder(
  type: StacInputBorderType.outlineInputBorder,
  borderRadius: StacBorderRadius.circular(2),
  gapPadding: 4,
  width: 1,
  color: StacColors.outlineVariant,
);
