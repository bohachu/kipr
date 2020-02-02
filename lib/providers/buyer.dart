import 'package:flutter/foundation.dart';

class Buyer with ChangeNotifier {
  final String id;
  final String strName;
  final String strEmail;
  final String strPhone;
  final String strAddress;
  final String strPost;
  final String strAtm5;
  final String strMemo;

  Buyer(
      {this.id,
      this.strName,
      this.strEmail,
      this.strPhone,
      this.strAddress,
      this.strPost,
      this.strAtm5,
      this.strMemo});
}
