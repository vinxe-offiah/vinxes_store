import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class CurvedEdgeWidget extends StatelessWidget {
  const CurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: VCustomCurvedEdges(),
      child: child,
    );
  }
}
