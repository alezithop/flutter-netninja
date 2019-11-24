import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    // simulate network request for a username
    String responseCode = await Future.delayed(Duration(seconds: 3), (){
      return '200';
    });
    print(responseCode);
    // simulate another request to show asynchronous calls
    String validation = await Future.delayed(Duration(seconds: 2), (){
      return 'Passed';
    });
    print(validation);
    print('Informative message');
  }

  int counter = 0;

  @override
  void initState() {
    super.initState();
    getData();
    print('initState function ran');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: RaisedButton(
        onPressed: (){
          setState(() {
            counter += 1;
          });
        },
        child: Text('counter is $counter'),
      ),
    );
  }
}
