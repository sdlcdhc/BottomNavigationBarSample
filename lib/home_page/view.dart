import 'package:fish_redux/fish_redux.dart';
import 'package:flutter/material.dart';

import 'action.dart';
import 'state.dart';
import 'package:smart_drive/model/navigation/navigation_item_info.dart';

Widget buildView(HomeState state, Dispatch dispatch, ViewService viewService) {
  return Scaffold(
    appBar: AppBar(
      title: Text('HomePage'),
      iconTheme: IconThemeData(color: Colors.red)
    ),
    body: Center(
      child: Text(bottomNavigationBarConfig[state.currentIndex].title),
    ),
    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      showUnselectedLabels: true,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      currentIndex: state.currentIndex,
      items: _bottomNavigationBarItems(state.currentIndex),
      onTap: (selectedIndex) {
        dispatch(HomeActionCreator.onSwitchAction(selectedIndex));
      },
    ),
  );
}

/// TODO: 应该是服务器下发的配置信息
/// 此处先 hard code
const bottomNavigationBarConfig = [
  const BottomNavigationItemInfo(0, "首页", Icons.home),
  const BottomNavigationItemInfo(1, "类目", Icons.category),
  const BottomNavigationItemInfo(2, "发现", Icons.code),
  const BottomNavigationItemInfo(3, "我的", Icons.account_circle)
];

List<BottomNavigationBarItem> _bottomNavigationBarItems(int currentIndex) {
  List<BottomNavigationBarItem> items = bottomNavigationBarConfig.map(
    (itemInfo) {
      MaterialColor currentColor = itemInfo.identifier == currentIndex? itemInfo.selectedColor : itemInfo.generalColor;
      return BottomNavigationBarItem(
        title: Text(itemInfo.title, style: TextStyle(color: currentColor)),
        icon: Icon(itemInfo.icon, color: currentColor)
      );
    }
  ).toList();

  return items;
}
