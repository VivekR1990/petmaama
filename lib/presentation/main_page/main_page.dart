import 'package:flutter/material.dart';
import 'package:pet_care/presentation/main_page/bottom_tab_bar.dart';
import 'package:pet_care/presentation/home_screen.dart';
import 'package:pet_care/presentation/profile_page.dart';
import 'package:pet_care/presentation/service_page.dart';
import 'package:pet_care/presentation/store_page.dart';

class MainPageScreen extends StatelessWidget {
  MainPageScreen({super.key});
  final List pages = [
    const HomeScreen(),
    const ServicePage(),
    const StorePage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: bottomNavigationNotifier,
          builder: (context, int index, child) {
            return pages[index];
          },
        ),
        bottomNavigationBar: const BottomNavigationWidget(),
      ),
    );
  }
}
