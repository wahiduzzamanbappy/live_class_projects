
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Cupertino Design System

void main() {
  runApp(const CupertinoExpApp());
}

class CupertinoExpApp extends StatelessWidget {
  const CupertinoExpApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return const CupertinoApp(
        title: 'Experiment Project',
        home: Home(),
      );
    } else {
      return const MaterialApp(
        home: Home(),
      );
    }
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('Home'),
        trailing: Icon(CupertinoIcons.arrow_up_doc),
        leading: Icon(CupertinoIcons.arrow_up),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton.filled(
            borderRadius: BorderRadius.circular(16),
            child: const Text('Tap here'),
            onPressed: () {},
          ),
          CupertinoListTile(
            onTap: () {},
            title: const Text('Title'),
            backgroundColor: CupertinoColors.white,
            subtitle: const Text('subtitle'),
            trailing: const Icon(CupertinoIcons.airplane),
          ),
          const CupertinoTextField(),
          CupertinoSwitch(value: false, onChanged: (value) {})
        ],
      ),
    );
  }
}
