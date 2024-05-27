import 'package:flutter/material.dart';

class ToastHawaiiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast Hawaii'),
        backgroundColor: Colors.amber[700],
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
                  'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('10 min',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              Text('Ingredients',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[700])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var ingredient in [
                    '1 Slice White Bread',
                    '1 Slice Ham',
                    '1 Slice Pineapple',
                    '1-2 Slices of Cheese',
                    'Butter'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check, color: Colors.amber[700]),
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
                      color: Colors.amber[700])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var step in [
                    'Butter one side of the white bread',
                    'Layer ham, the pineapple and cheese on the white bread',
                    'Bake the toast for round about 10 minutes in the oven at 200°C'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.amber[700],
                          child: Text(
                            '#${[
                                  'Butter one side of the white bread',
                                  'Layer ham, the pineapple and cheese on the white bread',
                                  'Bake the toast for round about 10 minutes in the oven at 200°C'
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
