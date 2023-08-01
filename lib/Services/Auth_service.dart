import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Auth_Service {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Future<AuthCredential> getGoogleSignInCredential() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      if (googleUser != null) {
        final GoogleSignInAuthentication googleAuth =
            await googleUser.authentication;
        return GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );
      } else {
        // User canceled the Google sign-in
        return null;
      }
    } catch (e) {
      // Handle any errors that occurred during the sign-in process
      print("Error signing in with Google: $e");
      return null;
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    try {
      final AuthCredential credential = await getGoogleSignInCredential();
      if (credential != null) {
        return await _firebaseAuth.signInWithCredential(credential);
      } else {
        // User canceled the Google sign-in or an error occurred
        return null;
      }
    } catch (e) {
      // Handle any errors that occurred during the sign-in process
      print("Error signing in with Google: $e");
      return null;
    }
  }
}
