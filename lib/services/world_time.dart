import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; // location name for the UI
  String time; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for API endpoint
  bool isDaytime; // true or false if daytime or not

  WorldTime({ this.location, this.flag, this.url });

  // We need to set the Future<void> since we are going to use it later with asynchronous calls
  Future<void> getTime() async {

    try{
      // make the request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set the time property
      print(Intl.defaultLocale);

      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      print(now.hour);
      print(isDaytime);
      time = DateFormat.jm().format(now);

    }catch(e) {
      print('Caught error: $e');
      time = 'Could not get time data';
    }
  }
}