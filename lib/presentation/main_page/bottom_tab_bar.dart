import 'package:flutter/material.dart';

ValueNotifier<int> bottomNavigationNotifier = ValueNotifier(0);

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: bottomNavigationNotifier,
      builder: (context, newIndex, _) {
        return BottomNavigationBar(
          iconSize: 30,
          currentIndex: newIndex,
          onTap: (value) => bottomNavigationNotifier.value = value,
          backgroundColor: Colors.amber,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.pets_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.storefront_outlined), label: ''),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_4_outlined), label: ''),
          ],
        );
      },
    );
  }
}
