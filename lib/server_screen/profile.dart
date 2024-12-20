// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// import 'package:homepagefemale/model/profile_modal.dart';

// class Profile extends StatefulWidget {
//   final List profile1;

//   const Profile({Key? key, required this.profile1}) : super(key: key);

//   @override
//   State<Profile> createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   @override
//   void initState() {
//     super.initState();
//     DataMethod();
//   }

//   List<ProfileModle> Data = [];
//   void DataMethod() async {
//     QuerySnapshot response =
//         await FirebaseFirestore.instance.collection("users").get();

//     log("Getting data");

//     List<ProfileModle> tempData = [];
// for (var value in response.docs) {
//   tempData.add(ProfileModle(
//     name: value['name'],
//     phone: value['phone'],
//     address: value['address'],
//     state: value['state'],
//     id: value.id,
//   ));
// }
//  log("DATA ADDED :- ${Data}");
// setState(() {
//   Data = tempData;
// });

//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           "Profile Info",
//           style: GoogleFonts.aboreto(
//             fontWeight: FontWeight.bold,
//             fontSize: 23,
//             color: const Color.fromARGB(255, 245, 69, 128),
//           ),
//         ),
//         centerTitle: true,
//       ),
//       body: ListView.builder(
//         itemCount: Data.length,
//         itemBuilder: (context, index) {
//           //  final item = widget.addresses[index];
//           return 
//           Card(
//              color: Color.fromARGB(255, 251, 234, 240),
//             elevation: 2,
//             margin: const EdgeInsets.all(10),
//             child: Padding(
//               padding: const EdgeInsets.all(10),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("Name: ${Data[index].name}",
//                       style: GoogleFonts.lato(fontSize: 18)),
//                   Text("Mobile No: ${Data[index].phone}",
//                       style: GoogleFonts.lato(fontSize: 18)),
//                   Text("Address.: ${Data[index].address}",
//                       style: GoogleFonts.lato(fontSize: 18)),
//                   Text("State: ${Data[index].state}",
//                       style: GoogleFonts.lato(fontSize: 18)),
//                   // Text("Landmark: ${Data[index].society}", style: GoogleFonts.lato(fontSize: 18)),
//                   // Text("Address Type: ${Data[index].name}", style: GoogleFonts.lato(fontSize: 18)),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ProfileInfoScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<List<Map<String, dynamic>>> _fetchUserData() async {
    QuerySnapshot snapshot = await _firestore.collection('users').get();
    return snapshot.docs.map((doc) => doc.data() as Map<String, dynamic>).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Info"),
        centerTitle: true,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: _fetchUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          }
          if (snapshot.data == null || snapshot.data!.isEmpty) {
            return const Center(child: Text("No data found."));
          }

          final userData = snapshot.data!;
          return ListView.builder(
            itemCount: userData.length,
            itemBuilder: (context, index) {
              final user = userData[index];
              return Card(
                margin: const EdgeInsets.all(10),
                child: ListTile(
                  leading: user['imageUrl'] != null
                      ? Image.network(user['imageUrl'], width: 50, height: 50, fit: BoxFit.cover)
                      : const Icon(Icons.person, size: 50),
                  title: Text(user['name'] ?? "No Name"),
                  subtitle: Text(
                    "Phone: ${user['phone']}\nAddress: ${user['address']}\nState: ${user['state']}",
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
