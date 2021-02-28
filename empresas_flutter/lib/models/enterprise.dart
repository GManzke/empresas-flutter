import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:empresas_flutter/serializer/serializers.dart';

part 'enterprise.g.dart';

abstract class Enterprise implements Built<Enterprise, EnterpriseBuilder> {
  Enterprise._();

  factory Enterprise([updates(EnterpriseBuilder b)]) = _$Enterprise;

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: 'enterprise_name')
  String get enterpriseName;

  @nullable
  String get description;

  @nullable
  String get photo;

  String toJson() {
    return json.encode(serializers.serializeWith(Enterprise.serializer, this));
  }

  static Enterprise fromJson(String jsonString) {
    return serializers.deserializeWith(
        Enterprise.serializer, json.decode(jsonString));
  }

  static Serializer<Enterprise> get serializer => _$enterpriseSerializer;
}