
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const fontSize30 = TextStyle( fontSize: 30 ); 

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample Navbar'),
        elevation: 10,
      ),
      body: Center(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            Text('Números de clicks', style: fontSize30 ),
            Text('10', style: fontSize30),
          ],
        ),

      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Haciendo click');
        },
        tooltip: 'Press for click',
        child: const Icon(Icons.add),
      ),

    );
  }
}