import 'package:built_value/serializer.dart';
import 'package:empresas_flutter/auth/auth_credentials.dart';
import 'package:empresas_flutter/models/enterprise.dart';
import 'package:empresas_flutter/models/user_state.dart';

part 'serializers.g.dart';

@SerializersFor([
  AuthCredentials,
  Enterprise,
  UserState,
])
final Serializers serializers = _$serializers;
