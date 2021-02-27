import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:empresas_flutter/serializer/serializers.dart';

part 'auth_credentials.g.dart';

abstract class AuthCredentials
    implements Built<AuthCredentials, AuthCredentialsBuilder> {
  AuthCredentials._();

  String get accessToken;

  String get client;

  String get uid;

  factory AuthCredentials([void Function(AuthCredentialsBuilder) updates]) =
      _$AuthCredentials;

  String toJson() {
    return json
        .encode(serializers.serializeWith(AuthCredentials.serializer, this));
  }

  static AuthCredentials fromJson(String jsonString) {
    return serializers.deserializeWith(
        AuthCredentials.serializer, json.decode(jsonString));
  }

  static Serializer<AuthCredentials> get serializer =>
      _$authCredentialsSerializer;
}
