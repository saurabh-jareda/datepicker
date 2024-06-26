import 'package:flutter/material.dart';

class FilledButtonPro extends StatelessWidget {
  const FilledButtonPro(
      {super.key,
      this.textColor,
      this.buttonText,
      required this.index,
      required this.onPressedAction});
  final Color? textColor;
  final String? buttonText;
  final int index;
  final void Function() onPressedAction;

  @override
  Widget build(BuildContext context) {
    String displayText = buttonText.toString();
    if (index == 1) {
      displayText = "OK";
    } else if (index == 2) {
      displayText = "Cancel";
    }

    // button style based on index
    final ButtonStyle buttonStyle = FilledButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      fixedSize: Size(
        MediaQuery.of(context).size.width * 0.30,
        MediaQuery.of(context).size.height * 0.06,
      ),
      // Apply conditional foreground and background colors
      foregroundColor:
          index == 2 ? Theme.of(context).colorScheme.primary : null,
      backgroundColor: index == 2
          ? Theme.of(context).colorScheme.inversePrimary.withOpacity(0.5)
          : null,
    );
    // Determine onPressed action based on index
    // void Function()? onPressedAction;
    // if (index == 1) {
    //   onPressedAction = () {
    //     Navigator.pop(context, selectedDate);
    //   };
    // } else if (index == 2) {
    //   onPressedAction = () {
    //     Navigator.pop(context);
    //   };
    // }

    return FilledButton(
        style: buttonStyle,
        onPressed: onPressedAction,
        child: Text(buttonText ?? displayText));
  }
}
