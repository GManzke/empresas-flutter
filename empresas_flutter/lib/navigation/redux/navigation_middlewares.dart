import 'package:empresas_flutter/models/app_state.dart';
import 'package:flutter/widgets.dart';
import 'package:redux/redux.dart';

import 'navigation_actions.dart';

List<Middleware<AppState>> createNavigationMiddleware(
        GlobalKey<NavigatorState> navigatorKey) =>
    [
      TypedMiddleware<AppState, NavigateReplaceAction>(
          _navigateReplaceMiddleware(navigatorKey)),
    ];

Middleware<AppState> _navigateReplaceMiddleware(
        GlobalKey<NavigatorState> navigatorKey) =>
    (Store<AppState> store, action, NextDispatcher next) =>
        navigatorKey.currentState.pushReplacementNamed(action.routeReplacement);
