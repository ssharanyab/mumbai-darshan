import 'package:get/get_navigation/src/routes/get_route.dart';

import '../pages/DashboardNew.dart';
import '../pages/ExploreNew.dart';

class RoutesClass {
  static const String dashboard = '/';
  static const String explore = '/explore';

  static String getDashboardRoute() => dashboard;
  static String getExploreRoute() => explore;

  static List<GetPage> getRoutes() {
    return [
      GetPage(name: dashboard, page: () => const DashboardNew()),
      GetPage(name: explore, page: () => const ExploreNew()),
    ];
  }
}
