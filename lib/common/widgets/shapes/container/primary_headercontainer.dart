import 'package:flutter/material.dart';
import '../../../../utils/constants/app_colors.dart';
import '../../../styles/widgets/shapes/container/circular_container.dart';
import '../../../styles/widgets/shapes/custon shapes/curved_edges_widget.dart';

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
