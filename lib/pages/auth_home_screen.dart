import 'package:flutter/material.dart';

import '../widgets/widgets.dart';
import '../services/size.dart';

class AuthHomeScreen extends StatefulWidget {
  static const String route_name = "auth_home_screen";

  @override
  _AuthHomeScreenState createState() => _AuthHomeScreenState();
}

class _AuthHomeScreenState extends State<AuthHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size _size = new Size(context);
    return Scaffold(
      body: Stack(
        children: [
          PhotosWithColorLayers(
            colors: [
              Color.fromRGBO(0, 233, 100, 0.41),
              Color.fromRGBO(0, 19, 30, 0.68),
            ],
            imagePath: "assets/images/auth_home_screen.png",
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: _size.height(95), left: _size.width(36)),
                width: _size.width(265),
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(text: "Welcome to our"),
                      TextSpan(
                        text: "community",
                        style: TextStyle(
                          color: Color.fromRGBO(0, 233, 100, 1),
                        ),
                      ),
                    ],
                    style: TextStyle(
                      fontSize: _size.font(30),
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_size.height(42)),
                    topRight: Radius.circular(_size.height(42)),
                  ),
                ),
                width: double.infinity,
                height: _size.height(160),
                child: Column(
                  children: [
                    Expanded(
                      child: Center(
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontSize: _size.font(20),
                            color: Color.fromRGBO(0, 233, 100, 1),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 233, 100, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(_size.height(42)),
                            topRight: Radius.circular(_size.height(42)),
                          ),
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: _size.font(20),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
