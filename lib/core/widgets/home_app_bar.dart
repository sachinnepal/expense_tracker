
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../colors/app_colors.dart';
class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 18,
      ),
      child: Row(
        children: [
          // Menu Button
          Container(
            width: 52,
            height: 52,
            decoration: BoxDecoration(
              color: AppColors.card,
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Icon(
              Icons.menu_rounded,
              color: AppColors.white,
              size: 30,
            ),
          ),

          const SizedBox(width: 18),

          // Greeting
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Good Evening,",
                  style: GoogleFonts.plusJakartaSans(
                    fontSize: 18,
                    color: AppColors.textSecondary,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 4),

                Row(
                  children: [
                    Text(
                      "Sachin",
                      style: GoogleFonts.plusJakartaSans(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: AppColors.white,
                      ),
                    ),

                    const SizedBox(width: 6),

                    const Text(
                      "👋",
                      style: TextStyle(fontSize: 28),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Notification Button
          Stack(
            children: [
              Container(
                width: 52,
                height: 52,
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Icon(
                  Icons.notifications_none_rounded,
                  color: AppColors.white,
                  size: 28,
                ),
              ),

              Positioned(
                right: 12,
                top: 12,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: const BoxDecoration(
                    color: AppColors.red,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}