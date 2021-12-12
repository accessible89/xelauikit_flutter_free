import '../xela_color.dart';
import 'package:flutter/material.dart';

enum XelaChartType {
  LINE, BAR, PIE, DOUGHNUT
}



class XelaLineChartDataset {
  final String label;
  final List<double> data;
  final Color lineColor;
  final Color pointColor;
  final Color fillColor;
  final double tension;
  final Color pointColorBackground;
  XelaLineChartDataset({
    required this.label,
    required this.data,
    this.lineColor = XelaColor.Gray11,
    this.pointColor = XelaColor.Gray11,
    this.fillColor = Colors.transparent,
    this.tension = 0.1,
    this.pointColorBackground = Colors.white
  });
}

class XelaBarChartDataset {
  final String label;
  final List<double> data;
  final Color fillColor;
  XelaBarChartDataset({
    required this.label,
    required this.data,
    this.fillColor = XelaColor.Blue3
  });
}

class XelaPieChartDataset {
  final String label;
  final List<double> data;
  final List<Color> fillColors;
  XelaPieChartDataset({
    required this.label,
    required this.data,
    required this.fillColors
  });
}

class XelaDoughnutDataset {
  final String label;
  final List<double> data;
  final List<Color> fillColors;
  XelaDoughnutDataset({
    required this.label,
    required this.data,
    required this.fillColors
  });
}