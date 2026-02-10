import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final orders = [
      {
        'id': 'ORD-1001',
        'date': '2026-01-25',
        'status': 'Delivered',
        'total': 120.0,
      },
      {
        'id': 'ORD-1002',
        'date': '2025-12-05',
        'status': 'Shipped',
        'total': 75.5,
      },
      {
        'id': 'ORD-1003',
        'date': '2025-11-20',
        'status': 'Cancelled',
        'total': 40.0,
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Your Orders')),
      body: ListView.separated(
        padding: const EdgeInsets.all(12),
        itemBuilder: (context, i) {
          final o = orders[i];
          return Card(
            child: ListTile(
              leading: CircleAvatar(child: Text('${i + 1}')),
              title: Text(o['id'] as String),
              subtitle: Text(o['date'] as String),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '\$${(o['total'] as double).toStringAsFixed(2)}',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  _StatusChip(status: o['status'] as String),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, __) => const SizedBox(height: 10),
        itemCount: orders.length,
      ),
    );
  }
}

class _StatusChip extends StatelessWidget {
  final String status;
  const _StatusChip({required this.status});

  @override
  Widget build(BuildContext context) {
    Color color;
    switch (status.toLowerCase()) {
      case 'delivered':
        color = Colors.green;
        break;
      case 'shipped':
        color = Colors.orange;
        break;
      case 'cancelled':
        color = Colors.red;
        break;
      default:
        color = Colors.grey;
    }

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: color.withOpacity(0.12),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(status, style: TextStyle(color: color, fontSize: 12)),
    );
  }
}
