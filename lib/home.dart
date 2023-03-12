import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home screen"),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: (){

                //navigator.push ==> stack routes
                // Navigator.push(
                //   context, 
                //   MaterialPageRoute(builder: (context) => const Page1Screen())
                // );

                //navigator.push ==> named routes
                Navigator.pushNamed(context, '/page1');
              },
              child: const Text(
                'go to page1',
                style: TextStyle(
                  fontSize: 25.0
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}