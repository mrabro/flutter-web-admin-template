import 'package:flutter/material.dart';
import 'package:web_admin/helpers/responsiveness.dart';
import 'package:web_admin/widgets/large_screen.dart';
import 'package:web_admin/widgets/small_screen.dart';
import 'package:web_admin/widgets/top_nav.dart';

class SiteLayout extends StatelessWidget {
  // const SiteLayout({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        extendBodyBehindAppBar: true,
        appBar: topNavigationBar(context, scaffoldKey),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: LargeScreen(),
          customScreen: LargeScreen(),
        ));
  }
}
