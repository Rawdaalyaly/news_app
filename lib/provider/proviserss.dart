import 'package:flutter/cupertino.dart';

import '../Models/News_Model.dart';
import '../NewsApp_Service/News_Service.dart';

class NewsProvider extends ChangeNotifier {
  newsmodels? data;

  Future<void> getNews() async {
    data = await NewsService.fetchData();
    notifyListeners();
  }
}
