import 'package:dio/dio.dart';

import '../model/news_model.dart';

class NewsService {
  static Dio dio = Dio();

  static Future<newsmodels> fetchData() async {
    try {
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=a410b1724f84452c8df8a810efe34642");
      return newsmodels.fromJson(response.data);
    } catch (error) {
      throw "Error: $error";
    }
  }
}
