import 'package:flutter/material.dart';
import 'package:animated_sidebar/animated_sidebar.dart';
import 'package:my_animated_sidebar/pages/integrations.dart';
import 'package:my_animated_sidebar/pages/management.dart';
import 'package:my_animated_sidebar/pages/not_found.dart';
import 'package:my_animated_sidebar/pages/notifications.dart';
import 'package:my_animated_sidebar/pages/permissions.dart';
import 'package:my_animated_sidebar/pages/roles.dart';
import 'package:my_animated_sidebar/pages/settings.dart';
import 'package:my_animated_sidebar/pages/users.dart';

import 'pages/home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int activeTab = 0;

  final List<SidebarItem> items = [
    SidebarItem(
      icon: Icons.home,
      text: 'Home',
    ),
    SidebarItem(
      icon: Icons.notifications,
      text: 'Notifications',
    ),
    SidebarItem(
      icon: Icons.person,
      text: 'Management',
      children: [
        SidebarChildItem(
          icon: Icons.person,
          text: 'Users',
        ),
        SidebarChildItem(
          icon: Icons.verified_user,
          text: 'Roles',
        ),
        SidebarChildItem(
          icon: Icons.key,
          text: 'Permissions',
        ),
      ],
    ),
    SidebarItem(
      icon: Icons.abc,
      text: 'Integrations',
    ),
    SidebarItem(
      icon: Icons.settings,
      text: 'Settings',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Row(
        children: [
          AnimatedSidebar(
            margin: EdgeInsets.zero,
            expanded: MediaQuery.of(context).size.width > 600,
            items: items,
            // use this to set the active tab if you want to control it from outside
            // combined with autoSelectedIndex set to false
            // if you don't set autoSelectedIndex to false, the widget will
            // automatically set the active tab and selected item is used only
            // to set the initial value
            selectedIndex: activeTab,
            autoSelectedIndex: false,
            onItemSelected: (index) => setState(() => activeTab = index),
            duration: const Duration(milliseconds: 1000),
            frameDecoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF0062A9),
                  Color(0xFF008751),
                  Color(0xFFA9B1D5),
                ],
              ),
            ),
            minSize: 90,
            maxSize: 250,
            itemIconSize: 20,
            itemIconColor: Colors.white,
            itemHoverColor: Colors.grey.withOpacity(0.3),
            itemSelectedColor: Colors.grey.withOpacity(0.3),
            itemTextStyle: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            itemSelectedBorder: const BorderRadius.all(Radius.circular(5)),
            itemMargin: 12,
            itemSpaceBetween: 10,
            headerIcon: Icons.ac_unit_sharp,
            headerIconSize: 30,
            headerIconColor: Colors.amberAccent,
            headerTextStyle: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
            headerText: ' Example',
          ),
          Expanded(
            child: _buildPage(activeTab),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(int idx) {
    switch (idx) {
      case 0:
        return const Home();
      case 1:
        return const Notifications();
      case 2:
        return const Management();
      case 3:
        return const Users();
      case 4:
        return const Roles();
      case 5:
        return const Permissions();
      case 6:
        return const Integrations();
      case 7:
        return const Settings();
      default:
        return const NotFound();
    }
  }
}
