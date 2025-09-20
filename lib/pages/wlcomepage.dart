import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/login.dart';
import 'package:shoppingapp/pages/signup.dart';
class welcomepage extends StatelessWidget {
  const welcomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Page',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Our Store' ,style: TextStyle(
            fontFamily: 'Suwannaphum',
            fontSize: 24,

            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),),
          centerTitle: true,

        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // النص
              const Text(
                'Shop With Us',
                style: TextStyle(
                  fontFamily: 'Suwannaphum',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 20),

              // الصور جنب بعض
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/image/assimage.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 20),
                  Image.network(
                    "https://cdn-icons-png.flaticon.com/512/2331/2331970.png",
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // الأزرار
              ElevatedButton(style: ElevatedButton.styleFrom(

                backgroundColor: Colors.red[500], // Set the background color to green
              ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const SignupPage()));
                },
                child: const Text('Sign Up', style: TextStyle(color: Colors.black)),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(

                  backgroundColor: Colors.yellow[700], // Set the background color to green
                ),

                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const LoginPage()));

                },
                child: const Text('Sign In', style: TextStyle(color: Colors.black),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  }



