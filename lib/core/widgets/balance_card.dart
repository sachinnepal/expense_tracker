import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

import '../colors/app_colors.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: AppColors.balanceGradient,
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withValues(alpha: .18),
            blurRadius: 30,
            offset: const Offset(0, 15),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  /// Title
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          "Total Balance",
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.plusJakartaSans(
                            color: Colors.white.withValues(alpha: .95),
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),

                      const SizedBox(width: 6),

                      const Icon(
                        Iconsax.eye,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),

                  const SizedBox(height: 16),

                  /// Balance
                  FittedBox(
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "\$4,250.75",
                      style: GoogleFonts.plusJakartaSans(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        height: 1,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// Growth
                  Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    spacing: 6,
                    runSpacing: 4,
                    children: [
                      const Icon(
                        Iconsax.arrow_up_2,
                        color: AppColors.success,
                        size: 18,
                      ),

                      Text(
                        "12.5%",
                        style: GoogleFonts.plusJakartaSans(
                          color: AppColors.success,
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                        ),
                      ),

                      Text(
                        "from last month",
                        style: GoogleFonts.plusJakartaSans(
                          color: Colors.white.withValues(alpha: .85),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(width: 20),

            /// Placeholder for illustration
            SizedBox(
              width: 70,
              child: Icon(
                Iconsax.wallet_3,
                size: 58,
                color: Colors.white.withValues(alpha: .25),
              ),
            ),
          ],
        ),
      ),
    );
  }
}