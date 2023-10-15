import 'package:flutter/material.dart';
import 'package:weather_app/utils/extension.dart';

import 'settings_screen.dart';
import 'weather_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  int tabIndex = 0;
  late TabController tabController;

  void changeTabIndex(int index) {
    setState(() {
      tabIndex = index;
    });
    tabController.animateTo(tabIndex);
  }

  final pages = [
    const WeatherPage(),
    const SettingsPage(),
  ];

  @override
  void initState() {
    super.initState();
    tabController = TabController(
      initialIndex: tabIndex,
      length: pages.length,
      vsync: this,
    );
    tabController.addListener(() {
      setState(() {
        tabIndex = tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            controller: tabController,
            children: pages,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) => changeTabIndex(index),
        currentIndex: tabIndex,
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.cloud),
            label: context.l10n.weather
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_rounded),
            label: context.l10n.settings,
          ),
        ],
      ),
    );
  }
}
