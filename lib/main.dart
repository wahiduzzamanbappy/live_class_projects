
import 'package:flutter/cupertino.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Navigator.pushAndRemoveUntil(
              //   context,
              //   MaterialPageRoute(builder: (context) => Home()),
              //   (predicate) => false,
              // );
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/home',
                    (predicate) => false,
              );
            },
            child: const Text('Home'),
          ),
        ],
      ),
    );
  }
}

// class CounterScreen extends StatelessWidget {
//   CounterScreen({super.key});
//
//   int counter = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter'),
//       ),
//       body: Center(
//         child: Text('Counter value is $counter'),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           counter = counter + 1;
//         },
//         child: Icon(Icons.add),
//       ),
//     );
//   }
// }

class CounterScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CounterScreenState();
  }
}

class CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text('Counter value is $counter'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter = counter + 1;
          print(counter);
          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

