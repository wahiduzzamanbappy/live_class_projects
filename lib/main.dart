import 'package:flutter/material.dart';

/// MediaQuery | Wrap | LayoutBuilder | OrientationBuilder

void main() {
  runApp(const SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    print(screenSize.width);
    print(screenSize.height);
    print(screenSize.aspectRatio);
    print(screenSize.flipped);
    print(screenSize.longestSide);
    print(screenSize.shortestSide);
    print(MediaQuery.of(context).devicePixelRatio);
    print(MediaQuery.of(context).orientation);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      /*body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Center(
            child: Text('${constraints.maxHeight},${constraints.maxWidth}'),
          );
        },
      ),*/
      /* body: Wrap(
        spacing: 8,
        runSpacing: 10,
        crossAxisAlignment: WrapCrossAlignment.center,
        alignment: WrapAlignment.center,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        children: [
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
          ElevatedButton(onPressed: () {}, child: Text('Button'),),
        ],
      ),*/
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const Center(
              child: Text('Portrait Screen'),
            );
          } else {
            return const Center(
              child: Text('LandScape Screen'),
            );
          }
        },
      ),
    );
  }
}
