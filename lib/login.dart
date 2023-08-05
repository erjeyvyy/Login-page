import 'package:flutter/material.dart';

void main() {
  runApp(const loginPage());
}

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffCBBACC),
                  Color(0xff2580B3),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 16,),
                Expanded(
                  flex: 2,
                  child: Image(
                    image: AssetImage('images/login.png'),
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),

                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 55),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(text: 'Hello', style: TextStyle(color: Colors.cyan.shade900)),
                              TextSpan(text: ' user!'),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(text: 'Ready '),
                              TextSpan(text: 'to Plan?', style: TextStyle(color: Colors.cyan.shade900)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),



                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: Column(
                      children: [

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Email",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            fillColor: Colors.white38,
                            filled: true,
                            hintStyle: TextStyle(color: Colors.blueGrey),
                          ),
                        ),

                        SizedBox(height: 16),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white70),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white, width: 2.0),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            fillColor: Colors.white38,
                            filled: true,
                            hintStyle: TextStyle(color: Colors.blueGrey),
                          ),
                        ),



                        SizedBox(height: 16),

                        ElevatedButton(
                          onPressed: () {},
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 20), // Adjust the vertical padding
                            child: Text(
                              "Login",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Colors.blueGrey,
                            padding: EdgeInsets.symmetric(horizontal: 0), // No horizontal padding
                            minimumSize: Size(310, 0), // Set a fixed width
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                RichText(
                                  text: TextSpan(
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                                    children: [
                                      TextSpan(text: 'Do not have an account?'),
                                      TextSpan(text: ' Sign in', style: TextStyle(color: Colors.cyan.shade900)),
                                    ],
                                  ),
                                ),


                                SizedBox(height: 45,),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          thickness: 0.5,
                                          color: Colors.white70,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                                        child: Text(
                                          "Or continue with",
                                          style: TextStyle(color: Colors.white70),
                                        ),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          thickness: 0.5,
                                          color: Colors.white70,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20,),

                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                                child: Row(
                                children: [
                                  SizedBox(width: 40,),
                                  Image(
                                    image: AssetImage('images/google.png'),
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 20,),
                                  Image(
                                    image: AssetImage('images/apple.png'),
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 20,),
                                  Image(
                                    image: AssetImage('images/facebook.png'),
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.contain,
                                  ),
                                ],
                              ),
                              ),
                              ],
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
