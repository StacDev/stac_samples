import 'package:stac_core/stac_core.dart';

import '../widgets/primary_button.dart';

@StacScreen(screenName: "loginScreen")
StacWidget loginScreen() {
  return StacScaffold(
    appBar: StacAppBar(
      leading: StacIconButton(
        onPressed: StacNavigator.pop(),
        icon: StacIcon(
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
                data: 'Sign in',
                style: StacThemeData.textTheme.titleLarge,
              ),
              StacSizedBox(width: 10),
              StacExpanded(
                child: StacDivider(
                  height: 20,
                  thickness: 1,
                  color: StacColors.black,
                ),
              ),
            ],
          ),
          StacSizedBox(height: 32),
          StacTextField(
            decoration: StacInputDecoration(
              labelText: 'Email',
              labelStyle: StacThemeData.textTheme.bodyMedium,
            ),
          ),
          StacSizedBox(height: 24),
          StacTextField(
            decoration: StacInputDecoration(
              labelText: 'Password',
              labelStyle: StacThemeData.textTheme.bodyMedium,
            ),
            obscureText: true,
            maxLines: 1,
          ),
          StacSizedBox(height: 4),
          StacTextButton(
            onPressed: StacNavigator.pushStac('forgot_password_screen'),
            child: StacText(data: 'Forgot password?'),
          ),
          StacSpacer(),
          primaryButton(
            text: 'Procced',
            onPressed: StacNavigator.pushStac('home_screen'),
          ),
        ],
      ),
    ),
  );
}
