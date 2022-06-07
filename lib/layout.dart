import 'package:flutter/material.dart';
import 'package:web_admin/helpers/responsiveness.dart';
import 'package:web_admin/widgets/large_screen.dart';
import 'package:web_admin/widgets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: LargeScreen(),
          customScreen: LargeScreen(),
        ));
  }
}