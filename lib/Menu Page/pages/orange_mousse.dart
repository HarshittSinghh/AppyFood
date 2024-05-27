import 'package:flutter/material.dart';

class OrangeMousseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delicious Orange Mousse'),
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
                  'https://i.ytimg.com/vi/ba_3ICebDoo/maxresdefault.jpg',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('150 min',
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
                    '4 Sheets of Gelatine',
                    '150ml Orange Juice',
                    '80g Sugar',
                    '300g Yoghurt',
                    '200g Cream',
                    'Orange Peel'
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
                    'Dissolve gelatine in pot.',
                    'Add orange juice and sugar.',
                    'Take pot off the stove.',
                    'Add 2 tablespoons of yoghurt.',
                    'Stir gelatin under remaining yoghurt.',
                    'Cool everything down in the refrigerator.',
                    'Whip the cream and lift it under die orange mass.',
                    'Cool down again for at least 4 hours.',
                    'Serve with orange peel.'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.orange[900],
                          child: Text(
                            '#${[
                                  'Dissolve gelatine in pot.',
                                  'Add orange juice and sugar.',
                                  'Take pot off the stove.',
                                  'Add 2 tablespoons of yoghurt.',
                                  'Stir gelatin under remaining yoghurt.',
                                  'Cool everything down in the refrigerator.',
                                  'Whip the cream and lift it under die orange mass.',
                                  'Cool down again for at least 4 hours.',
                                  'Serve with orange peel.'
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
