import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProfilePage12 extends StatefulWidget {
  @override
  _ProfilePage12State createState() => _ProfilePage12State();
}

class _ProfilePage12State extends State<ProfilePage12> {
  // List to hold user profile data
  List<Map<String, dynamic>> profileData = [];

  // Fetch profile data from Firestore
  Future<void> getProfileData() async {
    try {
      // Fetch data from the "Service_Info" collection
      QuerySnapshot snapshot = await FirebaseFirestore.instance.collection("Service_Info").get();

      // Loop through the documents and add them to the list
      setState(() {
        profileData = snapshot.docs.map((doc) {
          return {
            'name': doc['name'],
            'phone': doc['phone'],
            'address': doc['address'],
            'state': doc['state'],
            'profilePic': doc['profilePic'],
          };
        }).toList();
      });
    } catch (e) {
      print("Error fetching data: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    // Call getProfileData when the page loads
    getProfileData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: profileData.length,
        itemBuilder: (context, index) {
          final data = profileData[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Profile Image
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(data['profilePic'] ?? 'https://static.vecteezy.com/system/resources/previews/002/454/635/non_2x/user-social-media-profile-icon-free-vector.jpg'),
                  ),
                  const SizedBox(width: 16),
                  // Profile Data
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['name'] ?? 'No Name',
                        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      Text("Phone: ${data['phone'] ?? 'No Phone'}"),
                      Text("Address: ${data['address'] ?? 'No Address'}"),
                      Text("State: ${data['state'] ?? 'No State'}"),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
