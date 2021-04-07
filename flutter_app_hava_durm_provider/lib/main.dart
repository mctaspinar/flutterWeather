import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './service_locator.dart';

import './viewmodel/weather_view_model.dart';
import './widgets/weather_app.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hava Durumu',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          fontFamily: "Raleway"),
      home: ChangeNotifierProvider<WeatherVeiwModel>(
        create: (context) => locator<WeatherVeiwModel>(),
        child: WeatherApp(),
      ),
    );
  }
}
