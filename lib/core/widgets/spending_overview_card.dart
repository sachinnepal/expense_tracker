import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_colors.dart';

class SpendingOverviewCard extends StatelessWidget {
  const SpendingOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(28),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.18),
            blurRadius: 18,
            offset: const Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "Spending Overview",
                style: GoogleFonts.inter(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  Text(
                    "This Week",
                    style: GoogleFonts.inter(
                      color: Colors.white70,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(width: 6),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    color: Colors.white70,
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 28),

          SizedBox(
            height: 220,
            child: LineChart(
              _chartData(),
            ),
          ),
        ],
      ),
    );
  }

  LineChartData _chartData() {
    return LineChartData(
      minX: 0,
      maxX: 6,
      minY: 0,
      maxY: 600,

      borderData: FlBorderData(show: false),

      gridData: FlGridData(
        show: true,
        drawVerticalLine: false,
        horizontalInterval: 200,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: Colors.white.withValues(alpha: 0.08),
            strokeWidth: 1,
            dashArray: [6, 6],
          );
        },
      ),

      titlesData: FlTitlesData(
        topTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),

        leftTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            reservedSize: 40,
            interval: 200,
            getTitlesWidget: (value, meta) {
              return Text(
                "\$${value.toInt()}",
                style: GoogleFonts.inter(
                  color: Colors.white54,
                  fontSize: 11,
                ),
              );
            },
          ),
        ),

        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            interval: 1,
            reservedSize: 30,
            getTitlesWidget: (value, meta) {
              const days = [
                "Mon",
                "Tue",
                "Wed",
                "Thu",
                "Fri",
                "Sat",
                "Sun",
              ];

              return Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  days[value.toInt()],
                  style: GoogleFonts.inter(
                    color: value.toInt() == 6
                        ? AppColors.primaryPurple
                        : Colors.white54,
                    fontWeight: value.toInt() == 6
                        ? FontWeight.w700
                        : FontWeight.w500,
                    fontSize: 11,
                  ),
                ),
              );
            },
          ),
        ),
      ),

      lineBarsData: [
        LineChartBarData(
          isCurved: true,
          curveSmoothness: 0.35,
          color: AppColors.primaryPurple,
          barWidth: 4,
          isStrokeCapRound: true,

          spots: const [
            FlSpot(0, 180),
            FlSpot(1, 240),
            FlSpot(2, 210),
            FlSpot(3, 330),
            FlSpot(4, 260),
            FlSpot(5, 410),
            FlSpot(6, 520),
          ],

          belowBarData: BarAreaData(
            show: true,
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                AppColors.primaryPurple.withValues(alpha: .35),
                AppColors.primaryPurple.withValues(alpha: 0),
              ],
            ),
          ),

          dotData: FlDotData(
            show: true,
            getDotPainter: (spot, percent, bar, index) {
              if (index == 6) {
                return FlDotCirclePainter(
                  radius: 7,
                  color: Colors.white,
                  strokeWidth: 4,
                  strokeColor: AppColors.primaryPurple,
                );
              }

              return FlDotCirclePainter(
                radius: 3,
                color: AppColors.primaryPurple,
              );
            },
          ),
        ),
      ],
    );
  }
  }
 