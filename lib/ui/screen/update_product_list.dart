import 'package:flutter/material.dart';

class UpdateProductScreen extends StatefulWidget {
  const UpdateProductScreen({super.key});

  static const String name = '/update-product';

  @override
  State<UpdateProductScreen> createState() => _UpdateProductScreenState();
}

class _UpdateProductScreenState extends State<UpdateProductScreen> {
  final TextEditingController _nameTEController = TextEditingController();
  final TextEditingController _codeTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 73, 115, 121),
        title: const Text(
          'Update Product',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
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
            ElevatedButton(
              onPressed: () {},
              child: const Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _quantityTEController.dispose();
    _nameTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    _codeTEController.dispose();
    _imageTEController.dispose();
    super.dispose();
  }
}
