import 'package:flutter/material.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
int randomIndex = 1;

class ServicePage extends StatefulWidget {
  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
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
