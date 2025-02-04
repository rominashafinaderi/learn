import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learn2/riverpod/offline_riverpod/provider.dart';

class ProductScreen extends ConsumerWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // دریافت لیست محصولات از Provider
    final products = ref.watch(productsProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('لیست محصولات')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]),
          );
        },
      ),
    );
  }
}