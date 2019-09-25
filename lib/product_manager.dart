import 'package:flutter/material.dart';
import './products.dart';

class ProductManager extends StatefulWidget {

  final String startingProduct;

//contain data from main.dart
  ProductManager(this.startingProduct){
    print('[ProductsManager Widget] Constructor');
  }


  @override
  State<StatefulWidget> createState() {
    print('[ProductsManager State] createState');

    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  //initialize

  List<String> _products = [];
  @override
  void initState() {
    print('[ProductsManager State] initState');
    _products.add(widget.startingProduct);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    print('[ProductsManager State] build()');
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            color: Theme.of(context).primaryColorLight,
            onPressed: () {
              setState(() {
                _products.add('Advanced party tester');
              });
            },
            child: Text('Add new party'),
          ),
        ),
        Product(_products)
      ],
    );
  }
}
