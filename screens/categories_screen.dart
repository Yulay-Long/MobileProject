import 'package:flutter/material.dart';
import '../data/sample_products.dart';
import '../widgets/product_card.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<String> _categories = ['Popular', 'Jacket', 'Shoes', 'Pants'];
  String _selected = 'Popular';

  List _filtered() {
    if (_selected == 'Popular') return sampleProducts;
    if (_selected == 'Jacket') {
      return sampleProducts
          .where(
            (p) =>
                p.name.toLowerCase().contains('hoodie') ||
                p.name.toLowerCase().contains('jacket'),
          )
          .toList();
    }
    if (_selected == 'Shoes') {
      return sampleProducts
          .where(
            (p) =>
                p.name.toLowerCase().contains('sneaker') ||
                p.name.toLowerCase().contains('shoe'),
          )
          .toList();
    }
    if (_selected == 'Pants') {
      return sampleProducts
          .where((p) => p.name.toLowerCase().contains('pant'))
          .toList();
    }
    return sampleProducts;
  }

  @override
  Widget build(BuildContext context) {
    final items = _filtered();

    return Scaffold(
      appBar: AppBar(title: const Text('Categories')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: _categories.map((c) {
                  final sel = c == _selected;
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ChoiceChip(
                      label: Text(c),
                      selected: sel,
                      onSelected: (_) => setState(() => _selected = c),
                    ),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.7,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                ),
                itemCount: items.length,
                itemBuilder: (context, i) => ProductCard(product: items[i]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
