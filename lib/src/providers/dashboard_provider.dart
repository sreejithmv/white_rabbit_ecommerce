import 'package:ecommerce/src/blocs/dashboard_bloc.dart';
import 'package:flutter/material.dart';

class DashboardProvider extends InheritedWidget {
  final DashboardBloc bloc;

  DashboardProvider({Key key, this.child})
      : bloc = DashboardBloc(),
        super(key: key, child: child);

  final Widget child;

  static DashboardBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<DashboardProvider>(
            aspect: DashboardProvider))
        .bloc;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw true;
  }
}
