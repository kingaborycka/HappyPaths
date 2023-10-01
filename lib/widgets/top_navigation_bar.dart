import 'package:flutter/material.dart';
import 'package:src/misc/myColors.dart';

class TopNavigationBar extends StatelessWidget {
const TopNavigationBar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context){
    const topButtonsIcons = [
      Icons.home_rounded,
      Icons.person,
      Icons.settings,
      Icons.help_outline_rounded
    ];
    
    return Container(
            color: MyColors.orange,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(
                  topButtonsIcons.length,
                  (index) => SizedBox(
                    width: MediaQuery.of(context).size.width * 0.2,
                    height: MediaQuery.of(context).size.width * 0.2,
                    child: FloatingActionButton(
                      elevation: 0,
                      hoverElevation: 0,
                      backgroundColor: MyColors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      onPressed: () {},
                      child: Icon(
                        topButtonsIcons[index],
                        size: MediaQuery.of(context).size.width * 0.1,
                      ),
                    ),
                  ),
                )),
          );
  }
}