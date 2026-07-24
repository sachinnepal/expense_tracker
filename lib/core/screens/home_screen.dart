import 'package:flutter/material.dart';

import '../colors/app_colors.dart';
import '../widgets/home_app_bar.dart';
import '../widgets/balance_card.dart';
import '../widgets/summary_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const HomeAppBar(),

              const SizedBox(height: 20),

              const BalanceCard(),

              const SizedBox(height: 18),

              Row(
                children: const [
                  SummaryCard(
                    title: "Total Income",
                    amount: "\$6,230.00",
                    icon: Icons.arrow_downward_rounded,
                    iconColor: AppColors.success,
                    lineColor: AppColors.success,
                  ),

                  SizedBox(width: 16),

                  SummaryCard(
                    title: "Total Expenses",
                    amount: "\$1,980.00",
                    icon: Icons.arrow_upward_rounded,
                    iconColor: AppColors.danger,
                    lineColor: AppColors.danger,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}