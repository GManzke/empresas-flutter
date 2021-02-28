import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

abstract class BaseLayout<V extends ViewModel<S>, S> extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: false,
        body: LayoutBuilder(
          builder: (ctx, BoxConstraints cts) => StoreConnector<S, V>(
            converter: (store) => convertViewModel(store),
            builder: (ctx, V vm) => layout(ctx, vm, cts),
            onInit: onInit,
          ),
        ),
      );

  Widget layout(BuildContext ctx, V vm, BoxConstraints cts);

  V convertViewModel(Store<S> store);

  void onInit(Store<S> store) {}
}
