import 'dart:convert';
import 'package:colorful_circular_progress_indicator/colorful_circular_progress_indicator.dart';
import 'package:draggable_fab/draggable_fab.dart';
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
  List<Product> productList = [];
  bool _getProductListInProgress = false;

  @override
  void initState() {
    super.initState();
    _getProductList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 115, 121),
        centerTitle: true,
        title: const Text(
          'Product List',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _getProductList();
            },
            icon: const Icon(
              Icons.refresh,
              size: 27,
              color: Colors.white,
            ),
          ),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 233, 81, 42),
                Color.fromARGB(255, 211, 66, 107),
                Color.fromARGB(255, 172, 76, 164),
                Color.fromARGB(255, 125, 43, 214),
                Color.fromARGB(255, 55, 166, 227),
              ],
            ),
          ),
        ),
      ),
      body: RefreshIndicator(
        color: Colors.deepPurple,
        onRefresh: () async {
          _getProductList();
        },
        child: Visibility(
          visible: _getProductListInProgress == false,
          replacement: const Center(
            child: ColorfulCircularProgressIndicator(
              colors: [
                Color.fromARGB(255, 233, 81, 42),
                Color.fromARGB(255, 211, 66, 107),
                Color.fromARGB(255, 172, 76, 164),
                Color.fromARGB(255, 125, 43, 214),
                Color.fromARGB(255, 55, 166, 227),
              ],
            ),
          ),
          child: ListView.builder(
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return ProductItem(
                product: productList[index],
              );
            },
          ),
        ),
      ),
      floatingActionButton: DraggableFab(
        child: FloatingActionButton(
          //backgroundColor: const Color.fromARGB(255, 73, 115, 121),
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            Navigator.pushNamed(context, AddNewProductScreen.name);
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Future<void> _getProductList() async {
    productList.clear();
    _getProductListInProgress = true;
    setState(() {});
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
          productName: p['ProductName'],
          productCode: p['ProductCode'],
          quantity: p['Qty'],
          unitPrice: p['UnitPrice'],
          image: p['Img'],
          totalPrice: p['TotalPrice'],
          createdDate: p['CreatedDate'],
        );
        productList.add(product);
      }
      setState(() {});
    }
    _getProductListInProgress = false;
    setState(() {});
  }
}
