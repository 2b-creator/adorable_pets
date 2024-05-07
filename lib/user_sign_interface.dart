import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WidgetSignPage extends StatefulWidget {
  const WidgetSignPage({super.key});

  @override
  State<WidgetSignPage> createState() => _WidgethHomeState();
}

class _WidgethHomeState extends State<WidgetSignPage> {
  final double buttonPadding = 12;

  void _navReg() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const RegisterPage()));
  }

  void _navLog() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const LoginPage()));
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
                onPressed: _navLog,
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
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterWidget();
}

class _RegisterWidget extends State<RegisterPage> {
  final double textPadding = 12;

  void _regEvent() {
    //TODO
  }
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
      body: Center(
        child: Container(
          width: 350,
          height: 600,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: const Color.fromARGB(255, 243, 237, 247),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),
          child: DecoratedBox(
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(textPadding),
                    child: const Text("Username"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: textPadding, right: textPadding),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Enter your username"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(textPadding),
                    child: const Text("Email"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: textPadding, right: textPadding),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Enter your email"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(textPadding),
                    child: const Text("Password"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: textPadding, right: textPadding),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Enter your password"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(textPadding),
                    child: const Text("Password confirm"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: textPadding, right: textPadding),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "reEnter your password"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(textPadding),
                    child: Center(
                      child: TextButton(
                          onPressed: _regEvent,
                          child: Text(
                            "register",
                            style: GoogleFonts.notoSansSc(
                                textStyle: const TextStyle(fontSize: 20)),
                          )),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginWidget();
}

class _LoginWidget extends State<LoginPage> {
  final double textPadding = 12;
  void _loginEvent() {
    //TODO
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Login"),
          leading: BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: Center(
        child: Container(
          width: 350,
          height: 600,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: const Color.fromARGB(255, 243, 237, 247),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(0, 3))
              ]),
          child: DecoratedBox(
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(textPadding),
                    child: const Text("Username"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: textPadding, right: textPadding),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Enter your username"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(textPadding),
                    child: const Text("Password"),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: textPadding, right: textPadding),
                    child: const TextField(
                      decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          labelText: "Enter your password"),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.all(textPadding),
                      child: Center(
                        child: TextButton(
                            onPressed: _loginEvent,
                            child: Text(
                              "login",
                              style: GoogleFonts.notoSansSc(
                                  textStyle: const TextStyle(fontSize: 20)),
                            )),
                      ))
                ],
              )),
        ),
      ),
    );
  }
}
