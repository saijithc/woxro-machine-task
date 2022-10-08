import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:woxro/bottom_navigation/bottom_provider/bottom_provider.dart';
import 'package:woxro/location/view/location_screen.dart';
import 'package:woxro/property/provider/property_provider.dart';

import 'bottom_navigation/bottom_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => PropertyProvider()),
        ChangeNotifierProvider(create: (_) => BottomProvder()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: BottomNavigations(),
      ),
    );
  }
}
