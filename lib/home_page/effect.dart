import 'package:fish_redux/fish_redux.dart';
import 'action.dart';
import 'state.dart';

Effect<HomeState> buildEffect() {
  return combineEffects(<Object, Effect<HomeState>>{
    HomeAction.swith: _onAction,
  });
}

dynamic _onAction(Action action, Context<HomeState> ctx) {
  return false;
}
