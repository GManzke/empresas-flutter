import 'dart:convert';
import 'dart:io';

import 'package:built_value/serializer.dart';
import 'package:empresas_flutter/auth/auth_credentials.dart';
import 'package:empresas_flutter/models/user_state.dart';
import 'package:empresas_flutter/serializer/serializers.dart';
import 'package:path_provider/path_provider.dart';

class StorageManager<T> {
  File _file;
  bool _isOpen = false;
  final String tag;
  final Serializer<T> serializer;

  StorageManager(this.serializer, this.tag);

  Future _open() async {
    try {
      if (!_isOpen) {
        final dir = await getApplicationDocumentsDirectory();
        final storage = File('${dir.path}/$tag.json');

        _file = await storage.exists() ? storage : await storage.create();

        _isOpen = true;
      }
    } catch (e) {
      print(e);
    }
  }

  Future<T> load() async {
    try {
      if (!_isOpen) await _open();

      final content = await _file.readAsString();

      return content.isEmpty
          ? null
          : serializers.deserializeWith(serializer, jsonDecode(content));
    } catch (e) {
      print(e);
      return null;
    }
  }

  Future save(T data) async {
    try {
      if (!_isOpen) await _open();

      final content = serializers.serializeWith(serializer, data);

      await _file.writeAsString(jsonEncode(content));
    } catch (e) {
      print(e);
    }
  }

  Future delete() async {
    try {
      final dir = await getApplicationDocumentsDirectory();
      final file = File('${dir.path}/$tag.json');
      _isOpen = false;
      await file.delete();
    } catch (e) {
      print(e);
    }
  }
}

final authCredentialsStorage = StorageManager<AuthCredentials>(
    AuthCredentials.serializer, 'access_credentials');

final userStateStorage =
    StorageManager<UserState>(UserState.serializer, 'user_state');
