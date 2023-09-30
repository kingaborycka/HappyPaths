import 'dart:async';

import 'package:flutter/material.dart';

import '../widgets/timer_widget.dart';

class Armed extends StatelessWidget {
  const Armed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 300,
              ),
              TimerWidget(),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(""),
      toolbarHeight: 100,
      backgroundColor: Colors.grey[300],
    );
  }
}
