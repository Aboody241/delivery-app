import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:tayar/core/theme/colors.dart';
import 'package:tayar/features/home/home_screen.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  final PersistentTabController _controller = PersistentTabController(initialIndex: 0);

  List<PersistentTabConfig> _navBarsItems() {
    return [
      PersistentTabConfig(
        screen: const HomeScreen(),
        item: ItemConfig(
          icon: const Icon(Icons.home),
          title: "Home",
          activeForegroundColor: AppColors.primary,
          inactiveForegroundColor: AppColors.textHint,
        ),
      ),
      PersistentTabConfig(
        screen: const Scaffold(body: Center(child: Text('Search'))),
        item: ItemConfig(
          icon: const Icon(Icons.shopping_cart_rounded),
          title: "Cart",
          activeForegroundColor: AppColors.primary,
          inactiveForegroundColor: AppColors.textHint,
        ),
      ),
      PersistentTabConfig(
        screen: const Scaffold(body: Center(child: Text('Cart'))),
        item: ItemConfig(
          icon: const Icon(Icons.list),
          title: "My Orders",
          activeForegroundColor: AppColors.primary,
          inactiveForegroundColor: AppColors.textHint,
        ),
      ),
      PersistentTabConfig(
        screen: const Scaffold(body: Center(child: Text('Profile'))),
        item: ItemConfig(
          icon: const Icon(Icons.person),
          title: "Profile",
          activeForegroundColor: AppColors.primary,
          inactiveForegroundColor: AppColors.textHint,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      tabs: _navBarsItems(),
      navBarBuilder: (navBarConfig) => Style12BottomNavBar(
        navBarConfig: navBarConfig,
      ),
      controller: _controller,
      backgroundColor: AppColors.surface,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
    );
  }
}
