import 'package:flutter/material.dart';

class Page1Screen extends StatelessWidget {
  const Page1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 1 screen"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back, color: Colors.white,),
        )
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5.0),
                child: const Text('Back to home',  style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white
                )),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                // supprimer toutes les routes precedentes
                Navigator.pushNamedAndRemoveUntil(context, '/page2', (route) => false);
              },
              child: const Text('Go to page2',  style: TextStyle(fontSize: 25.0)),
            )
          ],
        ),
      )
    );
  }
}