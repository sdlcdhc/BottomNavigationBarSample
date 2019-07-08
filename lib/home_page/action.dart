import 'package:fish_redux/fish_redux.dart';

enum HomeAction { 
  swith, // 切换tab
}

class HomeActionCreator {
  /// 切换底部的tab
  static Action onSwitchAction(int selectedIndex) {
    return Action(HomeAction.swith, payload: selectedIndex);
  }
}
