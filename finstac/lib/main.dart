import 'package:finstac/default_stac_options.dart';
import 'package:flutter/material.dart';
import 'package:stac/stac.dart';

void main() async {
  await Stac.initialize(
    options: defaultStacOptions,
    cacheConfig: StacCacheConfig(strategy: StacCacheStrategy.optimistic),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StacApp(
      title: 'Finstac',
      theme: StacAppTheme(name: 'light_theme'),
      homeBuilder: (_) => Stac(routeName: 'get_started'),
    );
  }
}
