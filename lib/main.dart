import 'package:flutter/material.dart';

// Drawer, NavigationBar, Bottom Navigation bar, SingleChildScrollView, ScrollBar, ListView, ListViewBuilder

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Hello World App',
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
    'Niloy',
    'Niloy',
    'Niloy',
    'Niloy',
    'Niloy',
    'Niloy',
    'Niloy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit)),
          // IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        ],
        // leading: Icon(Icons.add),
      ),
      drawer: const Drawer(
        shadowColor: Colors.red,
        backgroundColor: Colors.white54,
        width: 300,
        child: Column(
          children: [Text('dfsdf')],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: 0,
      //   selectedItemColor: Colors.pink,
      //   unselectedItemColor: Colors.blue,
      //   unselectedFontSize: 12,
      //   showUnselectedLabels: false,
      //   showSelectedLabels: true,
      //   onTap: (int selectedIndex) {
      //     // TODO: have to change state, will see after stateful widget
      //   },
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      //     BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
      //   ],
      // ),
      bottomNavigationBar: NavigationBar(
          selectedIndex: 1,
          onDestinationSelected: (int selectedIndex) {
            // TODO: have to change state, will see after stateful widget
          },
          destinations: [
            const NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            const NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
          ]),
      /*body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
              Text('sdfdsfd'),
            ],
          ),
        ),
      ),*/
      body: Scrollbar(
        thickness: 10,
        radius: const Radius.circular(10),
        interactive: true,
        /* child: ListView(
          scrollDirection: Axis.vertical,
          reverse: false,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          children: [
            Text('first'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('sdfdsfd'),
            Text('last'),
          ],
        ),*/
        /* child: ListView.builder(
          itemCount: 100, // 100-1 = 99 => 0 -> 99
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          itemBuilder: (context, index) {
            return Text('item $index');
          },
        ),*/
        child: ListView.builder(
          itemCount: friendList.length, // 5 (0-4)
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(friendList[index]),
            );
          },
        ),
      ),
    );
  }
}

// Suggestion => ctl + space