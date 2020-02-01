import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/orders_screen.dart';
import '../screens/user_products_screen.dart';
import '../providers/auth.dart';
import '../helpers/custom_route.dart';
import '../cameo/i18nKipr.dart';
import '../cameo/uri.dart';

class AppDrawer extends StatelessWidget {
  bool isBackend() {
    //print('app_drawer.dart/isBackend:${getCurrentUri()}');
    //app_drawer.dart/isBackend:http://localhost:49247/shop1.html#/user-products
    if(getCurrentUri().contains('_backend')) return true;
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text(i('Hello Friend!')),
            automaticallyImplyLeading: false,
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text(i('Shop')),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text(i('Orders')),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
              // Navigator.of(context).pushReplacement(
              //   CustomRoute(
              //     builder: (ctx) => OrdersScreen(),
              //   ),
              // );
            },
          ),
          isBackend() ? Divider() : Row(),
          isBackend()
              ? ListTile(
                  leading: Icon(Icons.edit),
                  title: Text(i('Manage Products')),
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed(UserProductsScreen.routeName);
                  },
                )
              : Row(),
          Divider(),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text(i('Logout')),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed('/');

              // Navigator.of(context)
              //     .pushReplacementNamed(UserProductsScreen.routeName);
              Provider.of<Auth>(context, listen: false).logout();
            },
          ),
        ],
      ),
    );
  }
}
