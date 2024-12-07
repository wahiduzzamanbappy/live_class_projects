import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

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
  bool _addNewProductInProgress = false;

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
                  _addNewProduct();
                }
              },
              child: const Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _addNewProduct() async {
    _addNewProductInProgress = true;
    setState(() {});
    Uri uri = Uri.parse('https://crud.teamrabbil.com/api/v1/CreateProduct');

    Map<String, dynamic> requestBody = {
      "Img": _imageTEController.text.trim(),
      "ProductCode": _codeTEController.text.trim(),
      "ProductName": _nameTEController.text.trim(),
      "Qty": _quantityTEController.text.trim(),
      "TotalPrice": _totalPriceTEController.text.trim(),
      "UnitPrice": _priceTEController.text.trim(),
    };
    Response response = await post(
      uri,
      headers: {'Content-type': 'Application/json'},
      body: jsonEncode(requestBody),
    );
    print(response.statusCode);
    print(response.body);
    _addNewProductInProgress = false;
    setState(() {});
    if (response.statusCode == 200) {
      _clearTextFields();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('New product added.'),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('New product add failed! Try again.'),
        ),
      );
    }
  }

  void _clearTextFields() {
    _nameTEController.clear();
    _codeTEController.clear();
    _priceTEController.clear();
    _quantityTEController.clear();
    _totalPriceTEController.clear();
    _imageTEController.clear();
  }
  @override
  void dispose() {
    _nameTEController.dispose();
    _codeTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    _imageTEController.dispose();
    _quantityTEController.dispose();
    super.dispose();
  }
  }

