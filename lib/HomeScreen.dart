import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 270,
            height: 340,
            child: Card(
              child: Column(
                children: [
                  /// Image Container
                  Container(
                    height: 180,
                    child: Image.network('https://prototype.analogenterprises.com/corvit/images/shoes.png'),
                  ),
                  /// Product Name Container
                  Container(
                    margin:EdgeInsets.only(top: 10.0),
                    child: Text(
                      'Leather Shoes',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                        color: Colors.deepPurpleAccent
                      ),
                    ),
                  ),
                  /// Product Price Container
                  Container(
                    margin:EdgeInsets.only(top: 10.0),
                    child: Text(
                      '9599.00 RS',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.deepPurpleAccent
                      ),
                    ),
                  ),
                  /// Add to Cart Button Container
                  Container(
                    margin:EdgeInsets.only(top: 10.0),
                    width: 230,
                    height: 1,
                    color: Colors.deepPurple,
                  ),
                  Container(
                    width: 200,
                    margin:EdgeInsets.only(top: 5.0),
                    child: ElevatedButton(
                      onPressed: (){},
                      child: Text(
                        'Add to Cart',

                      ),
                    ),
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
