import 'package:flutter/material.dart';
import 'package:food_app/Features/cart.dart' show CartItem;

class CartItem {
  final String name;
  final String imageUrl;
  final double price;

  CartItem({
    required this.name,
    required this.imageUrl,
    required this.price,
  });
}

class CartPage extends StatefulWidget {
  final List<CartItem> cartItems;

  const CartPage({Key? key, required this.cartItems}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
        itemCount: widget.cartItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(widget.cartItems[index].imageUrl),
            title: Text(widget.cartItems[index].name),
            subtitle:
                Text('\$${widget.cartItems[index].price.toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                        '${widget.cartItems[index].name} removed from cart'),
                    duration: Duration(seconds: 1),
                  ),
                );
                setState(() {
                  widget.cartItems.removeAt(index);
                });
              },
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: widget.cartItems.length,
                  itemBuilder: (context, index) => ListTile(
                    title: Text(widget.cartItems[index].name),
                  ),
                ),
              ),
              Text(
                'Total: \$${calculateTotal(widget.cartItems).toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Order placed successfully'),
                      duration: Duration(seconds: 1),
                    ),
                  );
                },
                child: Text('Place Order'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  double calculateTotal(List<CartItem> cartItems) {
    double total = 0.0;
    for (var item in cartItems) {
      total += item.price;
    }
    return total;
  }
}

void main() {
  runApp(MaterialApp(
    home: CartPage(cartItems: []),
  ));
}
