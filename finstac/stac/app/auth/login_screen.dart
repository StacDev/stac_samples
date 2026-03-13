import 'package:stac_core/stac_core.dart';

import '../widgets/primary_button.dart';

@StacScreen(screenName: "loginScreen")
StacWidget loginScreen() {
  return StacScaffold(
    backgroundColor: StacColors.surface,
    appBar: StacAppBar(
      leading: StacIconButton(
        onPressed: StacNavigator.pop(),
        icon: StacIcon(
          weight: 0.1,
          icon: StacIcons.chevron_left,
          color: StacColors.onSurfaceVariant,
        ),
      ),
    ),
    body: StacPadding(
      padding: StacEdgeInsets.symmetric(horizontal: 20),
      child: StacColumn(
        crossAxisAlignment: StacCrossAxisAlignment.start,
        children: [
          StacRow(
            crossAxisAlignment: StacCrossAxisAlignment.end,
            children: [
              StacText(
                data: 'Sign In',
                style: StacThemeData.textTheme.titleLarge.copyWith(
                  fontWeight: StacFontWeight.w600,
                  letterSpacing: -0.24,
                ),
              ),
              StacSizedBox(width: 10),
              StacExpanded(
                child: StacDivider(
                  height: 20,
                  thickness: 1,
                  color: StacColors.onSurface,
                ),
              ),
            ],
          ),
          StacSizedBox(height: 32),
          StacTextField(decoration: StacInputDecoration(labelText: 'Email')),
          StacSizedBox(height: 24),
          StacTextField(
            decoration: StacInputDecoration(labelText: 'Password'),
            obscureText: true,
            maxLines: 1,
          ),
          StacSizedBox(height: 24),
          StacTextButton(
            onPressed: StacNavigator.pushStac('forgot_password_screen'),
            child: StacText(
              data: 'Forgot Password?',
              style: StacThemeData.textTheme.bodySmall.copyWith(
                fontWeight: StacFontWeight.w600,
                letterSpacing: -0.0675,
                color: StacColors.secondary,
              ),
            ),
          ),
          StacSpacer(),
          primaryButton(
            text: 'Proceed',
            onPressed: StacNavigator.pushStac('home_screen'),
          ),
        ],
      ),
    ),
  );
}
