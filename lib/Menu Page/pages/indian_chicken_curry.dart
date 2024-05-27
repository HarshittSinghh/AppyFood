import 'package:flutter/material.dart';

class IndianChickenCurryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Creamy Indian Chicken Curry'),
        backgroundColor: Colors.deepOrange[900],
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
                  'https://foodhub.scene7.com/is/image/woolworthsltdprod/1907-creamy-indian-chicken-curry:Desktop-1300x658',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('35 min',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              Text('Ingredients',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.deepOrange[900])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var ingredient in [
                    '4 Chicken Breasts',
                    '1 Onion',
                    '2 Cloves of Garlic',
                    '1 Piece of Ginger',
                    '4 Tablespoons Almonds',
                    '1 Teaspoon Cayenne Pepper',
                    '500ml Coconut Milk'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check, color: Colors.deepOrange[900]),
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
                      color: Colors.deepOrange[900])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var step in [
                    'Slice and fry the chicken breast.',
                    'Process onion, garlic and ginger into paste and sauté everything.',
                    'Add spices and stir fry.',
                    'Add chicken breast + 250ml of water and cook everything for 10 minutes.',
                    'Add coconut milk.'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.deepOrange[900],
                          child: Text(
                            '#${[
                                  'Slice and fry the chicken breast.',
                                  'Process onion, garlic and ginger into paste and sauté everything.',
                                  'Add spices and stir fry.',
                                  'Add chicken breast + 250ml of water and cook everything for 10 minutes.',
                                  'Add coconut milk.'
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
