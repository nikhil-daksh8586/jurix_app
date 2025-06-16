import 'package:flutter/material.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckBocTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
    checkColor: WidgetStateProperty.resolveWith((State){
      if(State.contains(WidgetState.selected)){
        return Colors.white;
      } else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((State){
      if(State.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkCheckBocTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
      checkColor: WidgetStateProperty.resolveWith((State){
        if(State.contains(WidgetState.selected)){
          return Colors.white;
        } else{
          return Colors.black;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((State){
        if(State.contains(WidgetState.selected)){
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      })
  );
}