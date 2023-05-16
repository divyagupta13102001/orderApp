import 'package:assingment2/screens/frame4.dart';
import 'package:assingment2/widgets/bottomnabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../widgets/container1.dart';
import '../widgets/listile.dart';

class frame1 extends StatelessWidget {
  const frame1({super.key});
  static const routename = frame1();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Hey John!',
          style: TextStyle(color: Colors.black),
        ),
      ),
      drawer: appdrawer(),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Color.fromARGB(19, 0, 0, 0)),
              height: 40,
              child: Row(
                children: [
                  Icon(Icons.search),
                  Text(
                    'Search',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: DefaultTabController(
              length: 3,
              child: TabBar(
                  // indicator: UnderlineTabIndicator(
                  //     borderRadius: BorderRadius.circular(100)),
                  tabs: [
                    Tab(
                      child: FittedBox(
                        child: Text(
                          'Recommendation',
                          style: TextStyle(color: Colors.black45),
                          selectionColor: Color.fromARGB(255, 180, 236, 185),
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Black Tea',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Green Tea',
                        style: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ]),
            ),
          ),
          Container(
            height: 200,
            child: Scrollbar(
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    container1('lib/assets/image 2.png', 'Lemon Tea'),
                    container1('lib/assets/image 3.png', 'Black Tea'),
                    container1('lib/assets/image 3.png', 'Green Tea'),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Row(
              children: [
                Text(
                  'Will Buy',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          Container(
            child: ListView(
              shrinkWrap: true,
              children: [
                listile('lib/assets/Rectangle 212.png', 'Bubble Tea',
                    'Good day time', '\$56.99'),
                listile('lib/assets/Rectangle 216.png', 'Purple tea',
                    'Happy Hours', '\$25.99')
              ],
            ),
          )
        ]),
      ),
      bottomNavigationBar: Bottomnavbar(),
    );
  }
}
