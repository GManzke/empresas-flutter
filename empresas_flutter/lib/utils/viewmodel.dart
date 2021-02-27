import 'package:redux/redux.dart';

class ViewModel<S> {
  final Store<S> store;

  ViewModel(this.store);
}
