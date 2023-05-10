import 'package:flutter/material.dart';

class Snackbars{

  
MySnackBar(context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(

                showCloseIcon: true,
                
                elevation: 20,
                behavior: SnackBarBehavior.floating,
                  backgroundColor: Colors.red,
                    action: SnackBarAction(label: 'undo', onPressed: (){
                      print("you Can't undo");
                    }),
                    duration: Duration(seconds: 2),
                    content: Text("You pressed The Button of Snackbar")));
}
}