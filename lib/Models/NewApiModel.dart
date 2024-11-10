import 'package:flutter/cupertino.dart';

class NewApiModel{
  List<dynamic> articles;
  NewApiModel({required this.articles});
  factory NewApiModel.fromJson(Map<String,dynamic> json){
    List<dynamic> allData;
    allData = json["articles"].map(
        (data){
          return{
            "Title" : data["title"],
            "Description" : data["description"],
            "Image" : data["urlToImage"]
          };
        }
    ).toList();
    return NewApiModel(articles: allData);
  }
}