import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:good_benefit/screens/mainscreen.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'model/favourite.dart';
import 'screens/login.dart';
import 'screens/map.dart';
import 'screens/register.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();

  final appDocumentDir = await getApplicationDocumentsDirectory();
  Hive
    ..init(appDocumentDir.path)
    ..registerAdapter(FavouriteMAdapter());
  await Hive.openBox('favourite');

  AwesomeNotifications().initialize('resource://drawable/logo', [
    NotificationChannel(
      channelKey: "Basic",
      channelName: "Basic Notification",
      channelDescription: "This is High Priority",
      defaultColor: Colors.amber,
      importance: NotificationImportance.Max,
      ledColor: Colors.white,
      channelShowBadge: true,
    )
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signup',
      routes: {
        '/signup': (context) => const Register(),
        '/login': (context) => const Login(),
        '/home': (context) => const MainScreen(),
        '/map': (context) => const MapZone()
      },
    );
  }
}
