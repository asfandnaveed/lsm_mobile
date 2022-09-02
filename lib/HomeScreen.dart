import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreenSTF(),
    );
  }
}


class HomeScreenSTF extends StatefulWidget {
  const HomeScreenSTF({Key? key}) : super(key: key);

  @override
  State<HomeScreenSTF> createState() => _HomeScreenSTFState();
}

class _HomeScreenSTFState extends State<HomeScreenSTF> {

  List<String> productName = [
    'Branded Perfume',
    'Polo T-shirt',
    'Sunglasses',
    'Sofa'
  ];

  List<String> productPrice = [
    '45.67',
    '20.45',
    '78.90',
    '666.89'
  ];

  List<String> productImages = [
    'assets/images/perfume.png',
    'assets/images/shirt.png',
    'assets/images/sunglass.png',
    'assets/images/sofa.png'
  ];

  String baseurl = 'https://prototype.analogenterprises.com/corvit/';


  void getProductsData () async{
    
    String url = 'https://prototype.analogenterprises.com/corvit/api.php';
    
    var response = await  http.get(Uri.parse(url));

    var map =   jsonDecode(response.body);

    productName.clear();
    productImages.clear();
    productPrice.clear();
    
    for(int i=0 ; i<map.length ;i++){
      
      productName.add(map[i]["p_name"]);
      productPrice.add(map[i]["p_price"]);
      productImages.add(map[i]["p_image"]);

    }
    setState((){
      print('Value updated');
    });



  }


  @override
  initState(){
    super.initState();
    getProductsData();
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: ListView.builder(
          itemCount: productName.length,
          itemBuilder: (BuildContext context, index){
            return Container(
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
                            child: Image.network(baseurl+productImages[index]),
                          ),
                          /// Product Name Container
                          Container(
                            margin:EdgeInsets.only(top: 10.0),
                            child: RatingBar(
                              initialRating: 3.5,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemSize: 25,
                              ratingWidget: RatingWidget(
                                full: Icon(Icons.star,
                                  color: Colors.orangeAccent,
                                ),
                                half: Icon(Icons.star_half,
                                  color: Colors.orangeAccent,
                                ),
                                empty: Icon(Icons.star_border,
                                  color: Colors.orangeAccent,
                                ),
                              ),
                              itemPadding: EdgeInsets.symmetric(horizontal: 0.0),
                              onRatingUpdate: (rating) {
                                print(rating);
                              },
                            ),
                          ),
                          /// Product Price Container
                          Container(
                            margin:EdgeInsets.only(top: 10.0),
                            child: Text(
                              '\$ '+productPrice[index],
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
                    height: 300,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.brown.shade800,

                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: RotatedBox(
                      quarterTurns: -1,
                      child: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Text(
                          productName[index],
                          style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 2.0
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

