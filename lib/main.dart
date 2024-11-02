import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MyApp",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> friendList = [
    'Iram',
    'Shabbin',
    'Rakib',
    'Hasan',
    'Roy',
    'Niloy',
    'Hasan',
    'Fahad',
    'Nilly',
    'Touhid',
    'Mony',
    'Random',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
     /* body: ListView.separated(
        itemCount: friendList.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Text(friendList[index]),
              const Divider(
                height: 20,
                thickness: 2,
                color: Colors.amber,
                indent: 10,
                endIndent: 16,
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.green,
            indent: 10,
            endIndent: 16,
          );
        },
      ),*/

      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 100,
                width: 300,
                //color: Colors.red,
                margin: const EdgeInsets.only(left: 24),
                decoration: BoxDecoration(
                  color: Colors.red,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      color: Colors.pink.withOpacity(0.4),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 2), // changes position of shadow
                    ),
                  ],


                ),

              ),
            ],
          ),
          Column(
            children: [
              Container(
                width: 100,
                height: 100,
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                margin: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.black, width: 2),
                  // borderRadius: BorderRadius.circular(16)
                  // borderRadius: BorderRadius.only(
                  //   topLeft: Radius.circular(16),
                  //   bottomRight: Radius.circular(16)
                  // ),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                    image: AssetImage('assets/images/shoe.jpg'),
                    fit: BoxFit.cover,
                    opacity: 0.3,
                  ),
                ),
                child: const Text('Random'),
              ),
              const Text('Shoe')
            ],
          ),
        ],
      ),
    );
  }
}
