import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skill_check/models/hotel/api_hotel.dart';
import 'package:skill_check/screens/end_screen.dart';
import 'package:skill_check/screens/hotel.dart';
import 'package:skill_check/screens/reservation.dart';
import 'package:skill_check/screens/room.dart';

void main() {
  runApp(runMyApp());
}

ProviderScope runMyApp() => ProviderScope(
      child: MyApp(),
    );

class MyApp extends ConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) async{
      await ref.read(hotelNotifierProvider.notifier).getData();
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/hotel',
      routes: {
        '/hotel':(context) => Hotel(),
        '/room':(context) => Room(),
        '/reservation':(context) => Reservation(),
        '/end_screen':(context) => EndScreen(),
      },
    );
  }

}
