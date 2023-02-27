import 'dart:developer';

import 'package:magnit_test_app/data/local_storage/local_storage_util.dart';
import 'package:magnit_test_app/data/local_storage/service/local_storage_service.dart';
import 'package:magnit_test_app/internal/values/constants.dart';

class LocalStorageModule{
  static LocalStorageUtil? _localStorageUtil;


  static LocalStorageUtil getLocalStorageUtil(){
    log(Constants.localShopBox);
    _localStorageUtil??=LocalStorageUtil(LocalStorageService(Constants.localShopBox));
    return _localStorageUtil!;
  }
}