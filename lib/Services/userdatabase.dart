import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tymo_app/Model/our_user.dart';

class Userdatabase {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<bool> createuserdb(OurUser user) async {
    try {
      await firestore.collection("users").doc(user.uid).set({
        "uid": user.uid,
        "email": user.email,
        "password": user.password,
        "username": user.username,
        "displayname": user.displayname,
        "avatarurl": user.avatarurl,
        "friendid": user.friendid,
        "chatroomid": user.chatroomid,
        "gender": user.gender,
        "phone": user.phone,
        "createdAt": Timestamp.now(),
      });
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<OurUser> getuser(String uid) async {
    OurUser ourUser = OurUser();
    DocumentSnapshot<Map<String, dynamic>> document =
        await firestore.collection("users").doc(uid).get();

    ourUser.uid = document.data()!['uid'];
    ourUser.email = document.data()!['email'];
    ourUser.password = document.data()!['password'];
    ourUser.username = document.data()!['username'];
    ourUser.chatroomid = document.data()!['chatroomid'];
    ourUser.avatarurl = document.data()!['avatarurl'];
    ourUser.phone = document.data()!['phone'];
    ourUser.friendid = document.data()!['friendid'];
    ourUser.gender = document.data()!['gender'];
    ourUser.displayname = document.data()!['displayname'];

    return ourUser;
  }
}
