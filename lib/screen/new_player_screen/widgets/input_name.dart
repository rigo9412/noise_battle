import 'package:flutter/material.dart';

class InputName extends StatelessWidget {
  final TextEditingController controller;
  const InputName({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           TextField(
                    controller: controller,
                    maxLength: 25,
                    maxLines: 2,
                    minLines: 2,
                    style: const TextStyle(color: Colors.white, fontSize: 40),
                 
                    textInputAction: TextInputAction.done,
                    decoration: const InputDecoration(
                      fillColor: Colors.white,
                       enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 0.0),
                        ),
                      border: OutlineInputBorder(
                        //borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        
                      ),
                      counterStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),  
                    
                    ),
                  ),
                  const SizedBox(height: 20),
        ]);
  }
}
