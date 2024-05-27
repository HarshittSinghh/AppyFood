import 'package:flutter/material.dart';

class ClassicHamburgerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Classic Hamburger'),
        backgroundColor: Colors.orange[900],
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('45 min',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              Text('Ingredients',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var ingredient in [
                    '300g Cattle Hack',
                    '1 Tomato',
                    '1 Cucumber',
                    '1 Onion',
                    'Ketchup',
                    '2 Burger Buns'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check, color: Colors.orange[900]),
                          SizedBox(width: 10),
                          Expanded(
                            child: Text(ingredient,
                                style: TextStyle(fontSize: 18)),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              Text('Steps',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange[900])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var step in [
                    'Form 2 patties',
                    'Fry the patties for c. 4 minutes on each side',
                    'Quickly fry the buns for c. 1 minute on each side',
                    'Brush buns with ketchup',
                    'Serve burger with tomato, cucumber and onion'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.orange[900],
                          child: Text(
                            '#${[
                                  'Form 2 patties',
                                  'Fry the patties for c. 4 minutes on each side',
                                  'Quickly fry the buns for c. 1 minute on each side',
                                  'Brush buns with ketchup',
                                  'Serve burger with tomato, cucumber and onion'
                                ].indexOf(step) + 1}',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        title: Text(step, style: TextStyle(fontSize: 18)),
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
