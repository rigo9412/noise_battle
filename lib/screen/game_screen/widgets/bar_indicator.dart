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

  List<Widget> getLabels(){
    List<Widget> result = [];
    var maxHeight = height / 10;
    for(var i = 10; i > 0; i--){
      result.add(Container(
        height: maxHeight,
        width: width,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10), top: Radius.circular(10)), // Rounded edges
        ),
        child: Column(
          children: [
            Text("${i}0", style: TextStyle(color: Colors.white, fontSize: 20)),
            const SizedBox(height: 10),
            Divider(color: Colors.white30, thickness: 1, height: 1),
          ],
        ),
      ));
    }

    return result;

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surfaceTint, // Background color
        borderRadius: BorderRadius.circular(10), // Rounded edges
      ),
      child: Stack(
        children: [

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: progress > 0 ? height * (progress * .01) : 1 *.01, // Progress height
                decoration: BoxDecoration(
                color: getColor(progress),
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10), top: Radius.circular(10)), // Rounded edges
                  ),
                ),
              ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(10), top: Radius.circular(10)), // Rounded edges
              ),
              child: Column(
                children: getLabels(),
              ),
            ),

          )




        ],
      ),
    );
  }
}