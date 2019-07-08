import 'package:fish_redux/fish_redux.dart';

class HomeState implements Cloneable<HomeState> {
  // 当前选中的 tab
  int currentIndex = 0;

  @override
  HomeState clone() {
    return HomeState();
  }
}

HomeState initState(Map<String, dynamic> args) {
  return HomeState();
}
