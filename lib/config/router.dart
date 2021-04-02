import 'package:ecommerce/src/views/dashboard/dashboard.dart';
import 'package:ecommerce/src/views/login/login.dart';
import 'package:ecommerce/src/views/page-not-found/page-not-found.dart';

Object appRoutes = {
  '/': (context) => DashboardPage(),
  LoginPage.routeName: (context) => LoginPage(),
  DashboardPage.routeName: (context) => DashboardPage(),
  PageNotFoundPage.routeName: (context) => PageNotFoundPage()
};
