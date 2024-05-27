import 'package:flutter/material.dart';

class ChocolateSouffleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chocolate Souffle'),
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
                  'https://www.flavoursholidays.co.uk/wp-content/uploads/2022/02/Chocolate-Souffle-SM-1.jpg',
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
                      color: Colors.brown[400])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var ingredient in [
                    '1 Teaspoon melted butter',
                    '2 Tablespoons white sugar',
                    '2 Ounces 70% dark chocolate, broken into pieces',
                    '1 Tablespoon butter',
                    '1 Tablespoon all-purpose flour',
                    '4 1/3 tablespoons cold milk',
                    '1 Pinch salt',
                    '1 Pinch cayenne pepper',
                    '1 Large egg yolk',
                    '2 Large egg whites',
                    '1 Pinch cream of tartar',
                    '1 Tablespoon white sugar'
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
                    'Preheat oven to 190°C. Line a baking sheet with parchment paper.',
                    'Brush ramekins with melted butter and sprinkle with sugar.',
                    'Melt chocolate in a double boiler.',
                    'Melt 1 tablespoon butter in a skillet over medium heat.',
                    'Stir in flour until thick and paste-like.',
                    'Whisk in cold milk until smooth and thickened.',
                    'Remove from heat and stir in melted chocolate, salt, and cayenne pepper.',
                    'Beat egg yolk into chocolate mixture.',
                    'Beat egg whites with cream of tartar until foamy.',
                    'Add sugar and beat until soft peaks form.',
                    'Fold a small amount of egg whites into chocolate mixture.',
                    'Fold in remaining egg whites and pour into ramekins.',
                    'Bake in preheated oven for 12 to 15 minutes.'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.brown[400],
                          child: Text(
                            '#${[
                                  'Preheat oven to 190°C. Line a baking sheet with parchment paper.',
                                  'Brush ramekins with melted butter and sprinkle with sugar.',
                                  'Melt chocolate in a double boiler.',
                                  'Melt 1 tablespoon butter in a skillet over medium heat.',
                                  'Stir in flour until thick and paste-like.',
                                  'Whisk in cold milk until smooth and thickened.',
                                  'Remove from heat and stir in melted chocolate, salt, and cayenne pepper.',
                                  'Beat egg yolk into chocolate mixture.',
                                  'Beat egg whites with cream of tartar until foamy.',
                                  'Add sugar and beat until soft peaks form.',
                                  'Fold a small amount of egg whites into chocolate mixture.',
                                  'Fold in remaining egg whites and pour into ramekins.',
                                  'Bake in preheated oven for 12 to 15 minutes.'
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
