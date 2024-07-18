import 'package:flutter/material.dart';


ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
int randomIndex = 0;

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
          leading: const Icon(Icons.location_on_outlined),
          actions: const [Icon(Icons.shopping_bag_outlined)],
          
        ),
      ),
    );
  }

  
}
