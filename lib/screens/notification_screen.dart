import 'package:flutter/material.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
        children: const [
          notif.Notification(
            name: "Nayeon Im",
            post: "Post",
            description: "Commented: wahaha",
            avatarImage: 'assets/images/nayeon.jpg',
          ),
          notif.Notification(
            name: "John Cena",
            post: "Post",
            description: "Commented: noice",
            avatarImage: 'assets/images/john.jpg',
          ),
          notif.Notification(
            name: "Jason Angeles",
            post: "Post",
            description: "Commented: cute",
            avatarImage: 'assets/images/jason.jpg',
          ),
          notif.Notification(
            name: "Dahyun Kim",
            post: "Post",
            description: "Commented: dugdugudgu",
            avatarImage: 'assets/images/dubu.jpg',
          ),
          notif.Notification(
            name: "Chaeyoung Son",
            post: "Post",
            description: "Commented: mneeeet",
            avatarImage: 'assets/images/chae.jpg',
          ),
          notif.Notification(
            name: "Nayeon Im",
            post: "Post",
            description: "Commented: dahmodamho",
            avatarImage: 'assets/images/nayeon.jpg',
          ),
          Divider(),
        ],
    );
  }
}