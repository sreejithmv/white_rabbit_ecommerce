import 'package:ecommerce/config/constants.dart';
import 'package:ecommerce/src/api/api_base_helper.dart';
import 'package:ecommerce/src/models/dashboard.dart';

class DashboardRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Dashboard>> fetchDashboard() async {
    final response = await _helper.get(Constants.dashboard);
    final reponseObj =
        List<Dashboard>.from(response.map((x) => Dashboard.fromMap(x)));
    return reponseObj;
  }
}
