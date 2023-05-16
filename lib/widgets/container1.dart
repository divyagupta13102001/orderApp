import 'package:assingment2/screens/frame2.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class container1 extends StatelessWidget {
  String img;
  String txt;
  container1(this.img, this.txt);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(frame2.routename);
        },
        child: Container(
          height: 140,
          width: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color.fromARGB(173, 210, 248, 161)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Image.asset(img), Text(txt)],
            ),
          ),
        ),
      ),
    );
  }
}
