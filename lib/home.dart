import 'package:cave_beer_app/beers.dart';
import 'package:cave_beer_app/beers_list.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'img/lupulo.png',
          width: 150,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Image.asset('img/beer.jpg'),
              Container(
                color: Colors.amber,
                width: double.infinity,
                height: 250,
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Beers()));
                  },
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.all(16)),
                      Text(
                        'The Best',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Craft Beer Pub',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Welcomes you !',
                        style: TextStyle(
                            color: Colors.orange[800],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Text(
                        'Call (555)-123-4567',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.blue[900],
                          fontSize: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.orange[800],
                              foregroundColor: Colors.white),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Beers()));
                          },
                          child: const Text(
                            "Our Beers",
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(64),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'img/cordon.jpg',
                      width: 50,
                    ),
                    Image.asset(
                      'img/trip.jpg',
                      width: 50,
                    ),
                    Image.asset(
                      'img/michelin.png',
                      width: 50,
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 32)),
              Text(
                'Gutenberg',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '"The Ultimate Place for Craft Beers"',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
