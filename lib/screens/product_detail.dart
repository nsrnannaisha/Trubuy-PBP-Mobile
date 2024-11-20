import 'package:flutter/material.dart';
import 'package:trubuy_mobile/models/product_entry.dart';

class ProductDetailPage extends StatelessWidget {
  final ProductEntry productEntry;

  const ProductDetailPage({super.key, required this.productEntry});

  @override
  Widget build(BuildContext context) {
    final fields = productEntry.fields;
    return Scaffold(
      appBar: AppBar(
        title: Text(fields.product),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Product: ${fields.product}",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text("Description: ${fields.description}",
                style: const TextStyle(fontSize: 15)),
            const SizedBox(height: 16),
            Text("Rating: ${fields.rating}",
                style: const TextStyle(fontSize: 15)),
            const SizedBox(height: 16),
            Text("Quantity: ${fields.quantity}", style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
