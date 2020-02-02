import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../widgets/app_drawer.dart';
import '../cameo/i18nKipr.dart';

class SellerInfoScreen extends StatelessWidget {
  static const routeName = '/sellerinfo';

  Future<void> _refreshProducts(BuildContext context) async {
    await Provider.of<Products>(context, listen: false)
        .fetchAndSetProducts(true);
  }

  @override
  Widget build(BuildContext context) {
    // final productsData = Provider.of<Products>(context);
    print('rebuilding...');
    return Scaffold(
      appBar: AppBar(
        title: Text(i('sellerInfo')),
      ),
      drawer: AppDrawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 100.0,
            ),
            Container(
              height: 50.0,
              color: Colors.purple[100],
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(horizontal: 70.0),
              child: Text(
                '銀行代碼：808 玉山銀行 （民權分行）',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                 ),
                ),
            ),
            Container(
              height: 50.0,
              color: Colors.purple[100],
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(horizontal: 70.0),
              child: Text(
                '銀行帳號：0598940162373',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
            ),
            Container(
              height: 50.0,
              color: Colors.purple[100],
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.symmetric(horizontal: 70.0),
              child: Text(
                '帳戶名稱：超夢國際教育有限公司',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
