import 'package:flutter/material.dart';

class SpaghettiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spaghetti with Tomato Sauce'),
        backgroundColor: Colors.redAccent,
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
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('20 min',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              Text('Ingredients',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent)),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var ingredient in [
                    '4 Tomatoes',
                    '1 Tablespoon of Olive Oil',
                    '1 Onion',
                    '250g Spaghetti',
                    'Spices',
                    'Cheese (optional)'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check, color: Colors.redAccent),
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
                      color: Colors.redAccent)),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var step in [
                    'Cut the tomatoes and the onion into small pieces.',
                    'Boil some water - add salt to it once it boils.',
                    'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
                    'In the meantime, heat up some olive oil and add the cut onion.',
                    'After 2 minutes, add the tomato pieces, salt, pepper, and your other spices.',
                    'The sauce will be done once the spaghetti are.',
                    'Feel free to add some cheese on top of the finished dish.'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.redAccent,
                          child: Text(
                            '#${[
                                  'Cut the tomatoes and the onion into small pieces.',
                                  'Boil some water - add salt to it once it boils.',
                                  'Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
                                  'In the meantime, heat up some olive oil and add the cut onion.',
                                  'After 2 minutes, add the tomato pieces, salt, pepper, and your other spices.',
                                  'The sauce will be done once the spaghetti are.',
                                  'Feel free to add some cheese on top of the finished dish.'
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
