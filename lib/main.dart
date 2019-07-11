import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0.0,
          centerTitle: true,
          leading: Icon(Icons.menu, color: Colors.purple,),
        ),
        body: PageView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.purple),
                        border: OutlineInputBorder(),
                        labelText: "Email",
                        prefixIcon: Icon(
                          Icons.mail,
                          color: Colors.black,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: TextField(
                    obscureText: true,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelStyle: TextStyle(color: Colors.purple),
                        border: OutlineInputBorder(),
                        labelText: "Password",
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        )),
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 246.0, right: 10.0, top: 3.0),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.purple),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: OutlineButton(
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.purple),
                      ),
                      onPressed: () {},
                      borderSide: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0))),
                ),
                SizedBox(height: 10.0),
                Center(
                  child: Text(
                    'or sign in with',
                    style: TextStyle(
                      color: Colors.black
                    ),
                  ),
                ),
                Row(
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 65.0, top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  Container(
                                    height: 70.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(35.0),
                                        border: Border.all(
                                            color: Colors.grey[200],
                                            style: BorderStyle.solid,
                                            width: 2.0)),
                                    child: Container(
                                      child: Center(
                                        child: IconButton(
                                          icon: Image.asset('images/twitter.png'),
                                          color: Colors.lightBlueAccent[300],
                                          onPressed: () {
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10.0,
                                  ),
                                  Container(
                                    height: 70.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(35.0),
                                        border: Border.all(
                                            color: Colors.grey[200],
                                            style: BorderStyle.solid,
                                            width: 2.0)),
                                    child: Container(
                                      child: Center(
                                        child: IconButton(
                                          icon: Image.asset('images/fb.png'),
                                          color: Colors.lightBlueAccent[300],
                                          onPressed: () {
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10.0),
                                  Container(
                                    height: 70.0,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(35.0),
                                        border: Border.all(
                                            color: Colors.grey[200],
                                            style: BorderStyle.solid,
                                            width: 2.0),
                                    ),
                                    child: Container(
                                      child: Center(
                                        child: IconButton(
                                          icon: Image.asset('images/gmail.jpg'),
                                          color: Colors.lightBlueAccent[300],
                                          onPressed: () {
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }
}