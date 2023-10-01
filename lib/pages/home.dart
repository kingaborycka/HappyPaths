import 'package:flutter/material.dart';
import 'package:src/misc/myColors.dart';
import 'package:src/pages/armed.dart';
import 'package:src/widgets/top_navigation_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: <Widget>[
        Opacity(
          opacity: 0.25,
          child: Image.asset(
            'assets/happy path image 1.jpg',
            height: MediaQuery.of(context).size.height * 0.9,
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: const TopNavigationBar(),
          bottomNavigationBar: BottomAppBar(
            color: Colors.transparent,
            shadowColor: Colors.transparent,
            child: Wrap(
              alignment: WrapAlignment.spaceAround,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                    child: FloatingActionButton(
                      elevation: 0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Armed()),
                        );
                      },
                      shape: const CircleBorder(),
                      backgroundColor: MyColors.orange,
                      child: Icon(Icons.center_focus_weak_rounded,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.2),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.6,
                  width: MediaQuery.of(context).size.width * 0.6,
                  child: Padding(
                    padding: EdgeInsets.all(
                        MediaQuery.of(context).size.width * 0.05),
                    child: FloatingActionButton(
                      elevation: 0,
                      onPressed: () {},
                      shape: const CircleBorder(),
                      backgroundColor: Colors.red,
                      child: Icon(Icons.warning_rounded,
                          color: Colors.white,
                          size: MediaQuery.of(context).size.width * 0.2),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
