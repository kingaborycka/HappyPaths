import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:src/misc/myColors.dart';
import 'package:src/widgets/top_navigation_bar.dart';

import '../widgets/timer_widget.dart';

class Armed extends StatelessWidget {
  const Armed({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const TopNavigationBar(),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.width * 0.11,
                    width: MediaQuery.of(context).size.width * 0.11,
                    child: Icon(Icons.phone,
                        color: MyColors.green,
                        size: MediaQuery.of(context).size.width * 0.11)),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Mom",
                    style: TextStyle(fontSize: 40),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: [
                SizedBox(
                    height: MediaQuery.of(context).size.width * 0.1,
                    width: MediaQuery.of(context).size.width * 0.1,
                    child: Icon(Icons.pin_drop_rounded,
                        color: MyColors.green,
                        size: MediaQuery.of(context).size.width * 0.1)),
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Bakers St.",
                    style: TextStyle(fontSize: 40),
                  ),
                )
              ],
            ),
          ),
          Image.asset("map.png",
            height: MediaQuery.of(context).size.width / 2,
          ),
          const Center(
            child: TimerWidget(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        shadowColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.3,
              width: MediaQuery.of(context).size.width * 0.3,
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.05),
                child: FloatingActionButton(
                  elevation: 0,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  shape: const CircleBorder(),
                  backgroundColor: MyColors.gray,
                  child: Icon(Icons.close,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width * 0.15),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.5,
              width: MediaQuery.of(context).size.width * 0.5,
              child: Padding(
                padding:
                    EdgeInsets.only(bottom: MediaQuery.of(context).size.width * 0.05),
                child: FloatingActionButton(
                  elevation: 0,
                  onPressed: () {},
                  shape: const CircleBorder(),
                  backgroundColor: Colors.red,
                  child: Icon(Icons.warning_rounded,
                      color: Colors.white,
                      size: MediaQuery.of(context).size.width * 0.25),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(""),
      toolbarHeight: 100,
      backgroundColor: Colors.grey[300],
    );
  }
}
