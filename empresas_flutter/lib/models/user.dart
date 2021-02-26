import 'package:built_value/built_value.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {
  User._();

  @BuiltValueField(wireName: 'investor_name')
  String get investorName;

  String get email;

  factory User([void Function(UserBuilder) updates]) = _$User;
}
