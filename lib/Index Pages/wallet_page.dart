import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(16),
        children: [
          buildCard(
            context,
            'Food Money',
            '\$1000',
            Icons.food_bank,
            Colors.redAccent,
          ),
          buildCard(
            context,
            'Travel Fund',
            '\$200',
            Icons.travel_explore,
            Colors.teal,
          ),
          buildCard(
            context,
            'Savings',
            '\$1500',
            Icons.savings,
            Colors.deepPurple,
          ),
          buildCard(
            context,
            'Shopping',
            '\$75',
            Icons.shopping_bag,
            Colors.orangeAccent,
          ),
          buildCard(
            context,
            'Discount',
            '25%',
            Icons.discount,
            Colors.pinkAccent,
          ),
        ],
      ),
    );
  }

  Widget buildCard(
    BuildContext context,
    String title,
    String amount,
    IconData icon,
    Color color,
  ) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      elevation: 5,
      margin: EdgeInsets.all(8),
      color: color,
      child: InkWell(
        onTap: () {
          // Handle card tap
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.8),
                color.withOpacity(1),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(height: 16),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 8),
                Text(
                  amount,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home: WalletPage(),
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 1, 29, 51),
        fontFamily: 'Roboto',
      ),
    ),
  );
}
