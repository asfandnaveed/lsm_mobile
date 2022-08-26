import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Container(
              child: Column(
                children: [
                  Text('Text 1'),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Click Me'),
                  ),
                  Text('Text 2'),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Click Me'),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Click Me'),
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Click Me'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Click Me'),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Click Me'),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Click Me'),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

}