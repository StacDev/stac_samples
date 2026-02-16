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
  textTheme: finstacTextTheme,
);
