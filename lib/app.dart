import 'package:flutter/material.dart';
import 'package:liveclass_project/ui/screen/add_new_product_screen.dart';
import 'package:liveclass_project/ui/screen/product_list_screen.dart';
import 'package:liveclass_project/ui/screen/update_product_list.dart';

class CRUDApp extends StatelessWidget {
  const CRUDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const ProductListScreen(),
        AddNewProductScreen.name : (context) => const AddNewProductScreen(),
        UpdateProductScreen.name : (context) => const UpdateProductScreen(),
      },
    );
  }
}
