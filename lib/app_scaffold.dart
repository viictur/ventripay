import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/authentication/views/card/card.dart';
import 'package:summer_flutter/authentication/views/card/card_application.dart';
import 'package:summer_flutter/authentication/views/card/physical_card.dart';
import 'package:summer_flutter/authentication/views/card/virtual_card.dart';
import 'package:summer_flutter/authentication/views/dashboard/dashboard_view.dart';
import 'package:summer_flutter/authentication/views/settings/settings.dart';
import 'package:summer_flutter/core/app_styles.dart';
// victorayobami200@gmail.com
// P@ssw0rd

class AppScaffold extends StatefulWidget {
  final int initialPageIndex;
  const AppScaffold({super.key, this.initialPageIndex = 0});

  @override
  State<AppScaffold> createState() => _AppScaffoldState();
}

class _AppScaffoldState extends State<AppScaffold> {
  int selectedIndex = 0;

  void _selectPage(int index) {
    setState(() => selectedIndex = index);
  }

  final screens = [
    DashboardView(),
    CardView(),
    Scaffold(),
    Settings(),
  ];

  final items = [
    BottomNavItem(
      title: "Home",
      inactiveIcon: 'assets/home.png',
      icon: 'assets/home.png',
    ),
    BottomNavItem(
      title: "Card",
      inactiveIcon: 'assets/card.png',
      icon: 'assets/card.png',
    ),
    BottomNavItem(
      title: "Frequent",
      inactiveIcon: 'assets/fave.png',
      icon: 'assets/fave.png',
    ),
    BottomNavItem(
      title: "Settings",
      inactiveIcon: 'assets/settings.png',
      icon: 'assets/settings.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.white,
            body: screens[selectedIndex],
            bottomNavigationBar: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 10,
                    bottom: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xFFF2F2F2),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,

                    children: [
                      for (
                        var i = 0;
                        i < screens.length;
                        i++
                      )
                        Expanded(
                          child: InkWell(
                            onTap: () => _selectPage(i),
                            child: Column(
                              children: [
                                Image.asset(
                                  items[i].icon,
                                  color: i == selectedIndex
                                      ? Color(0xFF003366)
                                      : Color(0xFF7595B6),
                                ),
                                Text(
                                  items[i].title,
                                  style: AppStyles
                                      .montserrat12Md
                                      .copyWith(
                                        color:
                                            i ==
                                                selectedIndex
                                            ? Color(
                                                0xFF003366,
                                              )
                                            : Color(
                                                0xFF7595B6,
                                              ),
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavItem {
  const BottomNavItem({
    required this.title,
    required this.icon,
    required this.inactiveIcon,
  });
  final String title;
  final String icon;
  final String inactiveIcon;
}
