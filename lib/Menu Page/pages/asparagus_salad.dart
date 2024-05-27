import 'package:flutter/material.dart';

class AsparagusSaladScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asparagus Salad with Cherry Tomatoes'),
        backgroundColor: Colors.green[700],
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
                  'https://cdn.pixabay.com/photo/2016/03/05/19/02/salad-1238247_1280.jpg',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('30 min',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              Text('Ingredients',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.green[700])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var ingredient in [
                    'White and Green Asparagus',
                    '30g Pine Nuts',
                    '300g Cherry Tomatoes',
                    'Salad',
                    'Salt, Pepper and Olive Oil'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check, color: Colors.green[700]),
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
                      color: Colors.green[700])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var step in [
                    'Wash, peel and cut the asparagus.',
                    'Cook in salted water.',
                    'Salt and pepper the asparagus.',
                    'Roast the pine nuts.',
                    'Halve the tomatoes.',
                    'Mix with asparagus, salad and dressing.',
                    'Serve with Baguette.'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.green[700],
                          child: Text(
                            '#${[
                                  'Wash, peel and cut the asparagus.',
                                  'Cook in salted water.',
                                  'Salt and pepper the asparagus.',
                                  'Roast the pine nuts.',
                                  'Halve the tomatoes.',
                                  'Mix with asparagus, salad and dressing.',
                                  'Serve with Baguette.'
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
