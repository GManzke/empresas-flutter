import 'package:built_value/built_value.dart';
import 'package:empresas_flutter/models/operation_state.dart';
import 'package:empresas_flutter/models/user_state.dart';

import 'error_state.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  static void _initializeBuilder(AppStateBuilder builder) =>
      builder..operationState = OperationState.OPERATION_NONE;

  @nullable
  OperationState get operationState;

  @nullable
  ErrorState get errorState;

  @nullable
  UserState get userState;
}
