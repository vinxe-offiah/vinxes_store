import 'package:flutter/material.dart';
import 'package:vinxes_store/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:vinxes_store/utils/constants/colors.dart';
import 'package:vinxes_store/utils/helpers/helper_functions.dart';

class VChoiceChip extends StatelessWidget {
  const VChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = VHelperFunctions.getColor(text) != null;
    return Theme(
      //The only way to change the color of a chip is by wrapping in a Theme
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: isColor ? const SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? VColors.white : null),
        avatar: isColor
            ? VCircularContainer(
                width: 50,
                height: 50,
                backgroundColor: VHelperFunctions.getColor(text)!)
            : null,
        labelPadding: isColor ? const EdgeInsets.all(0) : null,
        padding: isColor ? const EdgeInsets.all(0) : null,
        shape: isColor ? const CircleBorder() : null,
        backgroundColor: isColor ? VHelperFunctions.getColor(text)! : null,
      ),
    );
  }
}
