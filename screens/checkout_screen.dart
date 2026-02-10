import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/cart_service.dart';

class CheckoutScreen extends StatefulWidget {
  static const routeName = '/checkout';

  final Product? initialProduct;

  const CheckoutScreen({super.key, this.initialProduct});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  void initState() {
    super.initState();
    // If an initial product was passed (e.g., Buy Now), add it to the shared cart
    if (widget.initialProduct != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        // Add after first frame to avoid sync issues during build
        CartService.instance.add(widget.initialProduct!);
      });
    }
  }

  void _changeQty(int index, int delta) {
    CartService.instance.changeQtyAt(index, delta);
  }

  void _checkout() {
    // In a real app you'd call your checkout API here; we'll clear the cart after "placing" the order.
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Order placed'),
        content: Text(
          'You ordered ${CartService.instance.totalItems} items for \$${CartService.instance.totalPrice.toStringAsFixed(2)}',
        ),
        actions: [
          TextButton(
            onPressed: () {
              CartService.instance.clear();
              Navigator.pop(context);
            },
            child: const Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Checkout'),
        backgroundColor: colorScheme.surface,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Expanded(
            child: ValueListenableBuilder<List<CartItem>>(
              valueListenable: CartService.instance.items,
              builder: (context, cart, _) {
                if (cart.isEmpty)
                  return const Center(child: Text('Your cart is empty'));
                return ListView.separated(
                  padding: const EdgeInsets.all(12),
                  itemBuilder: (ctx, i) {
                    final item = cart[i];
                    return _buildCartRow(i, item);
                  },
                  separatorBuilder: (_, __) => const SizedBox(height: 8),
                  itemCount: cart.length,
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: colorScheme.surfaceVariant.withOpacity(0.7),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6,
                  offset: Offset(0, -2),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    ValueListenableBuilder<List<CartItem>>(
                      valueListenable: CartService.instance.items,
                      builder: (context, cart, _) => Text(
                        '\$${cart.fold(0.0, (s, c) => s + c.qty * c.product.price).toStringAsFixed(2)}',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ValueListenableBuilder<List<CartItem>>(
                    valueListenable: CartService.instance.items,
                    builder: (context, cart, _) => ElevatedButton(
                      onPressed: cart.isEmpty ? null : _checkout,
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text('Place Order'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCartRow(int index, CartItem item) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                item.product.imageUrl,
                width: 72,
                height: 72,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.product.name,
                    style: const TextStyle(fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 6),
                  Text('\$${item.product.price.toStringAsFixed(2)}'),
                ],
              ),
            ),
            Row(
              children: [
                IconButton(
                  onPressed: () => _changeQty(index, -1),
                  icon: const Icon(Icons.remove_circle_outline),
                ),
                Text(
                  '${item.qty}',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () => _changeQty(index, 1),
                  icon: const Icon(Icons.add_circle_outline),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
