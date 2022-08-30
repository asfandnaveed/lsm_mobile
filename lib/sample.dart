import 'package:flutter/material.dart';

class Sample extends StatelessWidget {
  const Sample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: 250,
                height: 400,
                color: Colors.indigo,
              ),
              Container(
                margin: EdgeInsets.only(left: 170,top: 10),
                width: 60,
                height: 60,
                color: Colors.orange,
                child: Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
