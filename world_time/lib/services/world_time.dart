import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location; // location name of the UI
  String flag; // the time in the location
  String? time; // url to an asset flag location
  String url; // location url of API endpoint
  bool? isDaytime; // true or false if daytime or not

  // Constructor
  WorldTime({required this.location, required this.flag, required this.url});

  Future <void> getTime() async {  // Asynchronous Function using http package | Future <void>: temporary place holder value and hold the value until the function is complete, running the void when the async function is complete

    try{
      // Make the request
      Response response = await get(Uri.parse("http://worldtimeapi.org/api/timezone/$url")); // API
      Map data = jsonDecode(response.body); // Decoding the json code

      // get properties from data
      String datetime = data['datetime']; // collecting the date, time
      String offset = data['utc_offset'].substring(1,3); // collecting the offset and slicing it to (1,3)

      // crete DateTime object
      DateTime now = DateTime.parse(datetime); // object variable = Object.method(StringVariable_datetime) [Converting into a datetime object]
      now = now.add(Duration(hours: int.parse(offset))); // variable = method.function(duration(time: StringInInt(variable_offset)))

      // set the time property
      isDaytime = now.hour > 6 && now.hour < 18; // checking the time is day or not
      time = DateFormat.jm().format(now); // DateFormat.method().format(variable)
    }

    catch (e) {
      print('Check the error: $e');
      print('Could not get the time data!');
    }

  }

}
