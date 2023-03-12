import 'package:demo/page1.dart';
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
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => Page1Screen())
                );
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