import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          leading: Icon(CupertinoIcons.home),
          trailing:
              CupertinoSwitch(value: true, onChanged: (bool onChanged) {}),
          middle: Text("Home"),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Hello World!'),
              Text('Hello World!'),
              Text('Hello World!'),
              Text('Hello World!'),
              CupertinoButton.filled(child: Text('Hi'), onPressed: () {}),
              CupertinoTextField(),
              CupertinoTabBar(items: [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.info), label: '1'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.info), label: '2'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.info), label: '3'),
              ]),
            ],
          ),
        ));
  }
}
