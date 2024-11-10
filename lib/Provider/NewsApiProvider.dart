import 'package:flutter/cupertino.dart';
import 'package:news_api/Models/NewApiModel.dart';
import 'package:news_api/Services/NewsApiService.dart';

class NewsApiProvider extends ChangeNotifier{
  NewApiModel? model;
  getData()async{
    model = await NewsApiService.getData();
    notifyListeners();
  }
}