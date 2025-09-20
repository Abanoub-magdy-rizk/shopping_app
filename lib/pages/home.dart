import 'package:flutter/material.dart';
import '../l10n/app_localizations.dart'; // هذا سيتم إنشاؤه تلقائيًا بعد الخطوة 4

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final List<String> featuredProducts = const [
    "https://cdn-icons-png.flaticon.com/512/2331/2331970.png",
    "https://cdn-icons-png.flaticon.com/512/2331/2331979.png",
    "https://cdn-icons-png.flaticon.com/512/2331/2331990.png",
  ];

  final List<Map<String, String>> products = const [
    {
      "title": "Headphones",
      "image": "https://cdn-icons-png.flaticon.com/512/727/727269.png",
    },
    {
      "title": "Smart Watch",
      "image": "https://cdn-icons-png.flaticon.com/512/994/994394.png",
    },
    {
      "title": "Camera",
      "image": "https://cdn-icons-png.flaticon.com/512/2920/2920057.png",
    },
    {
      "title": "Laptop",
      "image": "https://cdn-icons-png.flaticon.com/512/3132/3132084.png",
    },
  ];

  final List<Map<String, String>> hotOffers = const [
    {
      "title": "50% off Headphones",
      "image": "https://cdn-icons-png.flaticon.com/512/727/727269.png"
    },
    {
      "title": "Smart Watches Sale",
      "image": "https://cdn-icons-png.flaticon.com/512/994/994394.png"
    },
    {
      "title": "Discount on Cameras",
      "image": "https://cdn-icons-png.flaticon.com/512/2920/2920057.png"
    },
    {
      "title": "Laptop Clearance",
      "image": "https://cdn-icons-png.flaticon.com/512/3132/3132084.png"
    },
    {
      "title": "Accessories Offer",
      "image": "https://cdn-icons-png.flaticon.com/512/126/126509.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(loc.ourProducts),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Featured Products
            SizedBox(
              height: 200,
              child: PageView.builder(
                itemCount: featuredProducts.length,
                controller: PageController(viewportFraction: 0.8),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        featuredProducts[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Grid of Products
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                  childAspectRatio: 0.9,
                ),
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    elevation: 4,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          product["image"]!,
                          height: 80,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 10),
                        Text(
                          product["title"]!,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        IconButton(
                          icon: const Icon(Icons.add_shopping_cart,
                              color: Colors.orange),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  loc.itemAdded(product["title"]!),
                                ),
                                duration: const Duration(seconds: 2),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),

            // Hot Offers Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  loc.hotOffers,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: hotOffers.length,
              itemBuilder: (context, index) {
                final offer = hotOffers[index];
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                  child: Row(
                    children: [
                      Image.network(
                        offer["image"]!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.contain,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          offer["title"]!,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
