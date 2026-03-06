import 'package:stac_core/stac_core.dart';

import '../widgets/primary_button.dart';

@StacScreen(screenName: "get_started")
StacWidget getStarted() {
  return StacScaffold(
    body: StacStack(
      alignment: StacAlignment.center,
      fit: StacStackFit.expand,
      children: [
        StacPositioned.fill(
          child: StacImage.asset('assets/bg.png', fit: StacBoxFit.cover),
        ),
        StacPadding(
          padding: StacEdgeInsets.horizontal(20),
          child: StacColumn(
            crossAxisAlignment: StacCrossAxisAlignment.center,
            children: [
              StacSpacer(),
              StacIcon(
                icon: StacIcons.eco_outlined,
                color: StacColors.secondary,
                size: 56,
              ),
              StacSizedBox(height: 24),
              StacText(
                data: 'Finance\nMade Simple',
                style: StacThemeData.textTheme.displaySmall,
                textAlign: StacTextAlign.center,
              ),
              StacSizedBox(height: 32),
              StacText(
                data: 'Turn complex finance into simple,\neveryday decisions.',
                style: StacThemeData.textTheme.bodyLarge,
                textAlign: StacTextAlign.center,
              ),
              StacSpacer(),
              primaryButton(
                text: 'Get Started',
                onPressed: StacNavigator.pushStac('login_screen'),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
