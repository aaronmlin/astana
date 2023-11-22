import 'package:flutter/material.dart';
import 'package:astana/models/product.dart';

class ItemDetailPage extends StatelessWidget {
  final Product item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: Color.fromARGB(255, 100, 49, 6),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Item Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Price: ${item.fields.price}'),
            SizedBox(height: 10),
            Text('Description: ${item.fields.description}'),
          ],
        ),
      ),
    );
  }
}