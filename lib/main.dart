import 'package:facebook_replication/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/home_screen.dart';
import '../screens/newsfeed_screen.dart';
import '../screens/notification_screen.dart';
import '../screens/login_screen.dart';
import '../screens/register_screen.dart';
import '../screens/profile_screen.dart';

void main() => runApp(const FacebookReplication());

class FacebookReplication extends StatelessWidget {
  const FacebookReplication({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 715),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          color: Colors.white,
          debugShowCheckedModeBanner: false,
          title: 'Facebook Replication',
          initialRoute: '/login',
          onGenerateRoute: (settings) {
            if (settings.name == '/home') {
              final args = settings.arguments as Map<String, dynamic>?;
              return MaterialPageRoute(
                builder: (context) =>
                    HomeScreen(username: args?['username'] ?? ''),
              );
            }
            if (settings.name == '/profile') {
              final args = settings.arguments as Map<String, dynamic>?;
              return MaterialPageRoute(
                builder: (context) =>
                    ProfileScreen(profilename: args?['profilename'] ?? ''),
              );
            }
            return null;
          },
          routes: {
            '/newsfeed': (context) => const NewsfeedScreen(),
            '/login': (context) => LogInScreen(),
            '/register': (context) => const RegisterScreen(),
          },
        );
      },
    );
  }
}
