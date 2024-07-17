import 'package:flutter/material.dart';

class Light extends StatelessWidget {
  const Light({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.white,
        title: Text('Light Beer'),
        bottom: PreferredSize(
            preferredSize: Size.zero,
            child: Text(
              'Informations',
              style: TextStyle(color: Colors.white),
            )),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset(
                'img/light.jpg',
                width: 100,
              ),
              Container(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Light beer (sometimes spelled lite beer) is a beer, usually a pale lager, that is reduced in alcohol content or in calories compared to regular beers. Light beers may be chosen by beer drinkers who wish to manage their alcohol consumption or their calorie intake; however, they are sometimes criticised for being less flavourful than full-strength beers, or for tasting or actually being watered down.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Buy for only \$ 7.00'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red, foregroundColor: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
