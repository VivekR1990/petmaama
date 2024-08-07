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
                MaterialPageRoute(builder: (context) => const LocationScreen()),
              );
            },
            child: const Icon(Icons.location_on_outlined),
          ),
          actions: const [Icon(Icons.shopping_bag_outlined)],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildImageCard('assets/special_offer.jpg'),
                    _buildImageCard('assets/dog1.jpg'),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCategoryCard('Grooming'),
                    _buildCategoryCard('Medicine'),
                    _buildCategoryCard('Pet Foods'),
                  ],
                ),
                const SizedBox(height: 16.0),
                const Text(
                  'Limited Time Offers',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                _buildOfferCard('Adult Dry Dog Food', 'Pedigree - 3kg', 599),
                _buildOfferCard('Puppy Dry Dog Food', 'Drools - 3kg with Free 1.2kg', 765, quantity: 1),
                _buildOfferCard('Maxi Adult Dry Dog Food', 'Royal Canin - 4kg', 299),
                _buildOfferCard('Peanut Butter', 'Peepal Farm Products - 1kg', 839),
              ],
            ),
          ),
        ),
      
      ),
    );
  }

  Widget _buildImageCard(String imagePath) {
    return Container(
      width: 150,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildCategoryCard(String title) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(title),
      ],
    );
  }

  Widget _buildOfferCard(String title, String description, int price, {int quantity = 0}) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(description),
                const SizedBox(height: 8.0),
                Text('₹$price'),
              ],
            ),
            quantity > 0
                ? Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.remove),
                      ),
                      Text('$quantity'),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add),
                      ),
                    ],
                  )
                : ElevatedButton(
                    onPressed: () {},
                    child: const Text('Add'),
                  ),
          ],
        ),
      ),
    );
  }
}
