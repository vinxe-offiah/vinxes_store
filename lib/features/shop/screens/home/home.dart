import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:vinxes_store/utils/constants/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(0),
              color: VColors.primary,
              child: SizedBox(
                height: 400,
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
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
