import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tymo_app/Model/our_user.dart';
import 'package:tymo_app/Services/userdatabase.dart';

class UserController with ChangeNotifier {
  OurUser curruser = OurUser();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<bool> registerUser(String e, String p) async {
    try {
      OurUser user = OurUser(); // Make sure this model is correctly defined
      UserCredential authuser =
          await auth.createUserWithEmailAndPassword(email: e, password: p);

      if (authuser.user != null) {
        print("Adding detil");
        user.uid = authuser.user!.uid;
        user.email = authuser.user!.email;
        user.password = p;
        Userdatabase().createuserdb(user);
      }

      print("Signup successful: ${authuser.user?.email}");
      return true;
    } on FirebaseAuthException catch (e) {
      print("Firebase Auth Error: ${e.message}");
      return false;
    } catch (e) {
      print("Unexpected Error: $e");
      return false;
    }
  }

  Future<bool> loginuser(String e, String p) async {
    try {
      UserCredential loginuser =
          await auth.signInWithEmailAndPassword(email: e, password: p);

      if (loginuser.user != null) {
        curruser = await Userdatabase().getuser(loginuser.user!.uid);
        print(curruser.email);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      print("Login error: $e");
      return false;
    }
  }

  Future<bool> signout() async {
    try {
      await auth.signOut();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<OurUser> signinuserdata() async {
    try {
      OurUser myuser = OurUser();
      myuser.isloadingdata = true;
      curruser = myuser;
      auth.authStateChanges().listen(
        (event) async {
          if (event?.uid == null) {
            myuser.uid = null;
            myuser.isloadingdata = false;
            setCurrentUser(myuser);
          } else {
            myuser.uid = event?.uid;
            myuser = await Userdatabase().getuser(auth.currentUser!.uid);
            myuser.isloadingdata = false;
            setCurrentUser(myuser);
          }
        },
      );
      print(myuser.uid);
      return myuser;
    } catch (e) {
      print(e);
      return OurUser();
    }
  }

  void setCurrentUser(OurUser user) {
    curruser = user;
    notifyListeners();
  }
}
