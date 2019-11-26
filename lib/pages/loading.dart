import 'package:flutter/material.dart';
import 'package:myapp/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time = 'Loading';

  void setupWorldTime() async {

    WorldTime wt = WorldTime(location: 'Monterrey', flag: 'mexico.png', url: 'America/Monterrey');
    await wt.getTime();
    print(wt.time);
    setState(() {
      time = wt.time;
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50.0),
        child: Text(time),
      ),
    );
  }
}