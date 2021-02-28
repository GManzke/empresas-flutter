class NavigateReplaceAction {
  final String routeReplacement;

  NavigateReplaceAction(this.routeReplacement);
}

class NavigatePushAction {
  final String newRoute;
  final args;

  NavigatePushAction(this.newRoute, {this.args});
}
