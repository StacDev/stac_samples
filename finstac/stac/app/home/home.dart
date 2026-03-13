import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: "homeScreen")
StacWidget homeScreen() {
  return StacDefaultTabController(
    length: 2,
    child: StacScaffold(
      backgroundColor: StacColors.surfaceBright,
      appBar: StacAppBar(
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: StacRow(
          mainAxisSize: StacMainAxisSize.min,
          crossAxisAlignment: StacCrossAxisAlignment.center,
          children: [
            StacContainer(
              width: 24,
              height: 24,
              child: StacImage.asset(
                'assets/logo.svg',
                fit: StacBoxFit.contain,
              ),
            ),
            StacSizedBox(width: 8),
            StacText(
              data: 'Finstac',
              style: StacThemeData.textTheme.titleSmall,
              copyWithStyle: StacCustomTextStyle(
                fontWeight: StacFontWeight.w600,
                letterSpacing: -0.19,
              ),
            ),
          ],
        ),
        actions: [
          StacGestureDetector(
            onTap: StacNavigator.pushStac('profile_screen'),
            child: StacContainer(
              width: 38,
              height: 38,
              padding: StacEdgeInsets.all(2),
              margin: StacEdgeInsets.only(right: 20),
              decoration: StacBoxDecoration(
                shape: StacBoxShape.circle,
                border: StacBorder.all(color: StacColors.outline, width: 1),
                color: StacColors.surfaceBright,
              ),
              child: StacImage.asset(
                'assets/avatar.png',
                fit: StacBoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      body: StacColumn(
        children: [
          StacSizedBox(height: 4),
          _creditCard(),
          StacSizedBox(height: 20),
          StacExpanded(child: _sheetSection()),
        ],
      ),
    ),
  );
}

StacWidget _creditCard() {
  return StacPadding(
    padding: StacEdgeInsets.symmetric(horizontal: 20),
    child: StacContainer(
      width: double.maxFinite,
      height: 196,
      clipBehavior: StacClip.antiAlias,
      decoration: StacBoxDecoration(
        gradient: StacLinearGradient(
          colors: ['#0C6B5D', '#1CA677', '#EAFABC'],
          stops: [0.11, 0.63, 1.0],
          begin: StacAlignment.bottomLeft,
          end: StacAlignment.topRight,
        ),
        borderRadius: StacBorderRadius.circular(4),
      ),
      child: StacStack(
        children: [
          StacPositioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 64,
            child: StacOpacity(
              opacity: 0.2,
              child: StacContainer(color: StacColors.white),
            ),
          ),
          StacPositioned(
            right: 0,
            top: 0,
            width: 122.5,
            height: 112,
            child: StacImage.asset('assets/lines.svg', fit: StacBoxFit.cover),
          ),
          StacPositioned.fill(
            child: StacPadding(
              padding: StacEdgeInsets.all(16),
              child: StacColumn(
                crossAxisAlignment: StacCrossAxisAlignment.start,
                children: [
                  StacText(
                    data: 'Alex Williams',
                    style: StacThemeData.textTheme.titleSmall,
                    copyWithStyle: StacCustomTextStyle(
                      fontWeight: StacFontWeight.w600,
                      letterSpacing: -0.19,
                      color: StacColors.white,
                    ),
                  ),
                  StacText(
                    data: '·· 4658',
                    style: StacThemeData.textTheme.bodyMedium,
                    copyWithStyle: StacCustomTextStyle(
                      color: StacColors.white.withOpacity(0.6),
                    ),
                  ),
                  StacSpacer(),
                  StacRow(
                    mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                    crossAxisAlignment: StacCrossAxisAlignment.end,
                    children: [
                      StacColumn(
                        crossAxisAlignment: StacCrossAxisAlignment.start,
                        children: [
                          StacText(
                            data: 'Balance',
                            style: StacThemeData.textTheme.labelSmall,
                            copyWithStyle: StacCustomTextStyle(
                              color: StacColors.white.withOpacity(0.6),
                            ),
                          ),
                          StacText(
                            data: '\$60,489',
                            style: StacThemeData.textTheme.titleSmall,
                            copyWithStyle: StacCustomTextStyle(
                              fontWeight: StacFontWeight.w600,
                              letterSpacing: -0.19,
                              color: StacColors.white,
                            ),
                            children: [
                              StacTextSpan(
                                text: '.24',
                                style: StacThemeData.textTheme.titleSmall
                                    .copyWith(
                                      color: StacColors.white.withOpacity(0.6),
                                    ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      StacImage.asset(
                        'assets/visa.png',
                        fit: StacBoxFit.contain,
                        height: 32,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
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
      children: [
        StacSizedBox(height: 19),
        _infoCard(),
        StacSizedBox(height: 16),
        StacPadding(
          padding: StacEdgeInsets.symmetric(horizontal: 20),
          child: StacTabBar(
            isScrollable: true,
            tabAlignment: StacTabAlignment.start,
            padding: StacEdgeInsets.all(0),
            indicatorColor: StacColors.secondary,
            indicatorWeight: 1,
            indicatorSize: StacTabBarIndicatorSize.label,
            indicatorPadding: StacEdgeInsets.all(0),
            labelColor: StacColors.onSurface,
            labelStyle: StacTextStyle(
              fontWeight: StacFontWeight.w600,
              letterSpacing: -0.15,
              fontSize: 15,
              height: 1.5,
              color: StacColors.onSurface,
            ),
            labelPadding: StacEdgeInsets.only(right: 24),
            unselectedLabelColor: StacColors.onSurfaceVariant,
            unselectedLabelStyle: StacCustomTextStyle(
              fontWeight: StacFontWeight.w400,
              fontSize: 15,
              height: 1.5,
              color: StacColors.onSurfaceVariant,
            ),
            tabs: [
              StacTab(text: 'Transactions'),
              StacTab(text: 'Details'),
            ],
          ),
        ),
        StacExpanded(
          child: StacTabBarView(
            children: [_transactionsTabContent(), _detailsTabContent()],
          ),
        ),
      ],
    ),
  );
}

StacWidget _infoCard() {
  return StacPadding(
    padding: StacEdgeInsets.symmetric(horizontal: 20),
    child: StacContainer(
      width: double.maxFinite,
      height: 116,
      clipBehavior: StacClip.antiAlias,
      decoration: StacBoxDecoration(
        color: StacColors.surface,
        border: StacBorder.all(color: StacColors.outline, width: 1),
        borderRadius: StacBorderRadius.circular(4),
      ),
      child: StacStack(
        children: [
          StacPositioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: 40,
            child: StacOpacity(
              opacity: 0.5,
              child: StacContainer(color: StacColors.surfaceBright),
            ),
          ),
          StacPositioned(
            right: 0,
            top: 0,
            width: 80,
            height: 76,
            child: StacImage.asset('assets/circles.svg', fit: StacBoxFit.cover),
          ),
          StacPositioned.fill(
            child: StacColumn(
              crossAxisAlignment: StacCrossAxisAlignment.start,
              children: [
                StacPadding(
                  padding: StacEdgeInsets.only(left: 15, top: 13, right: 15),
                  child: StacColumn(
                    crossAxisAlignment: StacCrossAxisAlignment.start,
                    children: [
                      StacRow(
                        crossAxisAlignment: StacCrossAxisAlignment.center,
                        children: [
                          StacContainer(
                            width: 6,
                            height: 6,
                            decoration: StacBoxDecoration(
                              shape: StacBoxShape.circle,
                              color: '#E76946',
                            ),
                          ),
                          StacSizedBox(width: 6),
                          StacText(
                            data: 'Debit Card in Transit',
                            style: StacThemeData.textTheme.bodySmall,
                            copyWithStyle: StacCustomTextStyle(
                              fontWeight: StacFontWeight.w600,
                              letterSpacing: -0.0675,
                              color: '#E76946',
                            ),
                          ),
                        ],
                      ),
                      StacSizedBox(height: 4),
                      StacText(
                        data: 'Arriving: Friday, Feb 16',
                        style: StacThemeData.textTheme.bodyLarge,
                        copyWithStyle: StacCustomTextStyle(
                          fontWeight: StacFontWeight.w600,
                          letterSpacing: -0.17,
                        ),
                      ),
                    ],
                  ),
                ),
                StacSpacer(),
                StacPadding(
                  padding: StacEdgeInsets.only(left: 15, right: 11, bottom: 10),
                  child: StacRow(
                    crossAxisAlignment: StacCrossAxisAlignment.center,
                    children: [
                      StacText(
                        data: 'View Details',
                        style: StacThemeData.textTheme.bodySmall,
                      ),
                      StacSpacer(),
                      StacIcon(
                        icon: StacIcons.chevron_right,
                        size: 16,
                        color: StacColors.onSurface,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

StacWidget _transactionsTabContent() {
  return StacSingleChildScrollView(
    child: StacColumn(
      children: [
        _transactionRow(
          icon: StacIcons.send,
          iconColor: '#3B82F6',
          title: 'Sent to Andrew Willia..',
          ref: 'AB1000001790U',
          amount: '-\$430.80',
          time: '11:30 PM',
        ),
        _transactionRow(
          icon: StacIcons.paypal,
          iconColor: '#003087',
          title: 'Paypal Transfer Rewards',
          ref: 'NU1000001710C',
          amount: '+\$2.16',
          time: '10:24 PM',
        ),
        _transactionRow(
          icon: StacIcons.park,
          iconColor: '#0056D6',
          title: 'Disney Land Entry',
          ref: 'AB1000001790U',
          amount: '-\$1280.24',
          time: 'Jan 04',
        ),
        _transactionRow(
          icon: StacIcons.account_balance,
          iconColor: '#1DA08A',
          title: 'Dec: Interest on Deposits',
          ref: 'NU1000001710C',
          amount: '+\$34.05',
          time: 'Dec 14, 2025',
        ),
        _transactionRow(
          icon: StacIcons.restaurant,
          iconColor: '#E76946',
          title: 'Popeyes: Madison Bay',
          ref: 'AB1000001790U',
          amount: '-\$58.80',
          time: 'Dec 09, 2025',
        ),
        _transactionRow(
          icon: StacIcons.paypal,
          iconColor: '#003087',
          title: 'Paypal Transfer Rewards',
          ref: 'NU1000001710C',
          amount: '+\$2.16',
          time: 'Nov 27, 2025',
        ),
      ],
    ),
  );
}

StacWidget _detailsTabContent() {
  return StacSingleChildScrollView(
    child: StacColumn(
      crossAxisAlignment: StacCrossAxisAlignment.start,
      children: [
        StacSizedBox(height: 16),
        StacPadding(
          padding: StacEdgeInsets.symmetric(horizontal: 20),
          child: StacText(
            data:
                'Important: Please don\'t share your account details with anyone. FinStac executives will never ask for your account details or password.',
            style: StacThemeData.textTheme.bodySmall,
            copyWithStyle: StacCustomTextStyle(
              color: StacColors.onSurfaceVariant,
            ),
          ),
        ),
        StacSizedBox(height: 24),
        _detailRow(label: 'Account No.', value: '100000894010'),
        _detailDivider(),
        _detailRow(label: 'Type', value: 'Savings Account'),
        _detailDivider(),
        _detailRow(label: 'Branch', value: 'Madison Bay Area'),
        _detailDivider(),
        _detailRow(label: 'Address', value: 'Plex Towers, 14th Street'),
        _detailDivider(),
        _detailRow(label: 'Branch Code', value: 'FSC0000198'),
        _detailDivider(),
        _detailRow(label: 'Remittance Code', value: 'MRC10005'),
        StacSizedBox(height: 24),
      ],
    ),
  );
}

StacWidget _detailRow({required String label, required String value}) {
  return StacContainer(
    width: double.maxFinite,
    height: 40,
    padding: StacEdgeInsets.symmetric(horizontal: 20),
    child: StacRow(
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacSizedBox(
          width: 140,
          child: StacText(
            data: label,
            style: StacThemeData.textTheme.bodyMedium,
          ),
        ),
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

StacWidget _detailDivider() {
  return StacPadding(
    padding: StacEdgeInsets.symmetric(horizontal: 20),
    child: StacDivider(height: 1, thickness: 1, color: StacColors.outline),
  );
}

StacWidget _transactionRow({
  required String icon,
  required String iconColor,
  required String title,
  required String ref,
  required String amount,
  required String time,
}) {
  return StacContainer(
    width: double.maxFinite,
    height: 64,
    padding: StacEdgeInsets.symmetric(horizontal: 20),
    child: StacRow(
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacContainer(
          width: 36,
          height: 36,
          decoration: StacBoxDecoration(
            shape: StacBoxShape.circle,
            border: StacBorder.all(color: StacColors.outline, width: 1),
          ),
          child: StacCenter(
            child: StacIcon(icon: icon, size: 18, color: iconColor),
          ),
        ),
        StacSizedBox(width: 16),
        StacExpanded(
          child: StacColumn(
            mainAxisAlignment: StacMainAxisAlignment.center,
            crossAxisAlignment: StacCrossAxisAlignment.start,
            children: [
              StacText(
                data: title,
                style: StacThemeData.textTheme.bodyMedium,
                maxLines: 1,
                overflow: StacTextOverflow.ellipsis,
              ),
              StacText(
                data: ref,
                style: StacThemeData.textTheme.labelSmall,
                copyWithStyle: StacCustomTextStyle(
                  color: StacColors.onSurfaceVariant,
                ),
              ),
            ],
          ),
        ),
        StacColumn(
          mainAxisAlignment: StacMainAxisAlignment.center,
          crossAxisAlignment: StacCrossAxisAlignment.end,
          children: [
            StacText(data: amount, style: StacThemeData.textTheme.bodyMedium),
            StacText(
              data: time,
              style: StacThemeData.textTheme.labelSmall,
              copyWithStyle: StacCustomTextStyle(
                color: StacColors.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
