import 'package:empresas_flutter/utils/viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

abstract class BaseLayout<V extends ViewModel<S>, S> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (ctx, BoxConstraints cts) => StoreConnector<S, V>(
            builder: (ctx, V vm) => layout(ctx, vm, cts),
            converter: (store) => convertViewModel(store),
          ),
        ),
      ),
    );
  }

  V convertViewModel(Store<S> store);

  Widget layout(BuildContext ctx, V vm, BoxConstraints cts);
}
