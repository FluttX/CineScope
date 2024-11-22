import 'package:cine_scope_localization/strings.g.dart';
import 'package:cinescope/library/resources/resources.dart';
import 'package:flutter/material.dart';

class AppBottomNavigationBar extends StatefulWidget {
  const AppBottomNavigationBar({super.key, required this.controller});

  final PageController controller;

  @override
  State<AppBottomNavigationBar> createState() => AppBottomNavigationBarState();
}

class AppBottomNavigationBarState extends State<AppBottomNavigationBar> {
  var _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: AppColors.black,
      unselectedItemColor: AppColors.grey,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentPageIndex,
      onTap: (index) {
        widget.controller.jumpToPage(index);
        setState(() {
          _currentPageIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: const Icon(Icons.home),
          label: context.t.main.tabs.home,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.search),
          label: context.t.main.tabs.search,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.slow_motion_video),
          label: context.t.main.tabs.video,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.person_pin),
          label: context.t.main.tabs.profile,
        ),
      ],
    );
  }
}
