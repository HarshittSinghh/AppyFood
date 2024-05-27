import 'package:flutter/material.dart';

class PancakesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pancakes'),
        backgroundColor: Colors.brown[400],
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
                  'https://cdn.jwplayer.com/v2/media/l2dpvDTO/poster.jpg?width=720',
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
                      color: Colors.brown[400])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var ingredient in [
                    '1 1/2 Cups all-purpose flour',
                    '3 1/2 Teaspoons baking powder',
                    '1 Teaspoon salt',
                    '1 Tablespoon white sugar',
                    '1 1/4 Cups milk',
                    '1 Egg',
                    '3 Tablespoons butter, melted'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check, color: Colors.brown[400]),
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
                      color: Colors.brown[400])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var step in [
                    'In a large bowl, sift together the flour, baking powder, salt and sugar.',
                    'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
                    'Heat a lightly oiled griddle or frying pan over medium high heat.',
                    'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.',
                    'Brown on both sides and serve hot.'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.brown[400],
                          child: Text(
                            '#${[
                                  'In a large bowl, sift together the flour, baking powder, salt and sugar.',
                                  'Make a well in the center and pour in the milk, egg and melted butter; mix until smooth.',
                                  'Heat a lightly oiled griddle or frying pan over medium high heat.',
                                  'Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.',
                                  'Brown on both sides and serve hot.'
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
