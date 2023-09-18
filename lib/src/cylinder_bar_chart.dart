import 'package:cylinder_bar_chart/src/components/cylinder_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
    return ListView.separated(
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
        );
  }
}
