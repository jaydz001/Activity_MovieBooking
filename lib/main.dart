
import 'package:material_ui/material_ui.dart';
import 'screens/login.dart';

void main() {
  runApp(const JaydzApp());
}

class JaydzApp extends StatelessWidget {
  const JaydzApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JAYDZ Movie Booking',

      theme: ThemeData(
        primaryColor: const Color(0xFFB50927),
        scaffoldBackgroundColor: const Color(0xFFF8F5F2),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFB50927),
          primary: const Color(0xFFB50927),
          surface: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFFF8F5F2),
          foregroundColor: Color(0xFFB50927),
          elevation: 0,
        ),
        useMaterial3: true,
      ),

      home: const LoginScreen(),

      routes: {
        '/login': (context) => const LoginScreen(),
      },
    );
  }
}
