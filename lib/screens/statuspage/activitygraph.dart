import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ActivityGraph extends StatefulWidget {
  @override
  State<ActivityGraph> createState() => _ActivityGraphState();
}

class _ActivityGraphState extends State<ActivityGraph> {
  @override
  Widget ActivityGraph1 = Container(
    child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(minimum: 0, maximum: 60, interval: 30),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <ChartSeries>[
          StackedColumnSeries<GraphData, int>(
              dataSource: graphData,
              xValueMapper: (GraphData ch, _) => ch.x,
              yValueMapper: (GraphData ch, _) => ch.y1,
              width: 0.3,
              //spacing: 0.6,
              name: 'Good',
              color: Colors.green),
          StackedColumnSeries<GraphData, int>(
              dataSource: graphData,
              xValueMapper: (GraphData ch, _) => ch.x,
              yValueMapper: (GraphData ch, _) => ch.y1,
              width: 0.3,
              //spacing: 0.6,
              name: 'Good',
              color: Colors.grey.shade300),
        ]),
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ActivityGraph1;
  }
}

class GraphData {
  final int x;
  final int y1;
  final int y2;
  final int y3;
  final int y4;
  GraphData(this.x, this.y1, this.y2, this.y3, this.y4);
}

final List<GraphData> graphData = [
  GraphData(00, 15, 33, 40, 50),
  GraphData(04, 32, 20, 10, 16),
  GraphData(08, 40, 20, 10, 22),
  GraphData(12, 10, 14, 22, 44),
];
