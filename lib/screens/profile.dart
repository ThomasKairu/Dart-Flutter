import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'edit_profile.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
   late DocumentSnapshot data;

  @override
  void initState() {
    super.initState();
    getUserData();
    data =data; 
  }

  Future<void> getUserData() async {
    final user = await _auth.currentUser!;
    final userData = await _firestore.collection('users').doc(user.uid).get();
    setState(() {
      data = userData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: 
           ListView(
              children: <Widget>[
                ListTile(
                  leading: CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(data['profilePicture']),
                  ),
                  title: Text(data['username']),
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('Edit Profile'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return EditProfile(
                            user: _auth.currentUser,
                            username: data['username'],
                            profilePicture: data['profilePicture'],
                          );
                        },
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.security),
                  title: Text('Privacy Settings'),
                  onTap: () {
                    // This one i should remember to create a privacy settings page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text('Notifications and Alerts'),
                  onTap: () {
                    // This one i should remember to create a notifications page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.feedback),
                  title: Text('Feedback and Reporting'),
                  onTap: () {
                    // This one i should remember to create a feedback page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Logout'),
                  onTap: () {
                    _auth.signOut();
                  },
                ),
              ],
            ),
           
    );
  }
}