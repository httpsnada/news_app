import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:news/api/model/responses/articles/ArticleResponse.dart';
import 'package:news/api/model/responses/sources/SourcesResponse.dart';

class ApiManager {
  // singleton class
  ApiManager._(); // private constructor to prevent creating more objects of the class
  static const String _baseUrl = "newsapi.org";
  static const String _sourcesApi = "v2/top-headlines/sources";
  static const String _articlesApi = "v2/everything";
  static const String _apiKey = "164d2b53cacc45928bd7cdf6021d8d7e";

  static ApiManager? _instance;

  static ApiManager getInstance() {
    _instance ??= ApiManager._();
    return _instance!;
  }

  Future<SourcesResponse> getNewsSources(String category) async {
    var params = {"category": category, "apiKey": _apiKey};

    // var headers = {
    //   "Authorization": _apiKey
    // };
    //var response = await http.get(uri, header:header);

    // call api to get news sources in tab bar
    var uri = Uri.https(_baseUrl, _sourcesApi, params);
    //https://newsapi.org/v2/top-headlines/sources?category=business/apiKey=164d2b53cacc45928bd7cdf6021d8d7e
    // https // base uri //api path (until ?)      // parameters
    var response = await http.get(uri);
    print("Response for source api : ${response.statusCode}");
    print("Response for source api : ${response.body}");

    //parsing
    var json = jsonDecode(
      response.body,
    ); // convert the string body to json format
    SourcesResponse sourcesResponse = SourcesResponse.fromJson(json);

    return sourcesResponse;
  }

  Future<ArticleResponse> getArticles(String sourceId) async {
    var params = {"sources": sourceId, "apiKey": _apiKey};

    var uri = Uri.https(_baseUrl, _articlesApi, params);
    //https://newsapi.org/v2/top-headlines/sources?category=business/apiKey=164d2b53cacc45928bd7cdf6021d8d7e
    // https // base uri //api path (until ?)      // parameters
    var response = await http.get(uri);
    print("Response for source api : ${response.statusCode}");
    print("Response for source api : ${response.body}");

    //parsing
    var json = jsonDecode(
      response.body,
    ); // convert the string body to json format
    ArticleResponse articleResponse = ArticleResponse.fromJson(json);

    return articleResponse;
  }
}
