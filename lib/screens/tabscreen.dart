import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/screens/edit_product_screen.dart';
import 'package:shopapp/screens/profile/profile_screen.dart';
import 'package:shopapp/widgets/app_drawer.dart';
import 'products_overview_screen.dart';
import 'orders_screen.dart';
import './user_products_screen.dart';


class TabScreen extends StatefulWidget {
  static const routeName = '/tabScreen';
  TabScreen();

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int selectedIndex = 0;
  List<Widget> _pages;
  @override
  void initState() {
    // TODO: implement initState
    _pages = [ProductsOverviewScreen(), OrdersScreen(), ProfileScreen()];
    super.initState();
  }

  void _selectedPage(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        drawer: AppDrawer(),
        // appBar: AppBar(
        //   title: Text(selectedIndex == 0 ? 'Categories' : 'My Orders'),
        // ),

        body: _pages[selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          //enableFeedback: true,
          //selectedFontSize: 20,
          currentIndex: selectedIndex,
          elevation: 50,
          onTap: _selectedPage,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.category),
              label: 'Products',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.star),
              label: 'My Orders',
            ),
            // const BottomNavigationBarItem(
            //   icon: Icon(Icons.edit),
            //   label: 'Manage Products',
            // ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.manage_accounts),
              label: 'Profile',
            ),
          ],
        ));
  }
}
