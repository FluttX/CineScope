import 'package:cinescope/app/features/home/home.dart';
import 'package:cinescope/app/ui/screens/main/main.dart';
import 'package:cinescope/app/ui/screens/main/profile/profile_screen.dart';
import 'package:cinescope/app/ui/screens/main/search/search_screen.dart';
import 'package:cinescope/app/ui/screens/main/video/video_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.viewModel});

  final MainScreenViewModel viewModel;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _pageController = PageController(initialPage: 0);

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          HomeScreen(viewModel: HomeScreenViewModel()),
          const SearchScreen(),
          const VideoScreen(),
          const ProfileScreen(),
        ],
      ),
      bottomNavigationBar: AppBottomNavigationBar(controller: _pageController),
    );
  }
}
