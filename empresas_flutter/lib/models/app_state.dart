import 'package:built_value/built_value.dart';
import 'package:empresas_flutter/models/operation_state.dart';
import 'package:empresas_flutter/models/user.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  AppState._();

  OperationState get operationState;

  @nullable
  User get user;

  static void _initializeBuilder(AppStateBuilder builder) =>
      builder..operationState = OperationState.OPERATION_NONE;

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;
}