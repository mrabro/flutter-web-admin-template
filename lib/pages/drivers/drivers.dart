import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:web_admin/constants/controllers.dart';
import 'package:web_admin/helpers/responsiveness.dart';
import 'package:web_admin/widgets/custom_text.dart';

class DriversPage extends StatelessWidget {
  // const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Obx(() => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                        text: menuController.activeItem.value,
                        size: 24,
                        weight: FontWeight.bold))
              ],
            ))
      ],
    ));
  }
}
