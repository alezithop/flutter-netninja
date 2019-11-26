import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async {

    Response response = await get('https://jsonplaceholder.typicode.com/todos/1');
    // showing data received in response.
    print(response.body);

    // converting data with jsonDecode and adding it to a new type Map variable
    // we are going to be able to access to the properties that the response has.
    // we need to import "dart:convert" to use jsonDecode
    Map data = jsonDecode(response.body);
    // showing processed data
    print(data);
    // showing only one properties of the processed data.
    print(data['title']);
  }

  void getTime() async {
    // make the request
    Response response = await get('http://worldtimeapi.org/api/timezone/America/Monterrey');
    Map data = jsonDecode(response.body);
    // print(data);

    String datetime = data['datetime'];
    String offset = data['utc_offset'].substring(1,3);

    print(datetime);
    print(offset);

    // create DateTime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getData();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('loading screen'),
    );
  }
}
