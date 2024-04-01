import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String changes = 'click';
  String changed = 'do you';
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('HELLOW'),
          backgroundColor: Colors.orange,
        ),
        body: Center(
          child: currentIndex == 0
              ? Container(
                  width: double.maxFinite,
                  height: double.maxFinite,
                  color: const Color.fromARGB(255, 90, 129, 145),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.lime,
                          foregroundColor: Colors.white,
                        ),
                        onPressed: () {
                          setState(() {
                            changes = 'pressed';
                          });
                        },
                        child: Text(changes),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            changes = 'pressed';
                          });
                        },
                        child: Text(changes),
                      ),
                    ],
                  ),
                )
              : currentIndex == 1
                  ? Container(
                      width: double.maxFinite,
                      height: double.maxFinite,
                      color: const Color.fromARGB(255, 90, 129, 145),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lime,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () {
                              setState(() {
                                changed = 'we love you';
                              });
                            },
                            child: Text(changed),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  changed = 'we love you';
                                });
                              },
                              child: Text(changed)),
                        ],
                      ),
                    )
                  : Image.asset('images/image.jpg'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'home',
                backgroundColor: Colors.orange,
                icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                label: 'settings',
                backgroundColor: Colors.orange,
                icon: Icon(Icons.settings)),
            BottomNavigationBarItem(
                label: 'shop',
                backgroundColor: Colors.orange,
                icon: Icon(
                  Icons.shopping_cart,
                )),
            BottomNavigationBarItem(
                label: 'profile',
                backgroundColor: Colors.orange,
                icon: Icon(Icons.person)),
          ],
          currentIndex: currentIndex,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.white,
          backgroundColor: Colors.orange,
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}
