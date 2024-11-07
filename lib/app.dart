import 'package:flutter/material.dart';
import 'ui/screens/splash_screen.dart';

class QRScanner extends StatelessWidget {
  const QRScanner({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        elevatedButtonTheme: _elevatedButtonThemeData(),
        inputDecorationTheme: _inputDecorationTheme(),
      ),
      title: 'QR Scanner',
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

InputDecorationTheme _inputDecorationTheme() {
  return InputDecorationTheme(
    fillColor: Colors.white,
    filled: true,
    hintStyle: const TextStyle(
        fontWeight: FontWeight.w300
    ),
    border: _inputBorder(),
    enabledBorder: _inputBorder(),
    errorBorder: _inputBorder(),
    focusedBorder: _inputBorder(),
  );
}

OutlineInputBorder _inputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide.none,
    borderRadius: BorderRadius.circular(8),
  );
}


ElevatedButtonThemeData _elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        backgroundColor: Colors.blue,
        fixedSize: Size(260, 10)),
  );
}
