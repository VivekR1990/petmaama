import 'package:flutter/material.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
int randomIndex = 2;

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.location_on_outlined),
          actions: const [Icon(Icons.shopping_bag_outlined)],
        ),
      ),
    );
  }
}
