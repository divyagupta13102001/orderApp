import 'package:assingment2/screens/frame4.dart';
import 'package:assingment2/widgets/bottomnabbar.dart';
import 'package:assingment2/widgets/listile.dart';
import 'package:assingment2/widgets/listile2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class frame3 extends StatelessWidget {
  const frame3({super.key});
  static const routename = '/frame3';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: appdrawer(),
      body: Stack(
        children: [
          Positioned(
              top: -100,
              right: -100,
              child: CircleAvatar(
                backgroundColor: Color.fromARGB(245, 238, 255, 210),
                radius: 150,
              )),
          Positioned(
              top: -80,
              right: -80,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
              )),
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: ListTile(
                title: Text(
                  "Shopping Cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                subtitle: Text('3 items in cart'),
              ),
            ),
            Listile2('Bubble Tea', '\$56.99', 'lib/assets/Rectangle 212.png'),
            Listile2('Purple Tea', '\$25.99', 'lib/assets/Rectangle 216.png'),
            Listile2('Lemon Tea', '\$12.99', 'lib/assets/Rectangle 216.png'),
          ]),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(214, 139, 219, 10),
                    borderRadius: BorderRadius.circular(40)),
                child: ListTile(
                  leading: Text(
                    'Total',
                    style: TextStyle(color: Colors.white),
                  ),
                  title: Text('\$95.97',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  trailing: Text('Next >',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Bottomnavbar(),
    );
  }
}
