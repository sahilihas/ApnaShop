import 'package:flutter/material.dart';
import '../models/product.dart';
import '../services/product_service.dart';

class Products with ChangeNotifier {
  final ProductService _productService = ProductService();
  List<Product> _items = [];

  List<Product> get items => [..._items];

  List<Product> get favoriteItems {
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id) {
    return _items.firstWhere((prod) => prod.id == id);
  }

  Future<void> fetchAndSetProducts() async {
    _productService.getProducts().listen((products) {
      _items = products;
      notifyListeners();
    });
  }

  Future<void> addDummyProducts() async {
    await _productService.addDummyProducts();
  }
}
