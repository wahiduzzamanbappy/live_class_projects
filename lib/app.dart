import 'package:flutter/material.dart';
import 'package:liveclass_project/models/product.dart';
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
      onGenerateRoute: (RouteSettings settings) {
        late Widget widget;
        if (settings.name == '/') {
          widget = const ProductListScreen();
        } else if (settings.name == AddNewProductScreen.name) {
          widget = const AddNewProductScreen();
        } else if (settings.name == UpdateProductScreen.name) {
          final Product product = settings.arguments as Product;
          widget = UpdateProductScreen(product: product);
        }

        return MaterialPageRoute(
          builder: (context) {
            return widget;
          },
        );
      },
      /*theme: ThemeData(
        appBarTheme: AppBarTheme(
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
      ),*/
    );
  }
}
