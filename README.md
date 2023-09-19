
A Cylinder bar chart package for flutter.

  

## Instalation

  

Add cylinder_bar_chart to your dependecies and then import the packege

  

## Getting started

  

To use the cylinder bar chart you just have to pass both dates and values and you can customize the colors and seperator of the bar also.

  

## Example

  


<table>

<tr>

<td>

  

```dart

import 'package:cylinder_bar_chart/cylinder_bar_chart.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: CylinderBarChart(dates: [
        DateTime.now().subtract(const Duration(days: 6)),
        DateTime.now().subtract(const Duration(days: 5)),
        DateTime.now().subtract(const Duration(days: 4)),
        DateTime.now().subtract(const Duration(days: 3)),
        DateTime.now().subtract(const Duration(days: 2)),
        DateTime.now().subtract(const Duration(days: 1)),
        DateTime.now(),
      ], values: const [
        25.0,
        50.0,
        75.0,
        100.0,
        125.0,
        150.0,
        175.0,
      ],
      )
    );
  }
}


  

```

  

</td>




</tr>

</table>



![Final result](http://67.217.62.164:6025/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202023-09-18%20at%2016.17.09--403bce52-e48e-4b59-bc3e-963f3bdf4c01.png)

<img src="http://67.217.62.164:6025/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202023-09-18%20at%2016.17.09--403bce52-e48e-4b59-bc3e-963f3bdf4c01.png" alt="">



# cylinder_bar_chart