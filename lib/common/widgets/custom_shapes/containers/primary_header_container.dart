import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:vinxes_store/utils/constants/colors.dart';

class PrimaryHeaderContainer extends StatelessWidget {
  const PrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: VColors.primary,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: VCircularContainer(
                  backgroundColor: VColors.textWhite.withOpacity(0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: VCircularContainer(
                  backgroundColor: VColors.textWhite.withOpacity(0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}
