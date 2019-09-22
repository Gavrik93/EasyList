import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final List <String> products;
  
  Product(this.products){
    print('[ProductsWidget] Constructor');
  }

  @override
  Widget build(BuildContext context) {
        print('[ProductsWidget] build()');
    return Column(
      children: products
          .map(
            (element) => Card(
          child: Column(
            children: <Widget>[
             //Image.asset('assets/androidparty.jpg'),
              Text(element)
            ],
          ),
        ),
      )
          .toList(),
    );
  }
}