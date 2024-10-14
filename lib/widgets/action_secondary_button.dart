import 'package:flutter/material.dart';

class ActionSecondaryButton extends StatefulWidget {
  final String title;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onPressed;
  const ActionSecondaryButton({super.key, required this.title, this.onPressed, this.color, this.textColor});
 
  @override
  State<ActionSecondaryButton> createState() => _ActionSecondaryButtonState();
}

class _ActionSecondaryButtonState extends State<ActionSecondaryButton> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(
          
          
          minimumSize: Size(MediaQuery.of(context).size.width, 50),
          textStyle: const TextStyle(fontSize: 20), 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        );

    return 
          TextButton(
            style: style,
            
            onPressed: widget.onPressed,
            child: Text(widget.title, style: TextStyle(color: widget.textColor ?? Theme.of(context).colorScheme.onSecondary)),
          );
  }
}