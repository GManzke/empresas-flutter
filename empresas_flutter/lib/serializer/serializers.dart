import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:empresas_flutter/auth/auth_credentials.dart';
import 'package:empresas_flutter/models/enterprise.dart';
import 'package:empresas_flutter/models/user_state.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthCredentials,
  Enterprise,
  UserState,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
