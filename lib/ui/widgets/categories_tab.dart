import 'package:flutter/material.dart';

class CategoryTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(top: 24, left: 16),
      width: width,
      height: width*0.35,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, i) {
          return Container(
            margin : EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/category${i+1}.png')
              )
              // border: Border.all(color: theme.primaryColor),
            ),
            width: width*0.35,
            height: width*0.35,
          );
        },
        scrollDirection: Axis.horizontal,
        itemCount: 4,
      ),
    );
  }
}
