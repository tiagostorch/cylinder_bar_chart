<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

A Cylinder bar chart package for flutter.

## Instalation

Add cylinder_bar_chart to your dependecies and then import the packege

## Getting started

To use the cylinder bar chart you just have to pass both dates and values and you can customize the colors and seperator of the bar also.

## Example

<hr>
<table>
<tr>
<td>

```dart
import 'package:flutter/material.dart';
import 'package:cylinder_bar_chart/cylinder_bar_chart.dart';

void main() {
  runApp(CylinderBarChart(
    dates: [
      DateTime.now(),
      DateTime.now(),
      DateTime.now(),
      DateTime.now(),
      DateTime.now(),
      DateTime.now(),
      DateTime.now()
    ],
    values: const [150.0, 200.0, 23.0, 100.0, 145.0, 77, 53],
  ));
}

class CylinderBarChart extends StatelessWidget {
  const CylinderBarChart({
    super.key,
    required this.dates,
    required this.values,
    this.mainColor = const Color(0xff73B3FE),
    this.accentColor = const Color(0xff258AFE),
    this.separator,
  });
  final List<DateTime> dates;
  final List<double> values;
  final Color mainColor;
  final Color accentColor;
  final Widget? separator;
  @override
  Widget build(BuildContext context) {
    double maxValue = values.reduce((curr, next) => curr > next ? curr : next);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Bite me'),
        ),
        body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Text(
                  values[index].toString(),
                ),
                CylinderBar(
                  value: values[index],
                  maxValue: maxValue,
                  mainColor: mainColor,
                  accentColor: accentColor,
                ),
                Text(
                  "${dates[index].day}/${dates[index].month}",
                ),
              ],
            );
          },
          separatorBuilder: (context, index) => separator ?? const Gap(12),
          itemCount: values.length,
        ),
      ),
    );
  }
}

```

</td>
<td>
<img src="http://67.217.62.164:6025/Images/Simulator%20Screenshot%20-%20iPhone%2014%20Pro%20-%202023-09-18%20at%2016.17.09--403bce52-e48e-4b59-bc3e-963f3bdf4c01.png" alt="">
</td>
</tr>
</table>

# cylinder_bar_chart
