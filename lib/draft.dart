import 'package:flutter/material.dart';

class Draft extends StatelessWidget {
  const Draft({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        title: Text('Draft Beer'),
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
                'img/draft.jpg',
                width: 100,
              ),
              Container(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Draught beer, also spelt draft, is beer served from a cask or keg rather than from a bottle or can. Draught beer served from a pressurised keg is also known as keg beer",
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
