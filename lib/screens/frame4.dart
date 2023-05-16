import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class appdrawer extends StatelessWidget {
  const appdrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(children: [
        Positioned(
            top: 0,
            left: -70,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(245, 224, 249, 188),
              radius: 200,
            )),
        Positioned(
            top: -10,
            left: -100,
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(245, 201, 249, 124),
              radius: 200,
            )),
        Column(
          children: [
            Container(
              alignment: Alignment.bottomCenter,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Container(
                    height: 100,
                    child: Image.asset(
                      'lib/assets/Ellipse 157.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text('John Tim'),
                  subtitle: Text('Edit Profile'),
                ),
              ),
            ),
            Divider(
              thickness: 3,
              color: Colors.black,
            ),
            Container(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  padding: EdgeInsets.all(10),
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Categories',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Your Orders',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Wishlist',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'FAQs',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Log Out',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
