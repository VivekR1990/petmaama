import 'package:flutter/material.dart';
import 'package:pet_care/bottom_tab_bar.dart';
import 'package:pet_care/home_screen.dart';
import 'package:pet_care/profile_page.dart';
import 'package:pet_care/service_page.dart';
import 'package:pet_care/store_page.dart';

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
