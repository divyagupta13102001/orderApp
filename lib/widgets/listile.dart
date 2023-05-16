import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class listile extends StatelessWidget {
  String title;
  String subtitle;
  String iconimg;
  String price;
  listile(this.iconimg, this.title, this.subtitle, this.price);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      leading: Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: Color.fromARGB(255, 224, 252, 198), width: 10)),
          child: Image.asset(iconimg)),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(subtitle),
      trailing: Text(price),
    );
  }
}
