import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:liveclass_project/ui/screen/add_new_product_screen.dart';
import 'package:liveclass_project/ui/widgets/product_item.dart';
import '../../models/product.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Product> productList = [];
  bool _getProductListInProgress = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 115, 121),
        centerTitle: true,
        title: const Text(
          'Product List',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _getProductList();
            },
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return ProductItem(
            product: productList[index],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 73, 115, 121),
        onPressed: () {
          Navigator.pushNamed(context, AddNewProductScreen.name);
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }

  Future<void> _getProductList() async {
    productList.clear();
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct');

    Response response = await get(uri);

    print(response.statusCode);
    print(response.body);
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body);
      print(decodedData['status']);
      for (Map<String, dynamic> p in decodedData['data']) {
        Product product = Product(
          id: p['_id'],
          productCode: p['ProductCode'],
          unitPrice: p['unitPrice'],
          image: p['Img'],
          quantity: p['Qty'],
          totalPrice: p['totalPrice'],
          createdDate: p['createdDate'],
          productName: p['productName'],
        );
        productList.add(product);
      }
      setState(() {});
    }
    _getProductListInProgress = false;
    setState(() { });
  }
}
