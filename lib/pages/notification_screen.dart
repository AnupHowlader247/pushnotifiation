import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen ({super.key});
  static const route = '/notification-screen';

 @override
  Widget build(BuildContext context) {
    final message = ModalRoute.of(context)!.settings.arguments as RemoteMessage;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Push Notification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Title : ${message.notification?.title}',style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontSize: 24,
              fontWeight: FontWeight.bold

            ),),
            Text('Body : ${message.notification?.body}',style: TextStyle(
                overflow: TextOverflow.visible,
                fontSize: 24,
                fontWeight: FontWeight.w600

            ),
            ),
            Text('Data : ${message.data}'),
          ],
        ),
      ),
    );
  }
}
