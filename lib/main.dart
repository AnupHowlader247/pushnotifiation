import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pushnotification/api/firebase_api.dart';
import 'package:pushnotification/pages/home_screen.dart';
import 'package:pushnotification/pages/notification_screen.dart';

final navigatroKey = GlobalKey<NavigatorState>();
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  runApp(const MyApp());


}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Push Notification',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
      bodyLarge: TextStyle(fontSize: 40),

    ),

      ),
      navigatorKey: navigatroKey,
      home: const HomeScreen(),
      routes: {
        NotificationScreen.route:(context)=>const NotificationScreen()
      },
    );
  }
}

