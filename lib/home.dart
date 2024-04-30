import 'package:flutter/material.dart';

class WidgetHome extends StatefulWidget {
  const WidgetHome({super.key});

  
  @override
  State<WidgetHome> createState() => _WidgethHomeState();
}

class _WidgethHomeState extends State<WidgetHome> {
  final double buttonPadding = 12;

  void _testEvent() {
    //do sth
  }
  //const WidgetHome({super.key});
  @override
  Widget build(BuildContext context){
    return const DecoratedBox(
      decoration: BoxDecoration(),
    );
  }
}