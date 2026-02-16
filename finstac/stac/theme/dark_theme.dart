import 'package:stac_core/stac_core.dart';

import 'text_theme.dart';

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
  textTheme: finstacTextTheme,
);
