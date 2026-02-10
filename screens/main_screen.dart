import 'package:flutter/material.dart';
import 'products_screen.dart';
import 'categories_screen.dart';
import 'profile_screen.dart';
import '../services/user_service.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    ProductsScreen(),
    CategoriesScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(index: _selectedIndex, children: _pages),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          const BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: ValueListenableBuilder<User>(
              valueListenable: UserService.instance.userNotifier,
              builder: (context, user, _) => CircleAvatar(
                radius: 12,
                backgroundImage: NetworkImage(user.avatarUrl),
                backgroundColor: Colors.grey.shade200,
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
