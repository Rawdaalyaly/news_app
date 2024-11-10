class newsmodels {
  List<dynamic> articles;
  newsmodels({required this.articles});
  factory newsmodels.fromjson(Map<String , dynamic> Json)
  {
    return newsmodels(articles: Json['newsss']);
  }

}

