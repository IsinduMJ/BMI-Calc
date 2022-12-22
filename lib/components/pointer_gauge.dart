import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class PointerGauge extends StatelessWidget {
  const PointerGauge({super.key});

  @override
  Widget build(BuildContext context) {
    double bmiValue = 22.22;
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          child: SfRadialGauge(
            axes: [
              RadialAxis(
                radiusFactor: 0.85,
                minimum: 10,
                maximum: 60,
                startAngle: 180,
                endAngle: 0,
                showTicks: false,
                showLabels: false,
                pointers: [
                  NeedlePointer(
                    value: bmiValue,
                    enableAnimation: true,
                    needleEndWidth: 5,
                    knobStyle: KnobStyle(
                      knobRadius: 0.0325,
                    ),
                  ),
                ],
                ranges: <GaugeRange>[
                  GaugeRange(
                    startValue: 10,
                    endValue: 18.5,
                    startWidth: size.width * 0.125,
                    endWidth: size.width * 0.125,
                    color: Colors.yellow[400],
                  ),
                  GaugeRange(
                    startValue: 18.5,
                    endValue: 25,
                    startWidth: size.width * 0.125,
                    endWidth: size.width * 0.125,
                    color: Colors.green[400],
                  ),
                  GaugeRange(
                    startValue: 25,
                    endValue: 30,
                    startWidth: size.width * 0.125,
                    endWidth: size.width * 0.125,
                    color: Colors.orange[600],
                  ),
                  GaugeRange(
                    startValue: 30,
                    endValue: 45,
                    startWidth: size.width * 0.125,
                    endWidth: size.width * 0.125,
                    color: Colors.red[400],
                  ),
                  GaugeRange(
                    startValue: 45,
                    endValue: 60,
                    startWidth: size.width * 0.125,
                    endWidth: size.width * 0.125,
                    color: Colors.red[900],
                  ),
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: size.height * 0.035,
          left: size.width * 0.1525,
          child: Container(
            height: size.height * 0.165,
            width: size.width * 0.6,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (bmiValue >= 45) ...[
                  Text(
                    bmiValue.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.red[600],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1.5, 1.5),
                          blurRadius: 2,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Highly Obses',
                    style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.w600,
                      color: Colors.red[500],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ] else if (bmiValue >= 30) ...[
                  Text(
                    bmiValue.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.red[400],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1.5, 1.5),
                          blurRadius: 2,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Obses',
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: Colors.red[400],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ] else if (bmiValue >= 25) ...[
                  Text(
                    bmiValue.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.orange[400],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1.5, 1.5),
                          blurRadius: 2,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Over Weight',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                      color: Colors.orange[400],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ] else if (bmiValue >= 18.5) ...[
                  Text(
                    bmiValue.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.green[500],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1.5, 1.5),
                          blurRadius: 2,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Healthy',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                      color: Colors.green[400],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ] else ...[
                  Text(
                    bmiValue.toStringAsFixed(2),
                    style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.w700,
                      color: Colors.yellow[700],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1.5, 1.5),
                          blurRadius: 2,
                        )
                      ],
                    ),
                  ),
                  Text(
                    'Under Weight',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Colors.yellow[700],
                      letterSpacing: 2,
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.25),
                          offset: Offset(1, 1),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ]
              ],
            ),
          ),
        ),
      ],
    );
  }
}
