import 'package:flutter/material.dart';

class ActionButton extends StatefulWidget {
  final String title;
  final Color? color;
  final Color? textColor;
  final VoidCallback? onPressed;
  const ActionButton({super.key, required this.title, this.onPressed, this.color, this.textColor});
 
  @override
  State<ActionButton> createState() => _ActionButtonState();
}

class _ActionButtonState extends State<ActionButton> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(
          backgroundColor: widget.color ?? Theme.of(context).colorScheme.secondary,
          
          minimumSize: Size(MediaQuery.of(context).size.width, 50),
          textStyle: const TextStyle(fontSize: 20), 
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
        );

    return 
          ElevatedButton(
            style: style,
            
            onPressed: widget.onPressed,
            child: Text(widget.title, style: TextStyle(color: widget.textColor ?? Theme.of(context).colorScheme.onSecondary)),
          );
  }
}