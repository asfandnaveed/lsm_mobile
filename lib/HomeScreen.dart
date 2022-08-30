import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              /// Product Container
              Container(
                margin: EdgeInsets.only(left: 20),
                width: 270,
                height: 340,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(260),
                    ),
                  ),
                  elevation: 9.0,
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
                            fontSize: 27,
                            fontWeight: FontWeight.w500,
                            color: Colors.brown.shade700
                          ),
                        ),
                      ),
                      /// Product Price Container
                      Container(
                        margin:EdgeInsets.only(top: 10.0),
                        child: Text(
                          '\$ 9599.00 ',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.brown
                          ),
                        ),
                      ),
                      /// Add to Cart Button Container
                      Container(
                        margin:EdgeInsets.only(top: 10.0),
                        width: 230,
                        height: 1,
                        color: Colors.brown.shade900,
                      ),
                      Container(
                        width: 200,
                        margin:EdgeInsets.only(top: 5.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.brown,
                            elevation: 5.0,
                          ),
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

              /// Overlap Container
              Container(
                margin: EdgeInsets.only(top: 20),
                color: Colors.brown.shade800,
                height: 300,
                width: 40,
                child: RotatedBox(
                  quarterTurns: -1,
                  child: Text(
                    'Leather Shoes',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
