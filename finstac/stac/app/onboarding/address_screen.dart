import 'package:stac_core/stac_core.dart';

import '../widgets/primary_button.dart';

@StacScreen(screenName: "addressScreen")
StacWidget addressScreen() {
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
                data: 'Address',
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
              labelText: 'Address',
              labelStyle: StacThemeData.textTheme.bodyMedium,
            ),
          ),
          StacSizedBox(height: 24),
          StacTextField(
            decoration: StacInputDecoration(
              labelText: 'Locality',
              labelStyle: StacThemeData.textTheme.bodyMedium,
            ),
          ),
          StacSizedBox(height: 24),
          StacTextField(
            decoration: StacInputDecoration(
              labelText: 'State',
              labelStyle: StacThemeData.textTheme.bodyMedium,
            ),
          ),
          StacSizedBox(height: 24),
          StacRow(
            children: [
              StacExpanded(
                child: StacTextField(
                  decoration: StacInputDecoration(
                    labelText: 'Postal Code',
                    labelStyle: StacThemeData.textTheme.bodyMedium,
                  ),
                ),
              ),
              StacExpanded(
                child: StacTextField(
                  decoration: StacInputDecoration(
                    labelText: 'Country',
                    labelStyle: StacThemeData.textTheme.bodyMedium,
                  ),
                ),
              ),
            ],
          ),
          StacSpacer(),
          primaryButton(
            text: 'Next Step',
            onPressed: StacNavigator.pushStac('home_screen'),
          ),
        ],
      ),
    ),
  );
}
