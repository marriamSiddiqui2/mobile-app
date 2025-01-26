// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/addto.dart';
import 'package:provider/provider.dart';
import 'model/cart_model.dart';
import 'cart_page.dart';

class Home extends StatelessWidget {
  final String name;
  const Home({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, $name!'),
        backgroundColor: Colors.purple,
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CartPage()),
                  );
                },
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Consumer<CartModel>(
                  builder: (context, cart, child) {
                    return Container(
                      padding: const EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: const BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        cart.cartItems.length.toString(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hey, $name! What salad do you want?',
                style: const TextStyle(fontSize: 24),
              ),
              const SizedBox(height: 20),
              const Text(
                'Recommended Combos',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              _buildSaladGrid(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSaladGrid(BuildContext context) {
    final List<Map<String, dynamic>> salads = [
      {
        "name": "Berry Mango Combo",
        "price": "17.00",
        "image": "assets/images/download.jpeg",
      },
      {
        "name": "Honey Lime Combo",
        "price": "15.00",
        "image": "assets/images/download.jpeg",
      },
      {
        "name": "Quinoa Combo",
        "price": "19.00",
        "image": "assets/images/download.jpeg",
      },
      {
        "name": "Tropical Combo",
        "price": "23.00",
        "image": "assets/images/download.jpeg",
      },
      {
        "name": "Melo Combo",
        "price": "9.00",
        "image": "assets/images/download.jpeg",
      },
      {
        "name": "Strawberry Combo",
        "price": "10.00",
        "image": "assets/images/download.jpeg",
      },
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemCount: salads.length,
      itemBuilder: (context, index) {
        return _buildSaladCard(context, salads[index]);
      },
    );
  }

  Widget _buildSaladCard(BuildContext context, Map<String, dynamic> salad) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                salad['image'],
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                right: 8,
                top: 8,
                child: Icon(Icons.favorite_border),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  salad['name'],
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$${salad['price']}',
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Provider.of<CartModel>(context, listen: false)
                          .addToCart(salad);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('${salad['name']} added to cart'),
                          duration: const Duration(seconds: 1),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                    ),
                    child: const Text(
                      'Add to Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}