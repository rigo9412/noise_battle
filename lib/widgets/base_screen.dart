import 'package:flutter/material.dart';

mixin ErrorDisplayer {
  void listenForErrors(GlobalKey<ScaffoldMessengerState> scaffoldKey, BuildContext context, String? error) {
    
    if (error != null) {
      scaffoldKey.currentState?.showSnackBar(
        SnackBar(
          duration: Duration(seconds: 3),
          backgroundColor: Colors.white,
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.error,
                color: Colors.red[600],
              ),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 16), child: Text(error, style: TextStyle(color: Colors.red[600]),))),
            ],
          ),
        ),
      );
    }
  }
}