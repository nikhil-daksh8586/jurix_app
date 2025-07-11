import 'package:flutter/material.dart';

class TCheckBoxTheme {
  TCheckBoxTheme._();

  static CheckboxThemeData lightCheckBocTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
    checkColor: WidgetStateProperty.resolveWith((state){
      if(state.contains(WidgetState.selected)){
        return Colors.white;
      } else{
        return Colors.black;
      }
    }),
    fillColor: WidgetStateProperty.resolveWith((state){
      if(state.contains(WidgetState.selected)){
        return Colors.blue;
      } else {
        return Colors.transparent;
      }
    })
  );

  static CheckboxThemeData darkCheckBocTheme = CheckboxThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4),),
      checkColor: WidgetStateProperty.resolveWith((state){
        if(state.contains(WidgetState.selected)){
          return Colors.white;
        } else{
          return Colors.black;
        }
      }),
      fillColor: WidgetStateProperty.resolveWith((state){
        if(state.contains(WidgetState.selected)){
          return Colors.blue;
        } else {
          return Colors.transparent;
        }
      })
  );
}