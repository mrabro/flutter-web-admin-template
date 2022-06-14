import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:web_admin/constants/controllers.dart';
import 'package:web_admin/helpers/responsiveness.dart';
import 'package:web_admin/pages/overview/widgets/overview_cards_large.dart';
import 'package:web_admin/pages/overview/widgets/overview_cards_medium.dart';
import 'package:web_admin/pages/overview/widgets/overview_cards_small.dart';
// import 'package:web_admin/helpers/responsiveness.dart';
// import 'package:web_admin/constants/controllers.dart';
// import 'package:web_admin/pages/overview/widgets/available_drivers_table.dart';
// import 'package:web_admin/pages/overview/widgets/overview_cards_large.dart';
// import 'package:web_admin/pages/overview/widgets/overview_cards_medium.dart';
// import 'package:web_admin/pages/overview/widgets/overview_cards_small.dart';
// import 'package:web_admin/pages/overview/widgets/revenue_section_large.dart';
import 'package:web_admin/widgets/custom_text.dart';
// import 'package:get/get.dart';

// import 'widgets/revenue_section_small.dart';

class OverViewPage extends StatelessWidget {
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
            )),
        Expanded(
            child: ListView(
          children: [
            if (ResponsiveWidget.isLargeScreen(context) ||
                ResponsiveWidget.isMediumScreen(context))
              if (ResponsiveWidget.isCustomSize(context))
                const OverviewCardsMediumScreen()
              else
                const OverviewCardsLargeScreen()
            else
              const OverviewCardsSmallScreen(),
          ],
        ))
      ],
    ));
  }
}
// class OverviewPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           Obx(
//             () => Row(
//               children: [
//                 Container(
//                     margin: EdgeInsets.only(
//                         top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
//                     child: CustomText(
//                       text: menuController.activeItem.value,
//                       size: 24,
//                       weight: FontWeight.bold,
//                     )),
//               ],
//             ),
//           ),
//           Expanded(
//               child: ListView(
//             children: [
//               if (ResponsiveWidget.isLargeScreen(context) ||
//                   ResponsiveWidget.isMediumScreen(context))
//                 if (ResponsiveWidget.isCustomSize(context))
//                   OverviewCardsMediumScreen()
//                 else
//                   OverviewCardsLargeScreen()
//               else
//                 OverviewCardsSmallScreen(),
//               if (!ResponsiveWidget.isSmallScreen(context))
//                 RevenueSectionLarge()
//               else
//                 RevenueSectionSmall(),
//               AvailableDriversTable(),
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }
