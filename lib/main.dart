import 'package:click_me/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'domain/click_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ClickProvider(),

      /// _ wildcard pattern
      child: MaterialApp(
        title: 'Click Me',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        onGenerateRoute: (settings){
          return RouteGenerator.generateRoute(settings);
        },
      ),
    );
  }
}
