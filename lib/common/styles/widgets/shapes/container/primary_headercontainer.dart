import 'package:flutter/material.dart';
import '../../../../../utils/constants/app_colors.dart';
import '../custon shapes/curved_edges_widget.dart';
import 'circular_container.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgesWidget(
      child: Container(
        color: AppColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 350,
          child: Stack(
            children: [
              Positioned(
                top: -120,
                right: -220,
                child: AppCircularContainer(
                  backgroundColor: AppColors.whiteColor.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -230,
                child: AppCircularContainer(
                  backgroundColor: AppColors.whiteColor.withOpacity(0.1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
