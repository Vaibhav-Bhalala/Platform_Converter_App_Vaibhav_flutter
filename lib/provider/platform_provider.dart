import 'package:flutter/cupertino.dart';
import 'package:platform_converter_app/model/platform_model.dart';

class Platformprovider extends ChangeNotifier {
  Changeplatform changeplatform = Changeplatform(isIos: false);

  void ConvertPlatform() {
    changeplatform.isIos = !changeplatform.isIos;
    notifyListeners();
  }
}
