
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    
    const fontSize30 = TextStyle( fontSize: 30 );

    return Scaffold(

      appBar: AppBar(
        title: const Text('Counter Navbar'),
        elevation: 10,
      ),

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const Text('Números de clicks', style: fontSize30 ),
            Text('$counter', style: fontSize30),
          ],
        ),
      ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: const CustomFloatingActions(),
          
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        /**increment value counter */
        FloatingActionButton(
          onPressed: null ,
          child: Icon(Icons.exposure_plus_1_outlined),
        ),
        FloatingActionButton(
          onPressed: null ,
          child: Icon(Icons.restore),
        ),
        FloatingActionButton(
          onPressed: null ,
          child: Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}