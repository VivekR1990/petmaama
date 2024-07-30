import 'package:flutter/material.dart';
import 'package:pet_care/presentation/map%20function/mapping.dart';

import 'package:permission_handler/permission_handler.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
int randomIndex = 0;



class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _requestLocationPermission();
  }

  Future<void> _requestLocationPermission() async {
    PermissionStatus status = await Permission.location.request();
    if (status.isGranted) {
      // Permission is granted, proceed with displaying the map
    } else if (status.isDenied || status.isPermanentlyDenied) {
      // Permission denied, handle appropriately
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationScreen()),
              );
            },
            child: const Icon(Icons.location_on_outlined),
          ),
          actions: const [Icon(Icons.shopping_bag_outlined)],
        ),
      ),
    );
  }
}