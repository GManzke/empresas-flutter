import 'package:built_value/built_value.dart';

part 'error_state.g.dart';

abstract class ErrorState implements Built<ErrorState, ErrorStateBuilder> {
  ErrorState._();

  @nullable
  String get minor;

  @nullable
  String get major;

  factory ErrorState([void Function(ErrorStateBuilder) updates]) = _$ErrorState;
}
