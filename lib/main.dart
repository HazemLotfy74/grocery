import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_app/Features/Splash_Screen/Presentation/pages/splash_view.dart';

void main() {
  runApp(const GroceryApp());
}

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Grocery App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
          useMaterial3: true,
          textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
      ),
      home: const SplashView(),
    );
  }
}


