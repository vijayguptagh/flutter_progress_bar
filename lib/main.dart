import 'package:flutter/material.dart';
import 'timeline_page.dart'; 
import 'timeline_day.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<TimelineDay> daysList = getDummyTimelineDays(); 

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: TimelinePage(daysList: daysList),
      
    );
  }
}
