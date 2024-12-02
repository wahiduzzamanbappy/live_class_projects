import 'package:flutter/material.dart';
import 'package:liveclass_project/ui/models/item.dart';

class AddNewProductScreen extends StatefulWidget {
  const AddNewProductScreen({super.key});

  static const String name = '/add-new-product';

  @override
  State<AddNewProductScreen> createState() => _AddNewProductScreenState();
}

class _AddNewProductScreenState extends State<AddNewProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromARGB(255, 73, 115, 121),
        title: const Text('Add new Product',
            style: TextStyle(
              color: Colors.white,
            )),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _buildProductForm(),
      ),
    );
  }

  SingleChildScrollView _buildProductForm() {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              controller: _nameTEController,
              decoration: const InputDecoration(
                hintText: 'Name',
                labelText: 'Product Name',
              ),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter product Name';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _codeTEController,
              decoration: const InputDecoration(
                hintText: 'Code',
                labelText: 'Product Code',
              ),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter product code';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _imageTEController,
              decoration: const InputDecoration(
                hintText: 'Image',
                labelText: 'Image url',
              ),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter Image url';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _priceTEController,
              decoration: const InputDecoration(
                  hintText: 'Price', labelText: 'Unit Price'),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter product price';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _quantityTEController,
              decoration: const InputDecoration(
                  hintText: 'Quantity', labelText: 'Product Quantity'),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter product Quantity';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _totalPriceTEController,
              decoration: const InputDecoration(
                  hintText: 'Total Price', labelText: 'Product Total Price'),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter product total price';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _totalPriceTEController,
              decoration: const InputDecoration(
                  hintText: 'Total Price', labelText: 'Product Total Price'),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter product total price';
                }
                return null;
              },
            ),
            TextFormField(
              controller: _totalPriceTEController,
              decoration: const InputDecoration(
                  hintText: 'Total Price', labelText: 'Product Total Price'),
              validator: (String? value) {
                if (value?.trim().isEmpty ?? true) {
                  return 'Enter product total price';
                }
                return null;
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Item item = Item(
                    name: _nameTEController.text.trim(),
                    code: _codeTEController.text.trim(),
                    price: _priceTEController.text.trim(),
                    image: _imageTEController.text.trim(),
                    quantity: _quantityTEController.text.trim(),
                    totalPrice: _totalPriceTEController.text.trim(),
                  );
                  Navigator.pop(context, item);
                }
              },
              child: const Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
