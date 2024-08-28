import 'package:flutter/material.dart';
i<<<<<<< HEAD
import 'package:pet_care/design%20v2/loginpage.dart';
=======
>>>>>>> b249a3b91729a634dbaf63a9cc78171d042747e3

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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:8,),
                const Text(
                  "Grooming",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageWithLabel(context, "Bathing & Drying",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Haircut & Styling",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Nail Trimming",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                  ],
                ),

                 
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageWithLabel(context, "Ear Cleaning",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Teeth Brushing",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Flea & Tick Treatment",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                  ],
                ),

                 SizedBox(height:16,),
                const Text(
                  "Pet Food",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageWithLabel(context, "Kibble",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Canned Food",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Semi-Moist Dog Food",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                  ],
                ),

                  SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageWithLabel(context, "Dry Pet Food",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Raw Dog Food",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Wet Pet Food",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                  ],
                ),



                  SizedBox(height:16,),
                const Text(
                  "Accessories",
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    imageWithLabel(context, "Kibble",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Canned Food",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                    imageWithLabel(context, "Semi-Moist Dog Food",
                        "https://cdn.pixabay.com/photo/2016/10/10/14/46/icon-1728549_1280.jpg"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget imageWithLabel(BuildContext context, String name, String imageUrl) {
    return GestureDetector(
      onTap: () {
        // Navigate to the corresponding page based on the name
        switch (name) {
          case 'Bathing & Drying':
            
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Haircut & Styling':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Nail Trimming':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Ear Cleaning':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Teeth Brushing':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Flea & Tick Treatment':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Kibble':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Canned Food':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Semi-Moist Dog Food':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Dry Pet Food':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Raw Dog Food':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
          case 'Wet Pet Food':
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => LoginPage()));
            break;
        }
      },
      child: Container(
        padding: const EdgeInsets.all(2.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Color.fromRGBO(255,191,0,1),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              height: 50,
              width: 100, // Match the width of the image
              child: Text(
                name,
                textAlign: TextAlign.center, // Center align the text
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                maxLines: 2, // Optional: set a maximum number of lines
                overflow: TextOverflow
                    .ellipsis, // Optional: handle overflow with ellipsis
              ),
            ),
          ],
        ),
