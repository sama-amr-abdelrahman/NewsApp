import 'package:flutter/material.dart';

class Customwidgetall extends StatelessWidget {
  Customwidgetall({super.key,required this.title,required this.description,required this.url});
  String url;
  String title;
  String description;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      width: 500,
      height: 400,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 400,
                  height: 100,
                  child: Image.network("${url}")
              ),
              SizedBox(height: 2,),
              Text(
                  "Title : ${title}",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(height: 2,),
              Text(
                "Description : ${description}",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w200
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
