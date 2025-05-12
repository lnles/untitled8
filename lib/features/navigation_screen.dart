import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ionicons/ionicons.dart';
import 'package:untitled8/app_router.gr.dart';

@RoutePage()
class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      // backgroundColor: Theme.of(context).colorScheme.surface,
      routes: const [HomeRoute(), LikesRoute(), UserRoute()],
      bottomNavigationBuilder: (_, tabsRouter) {
        return SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 16),
          child: GNav(
            rippleColor: Theme.of(context).colorScheme.primaryContainer,
            hoverColor: Theme.of(context).colorScheme.onPrimary,
            gap: 8,
            activeColor: Theme.of(context).colorScheme.primary,
            iconSize: 24,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            duration: Duration(milliseconds: 400),
            tabBackgroundColor: Colors.grey[100]!,
            color: Theme.of(context).colorScheme.primary,
            selectedIndex: tabsRouter.activeIndex,
            onTabChange: tabsRouter.setActiveIndex,
            tabs: [
              GButton(text: 'Home', icon: Ionicons.home),
              GButton(text: 'Likes', icon: Ionicons.heart),
              GButton(text: 'User', icon: Ionicons.person),
            ],
          ),
        );
      },
    );
  }
}
