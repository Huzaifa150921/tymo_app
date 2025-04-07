import 'pack age:cloud_firestore/cloud_firestore.dart';

class OurUser {
  String? uid;
  String? email;
  String? password;
  String? username;

  String? displayname;
  String? avatarurl;
  String? friendid;
  String? chatroomid;
  String? gender;
  String? phone;
  bool? isloadingdata;
  bool? firstTime;
  Timestamp? accountcreated;

  OurUser({
    this.accountcreated,
    this.avatarurl,
    this.chatroomid,
    this.displayname,
    this.email,
    this.friendid,
    this.gender,
    this.password,
    this.phone,
    this.isloadingdata,
    this.uid,
    this.username,
    this.firstTime,
  });
}
