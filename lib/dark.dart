import 'package:flutter/material.dart';

class Dark extends StatelessWidget {
  const Dark({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text('Dark Beer'),
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
                'img/dark.jpg',
                width: 100,
              ),
              Container(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "When we talk about strong dark beers, we're referring to brews with both a higher alcohol content and a richer, more intense flavour profile. Typically, these beers have an alcohol by volume (ABV) of 7% or higher, though this can vary widely. Strong dark beers, such as Imperial stouts, Belgian dark ales, and barleywines, are known for their depth of flavour, often exhibiting a complex blend of sweetness, bitterness, and robust malt characteristics.These beers are not just about the strength of alcohol but also the depth and complexity of their taste.",
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
