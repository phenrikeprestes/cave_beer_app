import 'package:flutter/material.dart';
import './models/beerShop.dart';
import 'beers_list.dart';
import 'dark.dart';
import 'draft.dart';
import 'light.dart';
import 'basket.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cave Beer App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Beers(),
    );
  }
}

class Beers extends StatefulWidget {
  const Beers({super.key});

  @override
  _BeersState createState() => _BeersState();
}

class _BeersState extends State<Beers> {
  final List<Beer> _selectedBeers = [];

  void _addToBasket(Beer beer) {
    setState(() {
      _selectedBeers.add(beer);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              'img/beerCup.png',
              width: 30,
            ),
            const Text(
              'Beers',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Basket(selectedBeers: _selectedBeers),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //-------------Dark
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dark()));
                        },
                        child: Image.asset(
                          'img/dark.jpg',
                          width: 50,
                        ),
                      ),
                      const Text('Dark Beer')
                    ],
                  ),

                  //-------------Draft
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Draft()));
                        },
                        child: Image.asset(
                          'img/draft.jpg',
                          width: 50,
                        ),
                      ),
                      const Text('Draft Beer')
                    ],
                  ),

                  //-------------Light
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Light()));
                        },
                        child: Image.asset(
                          'img/light.jpg',
                          width: 50,
                        ),
                      ),
                      const Text('Light Beer')
                    ],
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(
                  'Our Beers',
                  style: TextStyle(fontSize: 30),
                ),
              ),
              Column(
                children: beers.map((beer) {
                  return Card(
                    child: ListTile(
                      leading: Image.asset(
                        beer.imagePath,
                        width: 50,
                      ),
                      title: Text(
                        beer.name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 50,
                            child: Text('Type: ' + beer.type),
                          ),
                          Container(
                            width: 50,
                            child: Text('\$' + beer.price.toStringAsFixed(2)),
                          ),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.add_shopping_cart),
                        onPressed: () {
                          _addToBasket(beer);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      Basket(selectedBeers: _selectedBeers)));
                        },
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
