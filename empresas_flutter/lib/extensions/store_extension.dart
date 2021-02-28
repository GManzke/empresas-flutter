import 'package:empresas_flutter/models/error_state.dart';
import 'package:empresas_flutter/redux/actions.dart';
import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';

import '../redux/actions.dart';

extension StoreExtension on Store {
  void operationFail(
          {String minor = 'Ocorreu um erro', @required String major}) =>
      this.dispatch(UpdateErrorAction(ErrorState((b) => b
        ..minor = minor
        ..major = major)));
}
