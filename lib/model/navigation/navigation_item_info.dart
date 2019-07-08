import 'package:flutter/material.dart';

///
/// 首页底部导航按钮信息
class BottomNavigationItemInfo {
  // 标记
  final int identifier;
  // 标题
  final String title;

  // 图标
  final IconData icon;

  // 未选中时的颜色
  final MaterialColor generalColor;

  // 选中时的颜色
  final MaterialColor selectedColor;

  const BottomNavigationItemInfo(this.identifier, this.title, this.icon, {this.generalColor = Colors.grey, this.selectedColor = Colors.indigo});

  @override
  String toString() {
    return "BottomNavigationItemInfo: {title: $title, icon: $icon, generalColor: $generalColor, selectedColor: $selectedColor}";
  }
}