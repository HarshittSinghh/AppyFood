import 'package:flutter/material.dart';
import 'pages/spaghetti.dart';
import 'pages/toast_hawaii.dart';
import 'pages/classic_hamburger.dart';
import 'pages/wiener_schnitzel.dart';
import 'pages/salad_smoked_salmon.dart';
import 'pages/orange_mousse.dart';
import 'pages/pancakes.dart';
import 'pages/indian_chicken_curry.dart';
import 'pages/chocolate_souffle.dart';
import 'pages/asparagus_salad.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MealListScreen(),
    );
  }
}

class MealListScreen extends StatelessWidget {
  final List<Map<String, String>> meals = [
    {
      'title': 'Spaghetti with Tomato Sauce',
      'image':
          'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    },
    {
      'title': 'Toast Hawaii',
      'image':
          'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    },
    {
      'title': 'Classic Hamburger',
      'image':
          'https://cdn.pixabay.com/photo/2016/03/05/19/02/hamburger-1238246_1280.jpg',
    },
    {
      'title': 'Wiener Schnitzel',
      'image':
          'https://honest-food.net/wp-content/uploads/2012/12/wiener-schnitzel-horizontal.jpg',
    },
    {
      'title': 'Salad with Smoked Salmon',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIjYfRrHAoFCWZOmU03JoF8UiSHYxnjmFzZ7aX7Qa9_Q&s',
    },
    {
      'title': 'Delicious Orange Mousse',
      'image': 'https://i.ytimg.com/vi/ba_3ICebDoo/maxresdefault.jpg',
    },
    {
      'title': 'Pancakes',
      'image':
          'https://cdn.jwplayer.com/v2/media/l2dpvDTO/poster.jpg?width=720',
    },
    {
      'title': 'Creamy Indian Chicken Curry',
      'image':
          'https://foodhub.scene7.com/is/image/woolworthsltdprod/1907-creamy-indian-chicken-curry:Desktop-1300x658',
    },
    {
      'title': 'Chocolate Souffle',
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGQuShHgGDdYPJ_OpuqcQHVqupX2oFDJ8ElBhVLKje6XOSYPcgs5gqRxCBe4oihBln9Qk&usqp=CAU',
    },
    {
      'title': 'Asparagus Salad with Cherry Tomatoes',
      'image':
          'https://cdn.pixabay.com/photo/2016/03/05/19/02/salad-1238247_1280.jpg',
    },
  ];

  final List<Widget> screens = [
    SpaghettiScreen(),
    ToastHawaiiScreen(),
    ClassicHamburgerScreen(),
    WienerSchnitzelScreen(),
    SaladSmokedSalmonScreen(),
    OrangeMousseScreen(),
    PancakesScreen(),
    IndianChickenCurryScreen(),
    ChocolateSouffleScreen(),
    AsparagusSaladScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meal List'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(16),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 1.2,
        ),
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(builder: (ctx) => screens[index]),
              );
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                      child: Image.network(
                        meals[index]['image']!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(10),
                      child: Center(
                        child: Text(
                          meals[index]['title']!,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
