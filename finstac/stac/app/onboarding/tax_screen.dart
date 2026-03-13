import 'package:stac_core/stac_core.dart';

import '../widgets/primary_button.dart';

@StacScreen(screenName: "taxScreen")
StacWidget taxScreen() {
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
                data: 'Tax ID',
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
              labelText: 'ID Number',
            ),
          ),
          StacSizedBox(height: 24),
          StacText(
            data:
                'Important: Details like name, age, etc. on the tax id should match with your entered details. Failure to match will result in your application being rejected.',
            style: StacThemeData.textTheme.bodySmall.copyWith(
              color: StacColors.onSurfaceVariant,
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
