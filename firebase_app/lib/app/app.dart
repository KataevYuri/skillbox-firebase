import 'package:firebase_app/app/theme.dart';
import 'package:firebase_app/firebase/firbase_service.dart';
import 'package:firebase_app/presentation/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: lightTheme,
        home: isLoading == false
            ? Center(
                child: ElevatedButton(
                  onPressed: singIn,
                  child: const Text('Login'),
                ),
              )
            : const HomePage());
  }

  void singIn() async {
    if (!kIsWeb) {
      FirebaseService service = FirebaseService();
      try {
        await service.signInwithGoogle();
      } catch (e) {
        if (e is FirebaseAuthException) {
          debugPrint(e.message!);
        }
      }
      setState(() {
        isLoading = false;
      });
    }
  }

  Future<UserCredential?> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser != null) {
      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      return await FirebaseAuth.instance.signInWithCredential(credential);
    }
    return null;
  }
}
