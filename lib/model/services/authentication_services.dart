import 'package:aiden/model/services/user_data.dart';
import 'package:aiden/view/widgets/snack_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class Authentication {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  signInWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      if (googleUser == null) {
        // User canceled the sign-in process
        return null;
      }

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth =
          await googleUser.authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return await _auth.signInWithCredential(credential);
    } catch (e) {
      print("Error during Google sign-in: $e");
      return null;
    }
  }

  Future<void> signOut() async {
    await _auth.signOut();
    await GoogleSignIn().signOut();
  }
}



class AuthFunctions {
  FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> signInWithEmail(String email, String password,BuildContext context) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      print('Successfully signed in with email and password!');
     // storeUserData();
       showSnackBar(context,'Successfully signed in with $email',500);

    } on FirebaseAuthException catch (e) {
      print('Error signing in: $e');
       showSnackBar(context,'Error signing in: $e',500);
    }
  }

  Future<void> signUpWithEmail(String email, String password,BuildContext context) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print('Successfully signed up with email and password!');
      storeUserData();
            showSnackBar(context,'Successfully signed up with $email',500);

    } on FirebaseAuthException catch (e) {
      print('Error signing up: $e');
       showSnackBar(context,'Error signing up: $e',500);
    }
  }

  Future<void> sendPasswordResetEmail(String email,BuildContext context) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      print('Password reset email sent to $email');
      showSnackBar(context,'Password reset email sent to $email',500);
    } on FirebaseAuthException catch (e) {
      print('Error sending password reset email: $e');
            showSnackBar(context,'Error sending password reset email: $e',500);

    }
  }

//   Future<void> authenticationFunction(String email, String password) async {
//     // Check if the provided email is valid
//     if (!RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
//       print('Invalid email address');
//       return;
//     }

//     // Sign in with email and password
//     await signInWithEmail(email, password);

//     // If sign-in fails, try signing up
//     if (_auth.currentUser == null) {
//       await signUpWithEmail(email, password);
//     }

//     // If still not signed in, send a password reset email
//     if (_auth.currentUser == null) {
//       await sendPasswordResetEmail(email);
//     }
//   }
// }

// // Usage
// void main() async {
//   AuthFunctions authFunctions = AuthFunctions();

//   final email = 'someemail@domain.com';
//   final password = 'password123';

//   await authFunctions.authenticationFunction(email, password);
 }
