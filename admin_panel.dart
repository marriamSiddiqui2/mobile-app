import 'package:flutter/material.dart';

class AdminPanel extends StatelessWidget {
  const AdminPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Panel'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome Admin!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Card(
              child: ListTile(
                leading: Icon(Icons.people),
                title: Text('Manage Users'),
                onTap: () {
                  // Add user management functionality
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.fastfood),
                title: Text('Manage Menu Items'),
                onTap: () {
                  // Add menu management functionality
                },
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('View Orders'),
                onTap: () {
                  // Add order management functionality
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
} 