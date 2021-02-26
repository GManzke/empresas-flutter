import 'package:built_value/serializer.dart';
import 'package:empresas_flutter/models/enterprise.dart';
import 'package:empresas_flutter/models/user.dart';

part 'serializers.g.dart';

@SerializersFor([
  User,
  Enterprise,
])
final Serializers serializers = _$serializers;