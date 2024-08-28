import 'package:flutter/material.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);
int randomIndex = 3;

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
          actions: const [Icon(Icons.more_vert)],
        ),
      ),
    );
  }
}