import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Listile2 extends StatelessWidget {
  String title;
  String subtitle;
  String imgL;
  Listile2(this.title, this.subtitle, this.imgL);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(color: Color.fromARGB(255, 69, 109, 67)),
        ),
        leading: Container(
          height: 250,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                  color: Color.fromARGB(245, 201, 249, 124), width: 5)),
          child: Image.asset(
            imgL,
            fit: BoxFit.cover,
          ),
        ),
        trailing: Text(
          '- 1 +',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
        ),
      ),
    );
  }
}
