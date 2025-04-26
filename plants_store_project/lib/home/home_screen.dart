import 'package:flutter/material.dart';
import 'package:plants_store_project/products/products_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Title with padding and bold white text
        title: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            "Green Touch",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
          ),
        ),
        // Background image with dark overlay for better text visibility
        flexibleSpace: Stack(
          children: [
            Image(
              image: NetworkImage(
                "https://i.pinimg.com/736x/43/32/ee/4332eee48c376299858fcca765fe9255.jpg",
              ),
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            Container(color: Colors.black.withOpacity(0.4)),
          ],
        ),
      ),
      body: SafeArea(
        // Makes sure the content doesn’t go under stuff like the clock, battery
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/43/32/ee/4332eee48c376299858fcca765fe9255.jpg",
                      ),
                      height: 250,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 30),
                  // Text description beside the image
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Discover the joy of plant care and watch your home come alive with every leaf.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Text description beside the image
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Surround yourself with greenery and feel the calm nature brings into your home.",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(width: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image(
                      image: NetworkImage(
                        "https://i.pinimg.com/736x/7c/a4/29/7ca429a0e2b62ae598b3f43a74f16c5e.jpg",
                      ),
                      height: 250,
                      width: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // This button has an icon, and when pressed, it navigates to the ProductsScreen
                  ElevatedButton.icon(
                    onPressed:
                        () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProductsScreen(),
                          ),
                        ),

                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFBDCCBC),
                    ),
                    icon: Icon(Icons.shopping_basket, color: Colors.white),
                    label: Text(
                      "Order Now",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
