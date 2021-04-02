import 'dart:async';

import 'package:ecommerce/src/api/api_response.dart';
import 'package:ecommerce/src/models/dashboard.dart';
import 'package:ecommerce/src/repositories/dashboard_repository.dart';

class DashboardBloc {
  DashboardRepository _dashboardRepository;

  StreamController _dashboardListController;

  StreamSink<ApiResponse<List<Dashboard>>> get dashboardListSink =>
      _dashboardListController.sink;

  Stream<ApiResponse<List<Dashboard>>> get dashboardListStream =>
      _dashboardListController.stream;

  DashboardBloc() {
    _dashboardListController =
        StreamController<ApiResponse<List<Dashboard>>>.broadcast();
    _dashboardRepository = DashboardRepository();
    fetchDashboard();
  }

  fetchDashboard() async {
    // dashboardListSink.add(ApiResponse.loading('Fetching Dashboard Items'));
    try {
      List<Dashboard> dashboard = await _dashboardRepository.fetchDashboard();
      dashboardListSink.add(ApiResponse.completed(dashboard));
    } catch (e) {
      dashboardListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _dashboardListController?.close();
  }
}
