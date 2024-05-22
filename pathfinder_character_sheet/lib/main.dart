import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Character Sheet App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 75, 71, 71)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Character Sheet App'),
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
  int currentPageIndex = 0;

  final List<Widget> pages = [
    const CharSheetStats(),
    const InventoryPage(),
    const SpellbookPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: pages[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <NavigationDestination>[
          NavigationDestination(
            icon: Icon(Icons.assignment),
            label: 'Stats',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag),
            label: 'Inventory',
          ),
          NavigationDestination(
            icon: Icon(Icons.book),
            label: 'Spellbook',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}

class CharSheetStats extends StatefulWidget {
  const CharSheetStats({super.key});

  @override
  _CharSheetStatsState createState() => _CharSheetStatsState();
}

class _CharSheetStatsState extends State<CharSheetStats> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Column(
                children: [
                  Text("Character Name"),
                  Text("Level"),
                ],
              ),
              Column(
                children: [Text("Armor Class"),],
              ),
              Column(
                children: [
                  Text("Class"),
                  Text("Sub-class"),
                ],
                ),
            ],
          ),
          Row(
            children: [
              Text('Stats: Str Dex Wis Cha Int Con'),
            ],
            ),
        ],
      ),
    );
  }
}

class InventoryPage extends StatefulWidget {
  const InventoryPage({super.key});

  @override
  _InventoryPageState createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Inventory Page'),
    );
  }
}


class SpellbookPage extends StatefulWidget {
  const SpellbookPage({super.key});

  @override
  _SpellbookPageState createState() => _SpellbookPageState();
}

class _SpellbookPageState extends State<SpellbookPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Spellbook Page'),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Settings Page'),
    );
  }
}