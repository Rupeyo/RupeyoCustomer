import 'package:flutter/material.dart';


class Product {
  final String name;
  int quantity;

  Product(this.name, this.quantity);
}


class ProductCounterPage extends StatefulWidget {
  const ProductCounterPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ProductCounterPageState createState() => _ProductCounterPageState();
}

class _ProductCounterPageState extends State<ProductCounterPage> {
  List<Product> products = [
    Product('', 0),
     ];

  void _incrementProductCount(int index) {
    setState(() {
      products[index].quantity++;
    });
  }

  void _decrementProductCount(int index) {
    setState(() {
      if (products[index].quantity > 0) {
          products[index].quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.red,
            margin: const EdgeInsets.symmetric(horizontal: 129),
            child: SizedBox(
              width: 140,
              height: 50,
              child: ListTile(
                title: Text(products[index].name),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  
                  children: [
                  
                    IconButton(
                      icon: const Icon(Icons.remove, color: Colors.white,),
                      onPressed: () => _decrementProductCount(index),
                    ),
                    Text(products[index].quantity.toString(), style: const TextStyle(color: Colors.white)),
                    IconButton(
                      icon: const Icon(Icons.add,color: Colors.white,),
                      onPressed: () => _incrementProductCount(index),
                    ),
                  ],
                ),
              ),
            ),
          );
    
        }
    );
  }
}
