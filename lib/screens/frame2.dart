import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class frame2 extends StatelessWidget {
  const frame2({super.key});
  static const routename = '/frame2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(245, 201, 249, 124),
        body: SingleChildScrollView(
          child: Stack(children: [
            Positioned(
                top: -100,
                right: -100,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(245, 152, 203, 70),
                  radius: 150,
                )),
            Positioned(
                top: -80,
                right: -80,
                child: CircleAvatar(
                  backgroundColor: Color.fromARGB(245, 201, 249, 124),
                  radius: 100,
                )),
            Column(
              children: [
                AppBar(
                  elevation: null,
                  backgroundColor: Color.fromARGB(245, 201, 249, 124),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                  decoration: BoxDecoration(
                      // color: Color.fromARGB(245, 201, 249, 124)
                      ),
                  height: 200,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Lemon Tea',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(124, 24, 47, 25)),
                                  )
                                ],
                              ),
                              Row(
                                children: [Text('Good day time')],
                              ),
                              Row(
                                children: [
                                  Text(
                                    '\$12.99',
                                    style: TextStyle(
                                        fontSize: 45,
                                        fontWeight: FontWeight.bold,
                                        color: Color.fromARGB(124, 24, 47, 25)),
                                  )
                                ],
                              ),
                            ]),
                      ),
                    ]),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Particulars',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Container(
                            // height: 50,
                            child: Flexible(
                              child: Text(
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,'),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(245, 132, 163, 82),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(245, 132, 163, 82),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(245, 132, 163, 82),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(245, 132, 163, 82),
                            ),
                            Icon(
                              Icons.star,
                              color: Color.fromARGB(245, 132, 163, 82),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  height: 70,
                                  width: 65,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(245, 201, 249, 124),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text('500 ml'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  alignment: Alignment.bottomCenter,
                                  height: 70,
                                  width: 65,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(245, 201, 249, 124),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text('Less Ice'),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  padding: EdgeInsets.all(8),
                                  alignment: Alignment.bottomCenter,
                                  height: 70,
                                  width: 65,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(245, 201, 249, 124),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: Text('Sugar'),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Services',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 100,
                            child: Flexible(
                                child: Text(
                                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,')),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              child: Container(
                  height: 200,
                  child: Image.asset(
                    'lib/assets/image 2.png',
                    fit: BoxFit.cover,
                  )),
              bottom: 400,
              right: 10,
            )
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.av_timer_outlined), label: 'time'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'like'),
          BottomNavigationBarItem(
              label: 'purchase',
              icon: Container(
                width: 130,
                decoration: BoxDecoration(
                    color: Color.fromARGB(245, 132, 163, 82),
                    borderRadius: BorderRadius.circular(40)),
                child: TextButton(
                  child: Text(
                    'Purchase',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
              ))
        ]));
  }
}
