
import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 10;

  void increase() {
    counter++;
    setState(() {
      
    });
  }

  void decrease() {
    counter--;
    setState(() {
      
    });
  }

  void reset() {
    counter = 0;
    setState(() {
      
    });
  }


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
      floatingActionButton: CustomFloatingActions( increasteFn: increase, decreasteFn: decrease, resetFn: reset, ),
          
    );
  }
}

class CustomFloatingActions extends StatelessWidget {

  final Function increasteFn;
  final Function decreasteFn;
  final Function resetFn;

  const CustomFloatingActions({
    
    Key? key, 
    required this.increasteFn,
    required this.decreasteFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        /**increment value counter */
        FloatingActionButton(
          onPressed: () => increasteFn(),
          child: const Icon(Icons.exposure_plus_1_outlined),
        ),

        FloatingActionButton(
          onPressed: () => resetFn()  ,
          child: const Icon(Icons.restore),
        ),

        FloatingActionButton(
          onPressed: () => decreasteFn() ,
          child: const Icon(Icons.exposure_minus_1_outlined),
        ),
      ],
    );
  }
}