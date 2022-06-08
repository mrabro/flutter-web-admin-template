import 'package:flutter/material.dart';
import 'package:web_admin/helpers/responsiveness.dart';
import 'package:web_admin/widgets/horizontal_menu_item.dart';
import 'package:web_admin/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final VoidCallback? onTap;

  const SideMenuItem({Key? key, required this.itemName, @required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VertticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
