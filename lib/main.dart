// import 'package:flutter/material.dart';
// import 'welcome_Screen.dart';
// import 'login_Screen.dart';
// import 'signup_Screen.dart';

// void main() {
//   runApp(RecipeHavenApp());
// }

// class RecipeHavenApp extends StatelessWidget {
//   const RecipeHavenApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       initialRoute: '/',
//       routes: {
//         '/': (context) => WelcomeScreen(),
//         '/login': (context) => LoginScreen(),
//         '/signup': (context) => SignupScreen(),
//       },
//     );
//   }
// }

// Screens
import 'package:flutter/material.dart';
import 'welcome_Screen.dart';
import 'login_Screen.dart';
import 'signup_Screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:recipe_haven/Provider/quantity.dart';
import 'package:provider/provider.dart';
import 'Views/app_main_screen.dart';
import 'FavoriteProvider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const RecipeHavenApp());
}

class RecipeHavenApp extends StatelessWidget {
  const RecipeHavenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Favorite Provider
        ChangeNotifierProvider(create: (_) => FavoriteProvider()),
        // Quantity Provider
        ChangeNotifierProvider(create: (_) => QuantityProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // Initial screen is the WelcomeScreen
        initialRoute: '/',
        routes: {
          '/': (context) => const WelcomeScreen(),
          '/login': (context) => const LoginScreen(),
          '/signup': (context) => const SignupScreen(),
          '/home': (context) => const AppMainScreen(),
        },
      ),
    );
  }
}
