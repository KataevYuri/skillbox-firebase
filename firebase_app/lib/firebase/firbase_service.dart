import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// class FirebaseService {
//   final FirebaseAuth _auth = FirebaseAuth.instance;
//   final GoogleSignIn _googleSignIn = GoogleSignIn();

//   Future<String?> signInwithGoogle() async {
//     try {
//       final GoogleSignInAccount? googleSignInAccount =
//           await _googleSignIn.signIn();
//       final GoogleSignInAuthentication googleSignInAuthentication =
//           await googleSignInAccount!.authentication;
//       final AuthCredential credential = GoogleAuthProvider.credential(
//         accessToken: googleSignInAuthentication.accessToken,
//         idToken: googleSignInAuthentication.idToken,
//       );
//       await _auth.signInWithCredential(credential);
//     } on FirebaseAuthException catch (e) {
//       debugPrint(e.message);
//       rethrow;
//     }
//   }

//   Future<void> signOutFromGoogle() async {
//     await _googleSignIn.signOut();
//     await _auth.signOut();
//   }
// }

Future<UserCredential> signInWithGoogle() async {
  // Trigger the authentication flow
  final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

  // Obtain the auth details from the request
  final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

  // Create a new credential
  final credential = GoogleAuthProvider.credential(
    accessToken: googleAuth?.accessToken,
    idToken: googleAuth?.idToken,
  );

  // Once signed in, return the UserCredential
  return await FirebaseAuth.instance.signInWithCredential(credential);
}
