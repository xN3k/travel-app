import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travel_app/provider/button_provider.dart';
import 'package:travel_app/screens/travel.dart';
import 'package:travel_app/widgets/button_section.dart';
import 'package:travel_app/widgets/description.dart';
import 'package:travel_app/widgets/image.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ButtonProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Travel"),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ImageSection(),
            TravelScreen(),
            ButtonSection(),
            Description(),
          ],
        ),
      ),
    );
  }
}
