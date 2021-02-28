import 'package:empresas_flutter/features/enterprise_detail/enterprise_detail_view.dart';
import 'package:empresas_flutter/features/enterprise_list/enterprise_list_view.dart';
import 'package:empresas_flutter/features/login/login_view.dart';
import 'package:empresas_flutter/features/main/LoaderView.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const enterprise_detail = '/enterprise_detail';
  static const enterprise_list = '/enterprise_list';
  static const loader = '/loader';
  static const login = '/login';

  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginView());
      case enterprise_list:
        return MaterialPageRoute(builder: (_) => EnterpriseListView());
      case enterprise_detail:
        return MaterialPageRoute(
            builder: (_) => EnterpriseDetailView(
                  info: settings.arguments,
                ));
      default:
        return MaterialPageRoute(builder: (_) => LoaderView());
    }
  }
}
