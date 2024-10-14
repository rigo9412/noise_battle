import 'package:flutter/material.dart';

class BarIndicator extends StatelessWidget {
  final double height;
  final double width;
  final double progress;

  const BarIndicator({super.key, 
    required this.height,
    required this.width,
    required this.progress,
  });

  Color getColor(double progress){

       if(progress < 30){
         return Colors.red;
       }
       else if (progress < 60){
         return Colors.orange;
       }
       else if (progress < 80){
         return Colors.amber;
       }
       else{
         return Colors.green;
       }



  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceTint, // Background color
        borderRadius: BorderRadius.circular(40), // Rounded edges
      ),
      child: Stack(
        children: [

          Align(
      alignment: Alignment.bottomCenter,
            child: Container(
              height: progress > 0 ? height * (progress * .01) : 0, // Progress height
        decoration: BoxDecoration(
            color: getColor(progress),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(40), top: Radius.circular(40)), // Rounded edges
              ),
            ),
          )
        ],
      ),
    );
  }
}