import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double valueRedSlider_peso = 0;
  double valueRedSlider_altura = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('IMC APP'),
        ),
        body: Center(
            child: Column(
          children: [
            Slider(
              min: 0,
              max: 255,
              value: valueRedSlider_peso,
              onChanged: (value) {
                print(value);
                valueRedSlider_peso = value;
                setState(() {});
              },
            ),
            Slider(
              min: 0,
              max: 255,
              value: valueRedSlider_altura,
              onChanged: (value) {
                print(value);
                valueRedSlider_altura = value;
                setState(() {});
              },
            )
          ],
        )),
      ),
    );
  }
}
