import 'package:flutter/material.dart';
import 'package:flutter_application_1/order.dart';

// Import a state management solution (e.g., provider)
import 'package:provider/provider.dart';

// Create a CartProvider class to manage cart items (optional)
class CartProvider extends ChangeNotifier {
  List<Item> _cartItems = [];

  List<Item> get cartItems => _cartItems;

  void addToCart(Item item) {
    _cartItems.add(item);
    notifyListeners();
  }

  void removeFromCart(Item item) {
    _cartItems.remove(item);
    notifyListeners();
  }
}

class Item {
  final String name;
  final int price;
  final int quantity;

  Item(this.name, this.price, this.quantity);
}

class Addto extends StatefulWidget {
  const Addto({super.key});

  @override
  State<Addto> createState() => _AddtoState();
}

class _AddtoState extends State<Addto> {
  int _quantity = 1;

  void _incrementQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _decrementQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  // Add item to cart using CartProvider (optional)
  void _addToCart(BuildContext context) {
    final cartProvider = Provider.of<CartProvider>(context, listen: false);
    cartProvider.addToCart(Item('Mango Combo Salad', 2200, _quantity));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: 500,
            child: Image.asset('assets/images/download.jpeg'),
          ),
          SizedBox(height: 50),
          Text(
            'Mango Combo Salad',
            style: TextStyle(fontSize: 50),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.minimize),
                onPressed: _decrementQuantity,
              ),
              SizedBox(width: 5),
              Text('$_quantity'),
              SizedBox(width: 5),
              IconButton(
                icon: Icon(Icons.add),
                onPressed: _incrementQuantity,
              ),
              SizedBox(width: 100),
              Text('Rs: 2200'),
            ],
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.favorite),
              SizedBox(width: 5),
              SizedBox(height: 50),
              SizedBox(width: 5),
              ElevatedButton(
                onPressed: () {
                  // Add to cart using CartProvider (optional)
                  _addToCart(context);

                  // Or navigate to Order page directly
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Order()),
                  );
                },
                child: Text('Add to Basket'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

















// // ignore_for_file: prefer_const_constructors

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/order.dart';

// class Addto extends StatelessWidget {
//   const Addto({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//          mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SizedBox(
//            height: 300,
//            width: 500,
//            child: Image.asset('assets/images/download.jpeg'),
//           ),
//            SizedBox(height: 50,),
//            Text('mango combo salad',
//            style: TextStyle(fontSize: 50)
//            ),
//             SizedBox(height: 50,),
//            Row(
//              mainAxisAlignment: MainAxisAlignment.center,
//             // ignore: prefer_const_literals_to_create_immutables
//             children: [
//               Icon(Icons.minimize ),
//               SizedBox(width: 5),
//               Text('1'),
//               SizedBox(width: 5),
//               Icon(Icons.add),
//               SizedBox(width: 100),
//               Text('rs:2200'),

//             ],
//            ),
//             SizedBox(height: 50,),
//            Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.favorite),
//               SizedBox(width: 5),
//               SizedBox(height: 50,),
//               SizedBox(width: 5),
//               ElevatedButton(onPressed: (){
//                 Navigator.push(context, MaterialPageRoute
//                 (builder: (context) => Order()
//                 )
//                 );
//               }
//               , 
//               child: Text('add to basket'),
//               )
//             ],
//            ),
//         ],
//       ),
//     );
//   }
// }