import 'package:flutter/material.dart';

class SaladSmokedSalmonScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salad with Smoked Salmon'),
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
                  'https://www.manusmenu.com/wp-content/uploads/2014/04/2-Smoked-Salmon-and-Avocado-Salad-3-1-of-1.jpg',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('15 min',
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
                    'Arugula',
                    'Lamb\'s Lettuce',
                    'Parsley',
                    'Fennel',
                    '200g Smoked Salmon',
                    'Mustard',
                    'Balsamic Vinegar',
                    'Olive Oil',
                    'Salt and Pepper'
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
                    'Wash and cut salad and herbs.',
                    'Dice the smoked salmon.',
                    'Process mustard, vinegar and olive oil into a dressing.',
                    'Prepare the salad.',
                    'Add salmon cubes and dressing.'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.green[700],
                          child: Text(
                            '#${[
                                  'Wash and cut salad and herbs.',
                                  'Dice the smoked salmon.',
                                  'Process mustard, vinegar and olive oil into a dressing.',
                                  'Prepare the salad.',
                                  'Add salmon cubes and dressing.'
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
