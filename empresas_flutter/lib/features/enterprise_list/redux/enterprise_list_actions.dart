import 'package:built_collection/built_collection.dart';
import 'package:empresas_flutter/models/enterprise.dart';

class SearchEnterpriseAction {
  final String name;

  SearchEnterpriseAction(this.name);
}

class UpdateEnterpriseList {
  final BuiltList<Enterprise> enterpriseList;

  UpdateEnterpriseList(this.enterpriseList);
}
