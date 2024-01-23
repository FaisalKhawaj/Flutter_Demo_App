
import 'package:flutter/material.dart';

class CustomChoiceChip extends StatefulWidget {

  final String label;
  final bool selected;
  final Function(bool) onSelected;

  const CustomChoiceChip({super.key,
    required this.label,
    required this.selected,
    required this.onSelected});

  @override
  State<CustomChoiceChip> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState extends State<CustomChoiceChip> {
  @override
  Widget build(BuildContext context) {
    return  ChoiceChip(
      showCheckmark: false,
      // checkmarkColor: Colors.white,
      padding: const EdgeInsets.symmetric(
          vertical: 4, horizontal: 20),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)),
      selectedColor: const Color.fromRGBO(119, 40, 168, 1),
      labelStyle: const TextStyle(color: Colors.white),
      backgroundColor: const Color.fromRGBO(25, 25, 25, 1),
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            widget.label,
            style: TextStyle(
                fontSize: 14,
                fontFamily: 'Comfortaa',
                fontWeight: FontWeight.w500,
                color: widget.selected
                    ? Colors.white
                    : Color.fromRGBO(171, 171, 171, 1)),
          ),
          const SizedBox(
            width: 5,
          ),
          Icon(
              widget.selected
                  ? Icons.close
                  : Icons.add,
              size: 18,
              color:
              widget.selected
                  ? Colors.white
                  : const Color.fromRGBO(171, 171, 171, 1))
        ],
      ),
      selected:widget.selected,
      onSelected: widget.onSelected,
    );
  }
}


