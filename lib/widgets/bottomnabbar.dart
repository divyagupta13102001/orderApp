import 'package:assingment2/screens/frame1.dart';
import 'package:assingment2/screens/frame3.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Bottomnavbar extends StatefulWidget {
  const Bottomnavbar({super.key});

  @override
  State<Bottomnavbar> createState() => _BottomnavbarState();
}

class _BottomnavbarState extends State<Bottomnavbar> {
  int _selectedIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Colors.green,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'shop',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? CircleAvatar(
                        child: IconButton(
                          icon: Icon(Icons.home),
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) => frame1(),
                              ),
                            );
                          },
                        ),
                        backgroundColor: Colors.green,
                      )
                    : IconButton(
                        icon: Icon(Icons.home),
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => frame1(),
                            ),
                          );
                        },
                      ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                  icon: _selectedIndex == 2
                      ? CircleAvatar(
                          child: IconButton(
                            icon: Icon(Icons.shopping_cart),
                            onPressed: () {
                              Navigator.of(context).pushNamed(frame3.routename);
                            },
                          ),
                          backgroundColor: Colors.green,
                        )
                      : IconButton(
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () {
                            Navigator.of(context).pushNamed(frame3.routename);
                          },
                        ),
                  label: 'cart'),
            ]),
      ),
    );
  }
}
