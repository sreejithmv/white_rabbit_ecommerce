import 'package:ecommerce/config/router.dart';
import 'package:ecommerce/src/providers/dashboard_provider.dart';
import 'package:ecommerce/src/views/dashboard/dashboard.dart';
import 'package:ecommerce/src/views/page-not-found/page-not-found.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DashboardProvider(
      child: MaterialApp(
        title: 'Base App',
        debugShowCheckedModeBanner: false,
        initialRoute: DashboardPage.routeName,
        routes: appRoutes,
        onUnknownRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext context) => PageNotFoundPage());
        },
      ),
    );
  }
}
