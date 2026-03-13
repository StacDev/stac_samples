import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: "profileScreen")
StacWidget profileScreen() {
  return StacScaffold(
    backgroundColor: StacColors.surfaceBright,
    appBar: StacAppBar(
      leading: StacIconButton(
        onPressed: StacNavigator.pop(),
        icon: StacIcon(
          icon: StacIcons.chevron_left,
          size: 24,
          color: StacColors.onSurface,
        ),
      ),
    ),
    body: StacSingleChildScrollView(
      child: StacColumn(
        children: [_profileCard(), StacSizedBox(height: 20), _sheetSection()],
      ),
    ),
  );
}

StacWidget _profileCard() {
  return StacPadding(
    padding: StacEdgeInsets.symmetric(horizontal: 20),
    child: StacContainer(
      width: double.maxFinite,
      clipBehavior: StacClip.antiAlias,
      decoration: StacBoxDecoration(
        color: StacColors.surface,
        border: StacBorder.all(color: StacColors.outline, width: 1),
        borderRadius: StacBorderRadius.circular(4),
      ),

      child: StacColumn(
        crossAxisAlignment: StacCrossAxisAlignment.start,
        children: [
          StacSizedBox(
            height: 103,
            child: StacStack(
              children: [
                StacPositioned(
                  right: 0,
                  top: 0,
                  width: 80,
                  height: 76,
                  child: StacImage.asset(
                    'assets/circles.svg',
                    fit: StacBoxFit.cover,
                  ),
                ),
                StacPositioned(
                  left: 15,
                  top: 27,
                  child: StacText(
                    data: 'Alex Williams',
                    style: StacThemeData.textTheme.titleMedium,
                    copyWithStyle: StacCustomTextStyle(
                      fontWeight: StacFontWeight.w600,
                      letterSpacing: -0.21,
                    ),
                  ),
                ),
                StacPositioned(
                  left: 15,
                  top: 56,
                  child: StacText(
                    data: 'ID: 100006780',
                    style: StacThemeData.textTheme.bodySmall,
                    copyWithStyle: StacCustomTextStyle(
                      color: StacColors.onSurfaceVariant,
                    ),
                  ),
                ),
                StacPositioned(
                  right: 16,
                  top: 15,
                  child: StacContainer(
                    width: 72,
                    height: 72,
                    padding: StacEdgeInsets.all(2),
                    decoration: StacBoxDecoration(
                      shape: StacBoxShape.circle,
                      border: StacBorder.all(
                        color: StacColors.outline,
                        width: 1,
                      ),
                      color: StacColors.surface,
                    ),
                    child: StacImage.asset(
                      'assets/avatar.png',
                      fit: StacBoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
          StacDivider(height: 1, thickness: 1, color: StacColors.outline),
          _profileInfoRow(label: 'Email', value: 'alex.williams@gmail.com'),
          StacDivider(height: 1, thickness: 1, color: StacColors.outline),
          _profileInfoRow(label: 'Member Since', value: 'Dec, 2018'),
          StacDivider(height: 1, thickness: 1, color: StacColors.outline),
          _profileInfoRow(label: 'Reward Points', value: '✦ 7800 Points'),
          StacDivider(height: 1, thickness: 1, color: StacColors.outline),
          StacSizedBox(height: 24),
        ],
      ),
    ),
  );
}

StacWidget _profileInfoRow({required String label, required String value}) {
  return StacContainer(
    width: double.maxFinite,
    height: 40,
    padding: StacEdgeInsets.symmetric(horizontal: 16),
    child: StacRow(
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacSizedBox(
          width: 108,
          child: StacText(
            data: label,
            style: StacThemeData.textTheme.bodyMedium,
          ),
        ),
        StacSizedBox(width: 16),
        StacExpanded(
          child: StacText(
            data: value,
            style: StacThemeData.textTheme.bodyMedium,
            copyWithStyle: StacCustomTextStyle(
              fontWeight: StacFontWeight.w600,
              letterSpacing: -0.15,
            ),
          ),
        ),
      ],
    ),
  );
}

StacWidget _sheetSection() {
  return StacContainer(
    width: double.maxFinite,
    decoration: StacBoxDecoration(
      color: StacColors.surface,
      border: StacBorder(
        top: StacBorderSide(color: StacColors.outline, width: 1),
      ),
    ),
    child: StacColumn(
      crossAxisAlignment: StacCrossAxisAlignment.start,
      children: [
        _sectionHeader('Personal'),
        _menuRow(icon: StacIcons.person_outline, label: 'Personal Information'),
        _menuDivider(),
        _menuRow(icon: StacIcons.block, label: 'Spend Limits'),
        _menuDivider(),
        _menuRow(icon: StacIcons.badge_outlined, label: 'Documentations'),
        _menuDivider(),
        _sectionHeader('General'),
        _menuRow(
          icon: StacIcons.description_outlined,
          label: 'Terms & Conditions',
        ),
        _menuDivider(),
        _menuRow(icon: StacIcons.security, label: 'Privacy Policy'),
        _menuDivider(),
        _menuRow(
          icon: StacIcons.power_settings_new,
          label: 'Log out',
          labelColor: StacColors.error,
          isBold: true,
        ),
        _menuDivider(),
      ],
    ),
  );
}

StacWidget _sectionHeader(String title) {
  return StacColumn(
    crossAxisAlignment: StacCrossAxisAlignment.start,
    children: [
      StacSizedBox(height: 24),
      StacPadding(
        padding: StacEdgeInsets.symmetric(horizontal: 20),
        child: StacText(
          data: title,
          style: StacThemeData.textTheme.bodyMedium,
          copyWithStyle: StacCustomTextStyle(
            fontWeight: StacFontWeight.w600,
            letterSpacing: -0.15,
          ),
        ),
      ),
      StacSizedBox(height: 11),
      StacPadding(
        padding: StacEdgeInsets.symmetric(horizontal: 20),
        child: StacDivider(height: 1, thickness: 1, color: StacColors.outline),
      ),
    ],
  );
}

StacWidget _menuRow({
  required String icon,
  required String label,
  String? labelColor,
  bool isBold = false,
}) {
  return StacContainer(
    width: double.maxFinite,
    height: 56,
    padding: StacEdgeInsets.symmetric(horizontal: 20),
    child: StacRow(
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacIcon(
          icon: icon,
          size: 24,
          color: labelColor ?? StacColors.onSurfaceVariant,
        ),
        StacSizedBox(width: 12),
        StacExpanded(
          child: StacText(
            data: label,
            style: StacThemeData.textTheme.bodyMedium,
            copyWithStyle: StacCustomTextStyle(
              fontWeight: isBold ? StacFontWeight.w600 : StacFontWeight.w400,
              letterSpacing: isBold ? -0.15 : 0,
              color: labelColor,
            ),
          ),
        ),
        StacIcon(
          icon: StacIcons.chevron_right,
          size: 16,
          color: StacColors.onSurfaceVariant,
        ),
      ],
    ),
  );
}

StacWidget _menuDivider() {
  return StacPadding(
    padding: StacEdgeInsets.symmetric(horizontal: 20),
    child: StacDivider(height: 1, thickness: 1, color: StacColors.outline),
  );
}
