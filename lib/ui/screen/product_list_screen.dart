import 'package:flutter/material.dart';
import 'package:liveclass_project/ui/screen/add_new_product_screen.dart';
import 'package:liveclass_project/ui/widgets/product_item.dart';
import '../../models/product.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  final List<Item> listOfItem = [];
  void _addItem(Item item) {
    listOfItem.add(item);
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 115, 121),
        centerTitle: true,
        title: const Text('Product List',
            style: TextStyle(
              color: Colors.white,
            )),
      ),
      body: ListView.builder(
        itemCount: listOfItem.length,
        itemBuilder: (context, index) {
    Item item = listOfItem[index];
          return const ProductItem();
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
}
