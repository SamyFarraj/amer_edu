    import 'package:flutter_local_notifications/flutter_local_notifications.dart';

    class LocalNotificationService{


    final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin=
    FlutterLocalNotificationsPlugin();


    final AndroidInitializationSettings _androidInitializationSettings=
        AndroidInitializationSettings('logo');

    void initilaisNotifications ()async
    {
      InitializationSettings initializationSettings=
          InitializationSettings(
            android: _androidInitializationSettings
          );
       await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
    }
    void sendNotifivation(String title,String? body)async{
    AndroidNotificationDetails androidNotificationDetails=  AndroidNotificationDetails(
        'channelId',
        'channelName',
    importance: Importance.max,
      priority: Priority.high
    );
    NotificationDetails notificationDetails =NotificationDetails(
      android: androidNotificationDetails
    );

     await _flutterLocalNotificationsPlugin.show(
        0,
        title,
        body,
        notificationDetails
    );

    }



    //show notification in slide bar always
    void secheduleNotifivation(String title,String? body,   NotificationDetails? notificationDetails)async{
      AndroidNotificationDetails androidNotificationDetails=  AndroidNotificationDetails(
          'channelId',
          'channelName',
          importance: Importance.max,
          priority: Priority.high
      );
      NotificationDetails notificationDetails =NotificationDetails(
          android: androidNotificationDetails
      );

      await _flutterLocalNotificationsPlugin.periodicallyShow(
          0,
          title,
          body,
          RepeatInterval.everyMinute,
          notificationDetails
      );

    }
    void stopnNotifications()async
    {
      _flutterLocalNotificationsPlugin.cancelAll();
    }
    }