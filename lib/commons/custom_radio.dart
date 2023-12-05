import 'package:flutter/material.dart';

class MyRadioListTile<T> extends StatelessWidget {
  final T value;
  final T groupValue;
  final String leading;
  final ValueChanged<T?> onChanged;

  const MyRadioListTile({
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.leading,
    // this.title,
  });

  @override
  Widget build(BuildContext context) {
    // final title = this.title;
    return _customRadioButton;
  }

  Widget get _customRadioButton {
    final isSelected = value == groupValue;
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? const Color.fromRGBO(184, 247, 242, 1.0) : null,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: isSelected
                ? const Color.fromRGBO(184, 247, 242, 1.0)
                : Colors.grey[300]!,
            width: 2,
          ),
        ),
        child: Text(
          leading.toString().toUpperCase(),
          style: TextStyle(
            color: isSelected
                ? const Color.fromRGBO(61, 61, 76, 1.0)
                : const Color.fromRGBO(61, 61, 76, 1.0),
            fontWeight: FontWeight.w600,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}