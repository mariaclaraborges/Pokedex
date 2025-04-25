//Firebase
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

//Mateiral UI
import 'package:flutter/material.dart';

//Paginas
import 'package:pokedex/pages/login_page.dart';
import 'package:pokedex/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDyVkgGXAZHK5HiesScPIrE2g4bTU4d89A",
        authDomain: "pokedex-app-5f0c3.firebaseapp.com",
        projectId: "pokedex-app-5f0c3",
        storageBucket: "pokedex-app-5f0c3.firebasestorage.app",
        messagingSenderId: "108703154030",
        appId: "1:108703154030:web:192adf6cd7b6105a0b8b7f"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
