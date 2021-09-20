import 'package:flutter/material.dart';



class ResponsiveApp extends StatelessWidget {
  const ResponsiveApp({Key? key,
    required this.mobile, required this.tab}) : super(key: key);
  final Widget mobile;
  final Widget tab;


  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth < 768 &&
              constraints.maxWidth < 768)
            {
              return mobile;
            }
          else{
            return tab;
          }
        });
  }
}