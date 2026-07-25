import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors/app_colors.dart';

class SummaryCard extends StatelessWidget {
  final String title;
  final String amount;
  final IconData icon;
  final Color iconColor;
  final Color lineColor;

  const SummaryCard({
    super.key,
    required this.title,
    required this.amount,
    required this.icon,
    required this.iconColor,
    required this.lineColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(24),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 44,
                height: 44,
                decoration: BoxDecoration(
                  color: iconColor.withValues(alpha: 0.15),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  icon,
                  color: iconColor,
                  size: 22,
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 13,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 2),
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerLeft,
                      child: Text(
                        amount,
                        style: GoogleFonts.plusJakartaSans(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const Spacer(),

          SizedBox(
            width: double.infinity,
            height: 26,
            child: CustomPaint(
              painter: SparkLinePainter(lineColor),
            ),
          ),
        ],
      ),
    );
  }
}

class SparkLinePainter extends CustomPainter {
  final Color color;

  SparkLinePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final path = Path();

    path.moveTo(0, size.height * .70);

    path.cubicTo(
      size.width * .18,
      size.height * .72,
      size.width * .12,
      size.height * .22,
      size.width * .34,
      size.height * .34,
    );

    path.cubicTo(
      size.width * .50,
      size.height * .08,
      size.width * .56,
      size.height * .76,
      size.width * .72,
      size.height * .46,
    );

    path.cubicTo(
      size.width * .82,
      size.height * .52,
      size.width * .90,
      size.height * .18,
      size.width,
      size.height * .20,
    );

    canvas.drawPath(path, paint);

    final glow = Paint()
      ..color = color
      ..maskFilter = const MaskFilter.blur(
        BlurStyle.normal,
        6,
      );

    canvas.drawCircle(
      Offset(size.width * .75, size.height * .48),
      3,
      glow,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}