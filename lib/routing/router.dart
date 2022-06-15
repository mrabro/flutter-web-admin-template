import 'package:flutter/material.dart';
import 'package:web_admin/pages/authentication/authentication.dart';
import 'package:web_admin/pages/clients/clients.dart';
import 'package:web_admin/pages/drivers/drivers.dart';
import 'package:web_admin/pages/overview/overview.dart';
import 'package:web_admin/routing/routes.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  print(settings);
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(OverViewPage());
    case driversPageRoute:
      return _getPageRoute(DriversPage());
    case clientsPageRoute:
      return _getPageRoute(ClientsPage());
    case authenticationPageRoute:
      return _getPageRoute(AuthenticationPage());
    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}
