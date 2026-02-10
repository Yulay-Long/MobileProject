import 'package:flutter/material.dart';
import '../models/product.dart';

class CartItem {
  final Product product;
  int qty;

  CartItem({required this.product, required this.qty});

  CartItem copyWith({Product? product, int? qty}) =>
      CartItem(product: product ?? this.product, qty: qty ?? this.qty);
}

class CartService {
  CartService._();
  static final CartService instance = CartService._();

  final ValueNotifier<List<CartItem>> items = ValueNotifier<List<CartItem>>([]);

  void add(Product product, {int qty = 1}) {
    final list = List<CartItem>.from(items.value);
    final idx = list.indexWhere((c) => c.product.id == product.id);
    if (idx >= 0) {
      list[idx].qty += qty;
    } else {
      list.add(CartItem(product: product, qty: qty));
    }
    items.value = list;
  }

  void changeQtyAt(int index, int delta) {
    final list = List<CartItem>.from(items.value);
    if (index < 0 || index >= list.length) return;
    final newQty = list[index].qty + delta;
    if (newQty <= 0) {
      list.removeAt(index);
    } else {
      list[index] = list[index].copyWith(qty: newQty);
    }
    items.value = list;
  }

  int get totalItems => items.value.fold(0, (s, c) => s + c.qty);

  double get totalPrice =>
      items.value.fold(0.0, (s, c) => s + c.qty * c.product.price);

  void clear() => items.value = [];
}
