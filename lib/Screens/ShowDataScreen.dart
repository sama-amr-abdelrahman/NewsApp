import 'package:flutter/material.dart';
import 'package:news_api/Provider/NewsApiProvider.dart';
import 'package:news_api/Widgets/CustomWidgetAll.dart';
import 'package:provider/provider.dart';

class Showdatascreen extends StatelessWidget {
  Showdatascreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            "News App",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blue
          ),
        ),
        centerTitle: true,
      ),
      body: Consumer<NewsApiProvider>(
        builder: (context, value,child) => GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
            ),
            itemBuilder:(context, index) {
              if(value.model == null){
                value.getData();
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              else{
                var article = value.model?.articles[index];
                return Customwidgetall(
                    title: article["Title"],
                    description: article["Description"],
                    url: article["Image"]
                );
              }
            },
          itemCount: value.model?.articles.length,
        ),
      ),
    );
  }
}