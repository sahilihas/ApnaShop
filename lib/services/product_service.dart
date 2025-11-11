import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/product.dart';

class ProductService {
  final CollectionReference _productsCollection = FirebaseFirestore.instance.collection('products');

  Future<void> addProduct(Product product) {
    return _productsCollection.add(product.toJson());
  }

  Stream<List<Product>> getProducts() {
    return _productsCollection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) => Product.fromFirestore(doc)).toList();
    });
  }

  Future<void> addDummyProducts() async {
    final products = [
      Product(
        id: '1',
        title: 'Laptop',
        description: 'A high-end laptop for all your needs.',
        price: 1200.00,
        imageUrl: 'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        category: 'Electronics',
      ),
      Product(
        id: '2',
        title: 'Smartphone',
        description: 'A smartphone with a great camera.',
        price: 800.00,
        imageUrl: 'https://images.unsplash.com/photo-1580910051074-3eb694886505?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        category: 'Electronics',
      ),
      Product(
        id: '3',
        title: 'T-shirt',
        description: 'A comfortable cotton t-shirt.',
        price: 25.00,
        imageUrl: 'https://images.unsplash.com/photo-1576566588028-4147f3842f27?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        category: 'Clothing',
      ),
      Product(
        id: '4',
        title: 'Jeans',
        description: 'A pair of stylish jeans.',
        price: 75.00,
        imageUrl: 'https://images.unsplash.com/photo-1541099649105-f69ad21f3246?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        category: 'Clothing',
      ),
      Product(
        id: '5',
        title: 'Book',
        description: 'A captivating novel.',
        price: 15.00,
        imageUrl: 'https://images.unsplash.com/photo-1544947950-fa07a98d237f?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        category: 'Books',
      ),
      Product(
        id: '6',
        title: 'Headphones',
        description: 'Noise-cancelling headphones.',
        price: 150.00,
        imageUrl: 'https://images.unsplash.com/photo-1505740420928-5e560c06d3be?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
        category: 'Electronics',
      ),
    ];

    for (var product in products) {
      await addProduct(product);
    }
  }
}
