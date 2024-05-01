import 'package:flutter/material.dart';

import 'home.dart';
import 'user_sign_interface.dart';
import 'star_page.dart';
import 'settings.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'Flutter Tutorial',
      home: TutorialHome(
        title: "Flutter Tutorial",
      ),
    ),
  );
}

class TutorialHome extends StatefulWidget {
  const TutorialHome({super.key, required this.title});
  final String title;

  @override
  State<TutorialHome> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<TutorialHome> {
  final double buttonPadding = 12;
  int currentPageIndex = 0;

  WidgetHome widgetHome = const WidgetHome();
  StarPage starPage = const StarPage();
  WidgetSignPage signPage = const WidgetSignPage();
  WidgetSettingsPage settingsPage = const WidgetSettingsPage();

  @override
  Widget build(BuildContext context) {
    // Scaffold is a layout for
    // the major Material Components.
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: const Text('Example title'),
        actions: const [
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
      // body is the majority of the screen.

      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "home"),
          NavigationDestination(icon: Icon(Icons.star), label: "Favorate"),
          NavigationDestination(icon: Icon(Icons.chat), label: "Communicate"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings")
        ],
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      body: <Widget>[widgetHome, starPage, signPage, settingsPage][currentPageIndex],
    );
  }
}
