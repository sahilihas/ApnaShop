import 'package:flutter/material.dart';

import '../models/order.dart' as ord;

class OrderItem extends StatelessWidget {
  final ord.Order order;

  const OrderItem(this.order, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text('\$${order.amount}'),
            subtitle: Text(
              order.dateTime.toString(),
            ),
            trailing: IconButton(
              icon: Icon(Icons.expand_more),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
