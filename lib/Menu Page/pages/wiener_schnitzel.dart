import 'package:flutter/material.dart';

class WienerSchnitzelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wiener Schnitzel'),
        backgroundColor: Colors.amber[900],
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
                  'https://honest-food.net/wp-content/uploads/2012/12/wiener-schnitzel-horizontal.jpg',
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text('60 min',
                    style: TextStyle(fontSize: 20, color: Colors.grey[700])),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.grey),
              Text('Ingredients',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[900])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var ingredient in [
                    '8 Veal Cutlets',
                    '4 Eggs',
                    '200g Bread Crumbs',
                    '100g Flour',
                    '300ml Butter',
                    '100g Vegetable Oil',
                    'Salt',
                    'Lemon Slices'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4.0),
                      child: Row(
                        children: [
                          Icon(Icons.check, color: Colors.amber[900]),
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
                      color: Colors.amber[900])),
              SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  for (var step in [
                    'Tenderize the veal to about 2–4mm, and salt on both sides.',
                    'On a flat plate, stir the eggs briefly with a fork.',
                    'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
                    'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until they are golden yellow on both sides.',
                    'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes “fluffy”.',
                    'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
                    'Place the schnitzels on a warmed plate and serve garnished with parsley and slices of lemon.'
                  ])
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: CircleAvatar(
                          backgroundColor: Colors.amber[900],
                          child: Text(
                            '#${[
                                  'Tenderize the veal to about 2–4mm, and salt on both sides.',
                                  'On a flat plate, stir the eggs briefly with a fork.',
                                  'Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
                                  'Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until they are golden yellow on both sides.',
                                  'Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes “fluffy”.',
                                  'Remove, and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
                                  'Place the schnitzels on a warmed plate and serve garnished with parsley and slices of lemon.'
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
