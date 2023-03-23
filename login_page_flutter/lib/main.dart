import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    ));

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/login.png")),
        ),
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 70),
              margin:
                  EdgeInsets.only(top: 200, left: 100, right: 100, bottom: 50),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                      decoration: InputDecoration(
                    hintText: "Login",
                    prefixIcon: Icon(Icons.person),
                  )),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.toggle_on,
                        color: Colors.blue,
                        size: 30,
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: Text('Forgot password ?'),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        padding: EdgeInsets.symmetric(horizontal: 90)),
                    onPressed: () {},
                    child: Text('Sign in'),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 200, vertical: 160),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.red, width: 10),
                    shape: BoxShape.circle),
                child: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 70,
                ),
              ),
            ),
            Positioned(
              left: 160,
              top: 70,
              child: Column(
                children: [
                  Text(
                    'My Account',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontStyle: FontStyle.normal),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
