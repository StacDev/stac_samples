import 'package:stac_core/stac_core.dart';

import '../widgets/primary_button.dart';

@StacScreen(screenName: "basicDetailsScreen")
StacWidget basicDetailsScreen() {
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
                data: 'Basic Details',
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
          StacTextField(decoration: StacInputDecoration(labelText: 'Name')),
          StacSizedBox(height: 24),
          StacTextField(
            decoration: StacInputDecoration(labelText: 'Nationality'),
          ),

          StacSizedBox(height: 24),
          StacRow(
            spacing: 16,
            children: [
              StacExpanded(
                child: StacTextField(
                  decoration: StacInputDecoration(labelText: 'Gender'),
                ),
              ),
              StacExpanded(
                child: StacTextField(
                  decoration: StacInputDecoration(labelText: 'Date of Birth'),
                ),
              ),
            ],
          ),
          StacSpacer(),
          primaryButton(
            text: 'Next Step',
            onPressed: StacNavigator.pushStac('address_screen'),
          ),
        ],
      ),
    ),
  );
}
