import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double valueRedSlider_peso = 0;
  double valueRedSlider_altura = 0;
  double imc = 0;

  void calcularIMC() {
    double peso = valueRedSlider_peso;
    double altura = valueRedSlider_altura / 100;
    imc = peso / (altura * altura);
  }

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
                max: 250,
                value: valueRedSlider_peso,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    valueRedSlider_peso = value;
                    calcularIMC();
                  });
                },
              ),
              Text('Peso: ${valueRedSlider_peso.toStringAsFixed(0)} Kg'),
              Slider(
                min: 0,
                max: 200,
                value: valueRedSlider_altura,
                onChanged: (value) {
                  print(value);
                  setState(() {
                    valueRedSlider_altura = value;
                    calcularIMC();
                  });
                },
              ),
              Text('Altura: ${valueRedSlider_altura.toStringAsFixed(0)} cm'),
              const SizedBox(
                height: 30.0,
              ),
              ElevatedButton(
                onPressed: () {
                  calcularIMC();
                },
                child: Text('CALCULAR'),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'IMC: ${imc.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
