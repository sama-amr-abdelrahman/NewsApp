import 'package:dio/dio.dart';
import 'package:news_api/Models/NewApiModel.dart';
class NewsApiService{
  static Dio dio = Dio();
  static Future<NewApiModel> getData() async{
    try{
      Response response = await dio.get("https://newsapi.org/v2/everything?q=tesla&from=2024-10-04&sortBy=publishedAt&apiKey=6560270b4cd043d09f9e200f82e64afe");
      if(response.statusCode == 200){
        return NewApiModel.fromJson(response.data);
      }
      else{
        throw Exception("The status code isn't 200");
      }
    }
    catch(e){
      throw Exception(e);
    }
  }
}