import 'package:flutter/material.dart';
import './models/beerShop.dart';

class Basket extends StatelessWidget {
  final List<Beer> selectedBeers;

  const Basket({super.key, required this.selectedBeers});

  double get totalPrice {
    return selectedBeers.fold(0, (sum, beer) => sum + beer.price);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Basket'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: selectedBeers.length,
              itemBuilder: (context, index) {
                final beer = selectedBeers[index];
                return ListTile(
                  leading: Image.asset(beer.imagePath, width: 30),
                  title: Text(beer.name),
                  subtitle: Text('Price: \$${beer.price.toStringAsFixed(2)}'),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Total: \$${totalPrice.toStringAsFixed(2)}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
