import 'package:flutter/material.dart';
import 'package:liveclass_project/ui/screen/update_product_list.dart';
import '../../models/product.dart';

class ProductItem extends StatefulWidget {
  const ProductItem({
    super.key,
  });

  @override
  State<ProductItem> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  final List<Item> listOfItem = [];

  void _deleteProductItem(int index) {
    listOfItem.removeAt(index);
    setState(() {});
  }
  void _updateItem(int index, Item item) {
    listOfItem[index] = item;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:'
          'ANd9GcR9hkkSRcoQv5g-4_HsstcI2w5IyKz3nkd41Q&s'),
      title: const Text('Product Name'),
      subtitle: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Product Code: #CODE'),
          Text('Quantity: 12'),
          Text('Price: 500'),
          Text('Total Price : 600000'),
        ],
      ),
      trailing: Wrap(
        children: [
          IconButton(
            onPressed: () {
              //_deleteProductItem(index);
            },
            icon: const Icon(Icons.delete),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, UpdateProductScreen.name);
            },
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

