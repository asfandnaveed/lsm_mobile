import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreenSTF(),
    );
  }
}

class LoginScreenSTF extends StatefulWidget {
  const LoginScreenSTF({Key? key}) : super(key: key);

  @override
  State<LoginScreenSTF> createState() => _LoginScreenSTFState();
}

class _LoginScreenSTFState extends State<LoginScreenSTF> {

  TextEditingController email_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();


  void userLogin() async{

    //Email corvit@sample.com
    //password 123456
    String url = 'https://prototype.analogenterprises.com/corvit/login.php';

    Map<String,dynamic> map  = Map<String,dynamic>();

    map['email']=email_controller.text;
    map['password']=password_controller.text;

    var response = await http.post(Uri.parse(url),body: map);

    print(response.body);

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Column(
          children: [
            Container(
              child: TextField(
                controller: email_controller,
                decoration: InputDecoration(
                  hintText: 'Enter Email'
                ),
              ),
            ),

            Container(
              child: TextField(
                controller: password_controller,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password'
                ),
              ),
            ),

            ElevatedButton(
                onPressed: (){
                  userLogin();
                },
                child: Text(
                  'LOGIN'
                ),
            ),
          ],
        ),
      ),
    );
  }
}

