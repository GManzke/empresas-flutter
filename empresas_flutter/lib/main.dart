import 'package:empresas_flutter/models/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

import 'redux/reducers.dart';

void main() {
  runApp(IoasysApp());
}

class IoasysApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreProvider(
      store: Store<AppState>(appReducers,
          initialState: AppState(), middleware: []),
      child: MaterialApp(
        title: 'Ioasys',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(),
      ),
    );
  }
}
