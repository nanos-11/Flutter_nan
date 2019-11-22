import 'package:flutter/material.dart';
import 'package:flutter_nan/http/entity/post_entity.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HttpPageState();
  }
}

class HttpPageState extends State<HttpPage> {
  Future<PostEntity> fetchPost() async {
    final response =
        await http.get('https://jsonplaceholder.typicode.com/posts/1');
    final responseJson = json.decode(response.body);

    return new PostEntity.fromJson(responseJson);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('网络请求'),
      ),
      body: Center(
        child: new FutureBuilder<PostEntity>(
          future: fetchPost(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return new Text(snapshot.data.toJson().toString());
            } else if (snapshot.hasError) {
              return new Text("${snapshot.error}");
            }

            // By default, show a loading spinner
            return new CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
