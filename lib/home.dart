import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetHome extends StatelessWidget {
  final double buttonPadding = 12;

  void _testEvent() {
    //do sth
  }
  //const WidgetHome({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(buttonPadding),
              child: TextButton(
                onPressed: _testEvent,
                child: Text(
                  "登录",
                  style: GoogleFonts.notoSansSc(
                      textStyle: const TextStyle(fontSize: 20)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(buttonPadding),
              child: TextButton(
                onPressed: _testEvent,
                child: Text(
                  "注册",
                  style: GoogleFonts.notoSansSc(
                      textStyle: const TextStyle(fontSize: 20)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
