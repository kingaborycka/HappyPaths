import 'dart:html';

import 'package:flutter/material.dart';
import 'package:src/pages/armed.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Track Me'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Armed()),
            );
          },
        ),
      ),
    );
  }
}
