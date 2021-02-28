import 'package:empresas_flutter/configuration/app_colors.dart';
import 'package:empresas_flutter/models/app_state.dart';
import 'package:empresas_flutter/navigation/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:redux/redux.dart';

import 'redux/middlewares.dart';
import 'redux/reducers.dart';

final navigatorKey = GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(IoasysApp());
}

class IoasysApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: Store<AppState>(appReducers,
          initialState: AppState(), middleware: createApplicationMiddleware()),
      child: OverlaySupport(
        child: MaterialApp(
          title: 'Ioasys',
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
            accentColor: AppColors.primary,
          ),
          onGenerateRoute: AppRoutes.generateRoute,
          initialRoute: AppRoutes.loader,
          navigatorKey: navigatorKey,
        ),
      ),
    );
  }
}
