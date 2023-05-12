import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:macos_ui/macos_ui.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MacosApp(
      title: 'Unicorn AI',
      theme: MacosThemeData.light(), 
      darkTheme: MacosThemeData.dark(),
      themeMode: ThemeMode.system,
      home: const MyHomePage(title: 'Home'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    return MacosWindow(
      sidebar: Sidebar(
        builder: ((context, scrollController) {
          return SidebarItems(
            currentIndex: currentIndex, 
            onChanged: ((value) {
              setState(() {
                currentIndex = value;
              });
            }),
            items: const [
              SidebarItem(
                leading: MacosIcon(CupertinoIcons.home),
                selectedColor: Colors.greenAccent,
                label: Text('Home')
                ),
              SidebarItem(
                leading: MacosIcon(CupertinoIcons.gear),
                selectedColor: Colors.greenAccent,
                label: Text('Prompts')
                ),
              SidebarItem(
                leading: MacosIcon(CupertinoIcons.bookmark),
                selectedColor: Colors.greenAccent,
                label: Text('Analytics')
                ),
              SidebarItem(
                leading: MacosIcon(CupertinoIcons.layers),
                selectedColor: Colors.greenAccent,
                label: Text('About')
                ),
              ],
            );
        }),
        minWidth: 200,
        startWidth: 200,
        maxWidth: 350
      ),
      child: const Center(
        child: Text(
          'Hello, world!'),
        ),
    );
  }
}
