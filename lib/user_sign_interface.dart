import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetSignPage extends StatefulWidget {
  @override
  State<WidgetSignPage> createState() => _WidgethHomeState();
}

class _WidgethHomeState extends State<WidgetSignPage> {
  final double buttonPadding = 12;

  void _navReg() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => RegisterPage()));
  }

  //const WidgetHome({super.key});
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(buttonPadding),
              child: TextButton(
                onPressed: _navReg,
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
                onPressed: _navReg,
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

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterWidget();
}

class _RegisterWidget extends State<RegisterPage> {
  final double textPadding = 12;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Registration"),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: DecoratedBox(
          decoration: const BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(textPadding),
                child: const Text("Username"),
              ),
              Padding(
                padding: EdgeInsets.all(textPadding),
                child: const Text("Username"),
              ),
            ],
          )),
    );
  }
}
