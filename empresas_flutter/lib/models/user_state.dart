import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:empresas_flutter/serializer/serializers.dart';

part 'user_state.g.dart';

abstract class UserState implements Built<UserState, UserStateBuilder> {
  UserState._();

  @nullable
  @BuiltValueField(wireName: 'investor_name')
  String get investorName;

  @nullable
  String get email;

  factory UserState([void Function(UserStateBuilder) updates]) = _$UserState;

  String toJson() {
    return json.encode(serializers.serializeWith(UserState.serializer, this));
  }

  static UserState fromJson(String jsonString) {
    return serializers.deserializeWith(
        UserState.serializer, json.decode(jsonString));
  }

  static Serializer<UserState> get serializer => _$userStateSerializer;
}
