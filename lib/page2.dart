import 'package:flutter/material.dart';

class Page2Screen extends StatelessWidget {
  const Page2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page 2 screen"),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.amberAccent
              ),
              child: Text('Home drawer')
            ),

            listTile(
              'information personnel',
              (){
                print('information personnel');
              },
            ),
            const Divider(
              thickness: 4.0,
              color: Colors.black,
            ),
            listTile(
              'information personnel',
              (){
                print('information personnel');
              },
            ),
            
          ],
        ),
      ),
      body: Column(
        children: const [
          
        ],
      )
    );
  }

  Widget listTile(String title, Function onLongPress, {IconData icon = Icons.chevron_right}){
    return ListTile(
      title: Text(title),
      trailing: Icon(icon),
      onLongPress: () {
        onLongPress();
      },
    );
  }
}