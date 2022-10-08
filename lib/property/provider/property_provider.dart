import 'package:flutter/widgets.dart';

class PropertyProvider with ChangeNotifier {
  String? type = "Sell";
  setValue(String? value) {
    type = value;
    notifyListeners();
  }

  List<String> types = ['Sell', 'Rent', 'Lease'];
}
