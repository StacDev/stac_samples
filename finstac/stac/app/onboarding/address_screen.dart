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
            ),
          ),
          StacSizedBox(height: 24),
          StacTextField(
            decoration: StacInputDecoration(
              labelText: 'Locality',
            ),
          ),
          StacSizedBox(height: 24),
          StacTextField(
            decoration: StacInputDecoration(
              labelText: 'State',
            ),
          ),
          StacSizedBox(height: 24),
          StacRow(
            spacing: 16,
            children: [
              StacExpanded(
                child: StacTextField(
                  decoration: StacInputDecoration(
                    labelText: 'Postal Code',
                  ),
                ),
              ),
              StacExpanded(
                child: StacTextField(
                  decoration: StacInputDecoration(
                    labelText: 'Country',
                  ),
                ),
              ),
            ],
          ),
          StacSpacer(),
          primaryButton(
            text: 'Next Step',
            onPressed: StacNavigator.pushStac('tax_screen'),
          ),
        ],
      ),
    ),
  );
}
