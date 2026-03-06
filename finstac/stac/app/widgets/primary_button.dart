import 'package:stac_core/stac_core.dart';

StacWidget primaryButton({
  required String text,
  required StacAction onPressed,
}) {
  return StacPadding(
    padding: StacEdgeInsets.only(top: 20, bottom: 48),
    child: StacFilledButton(
      onPressed: onPressed,
      child: StacRow(
        children: [
          StacText(data: text),
          StacSpacer(),
          StacIcon(icon: StacIcons.arrow_forward, size: 20),
        ],
      ),
    ),
  );
}
