import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopapp/screens/wishlistt.dart';
import 'package:shopapp/widgets/app_drawer.dart';
import 'splash_screen.dart';
import 'cart_screen.dart';
import 'products_overview_screen.dart';
import 'product_detail_screen.dart';
import '../providers/products.dart';
import '../providers/cart.dart';
import '../providers/orders.dart';
import '../providers/auth.dart';
import 'orders_screen.dart';
import './user_products_screen.dart';
import './edit_product_screen.dart';
import './auth_screen.dart';
import 'homesplashscr.dart';

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
    _pages = [ProductsOverviewScreen(), OrdersScreen(), UserProductsScreen()];
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
          currentIndex: selectedIndex,
          elevation: 20,
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
            const BottomNavigationBarItem(
              icon: Icon(Icons.edit),
              label: 'Manage Products',
            ),
          ],
        ));
  }
}
