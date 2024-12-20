


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/widgets.dart';
import 'package:homepagefemale/appointment.dart';





class ProfilePage12 extends StatefulWidget {
  @override
  _ProfilePage12State createState() => _ProfilePage12State();
}

class _ProfilePage12State extends State<ProfilePage12> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();

  Future<void> _uploadData1() async {
    String name = _nameController.text.trim();
    String address = _addressController.text.trim();
    String state = _stateController.text.trim();
    String phone = _phoneController.text.trim();

    if (name.isEmpty || address.isEmpty || state.isEmpty || phone.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please provide all details.")),
      );
      return;
    }

    try {
      await _firestore.collection('users').add({
        'name': name,
        'phone': phone,
        'address': address,
        'state': state,
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Data uploaded successfully!")),
      );

      _nameController.clear();
      _phoneController.clear();
      _addressController.clear();
      _stateController.clear();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to upload data: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3, // Three tabs
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Profile",
            style: TextStyle(
              color: Color.fromARGB(255, 199, 57, 116),
              fontSize: 24,
            ),
          ),
          actions: [
  Padding(
    padding: const EdgeInsets.all(20),
    child: GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AddressSummary(addresses: []),
          ),
        );
      },
      child: Stack(
        clipBehavior: Clip.none, // Ensures the badge is visible outside the bounds
        children: [
          const Icon(Icons.notification_add_outlined, size: 30),
          // Badge for the notification count
          Positioned(
            right: -6, // Position to align the badge properly
            top: -6,
            child: Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                color: Colors.red, // Badge background color
                shape: BoxShape.circle,
              ),
              child: const Text(
                '2', // Replace with your dynamic count
                style: TextStyle(
                  color: Colors.white, // Text color
                  fontSize: 12, // Font size for the badge
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  ),
],

          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          bottom: const TabBar(
            labelColor: Color.fromARGB(255, 199, 57, 116),
            unselectedLabelColor: Colors.grey,
            indicatorColor: Color.fromARGB(255, 199, 57, 116),
            tabs: [
               Tab(text: "Add Profile"),
               
              Tab(text: "Category Tab"),
              Tab(text: "Profile Info"),
             
            ],
          ),
        ),
        body: TabBarView(
          children: [
             _buildAddProfileForm(),
              const CategoryTab(),
            ProfileInfoScreen(),
            // _buildAddProfileForm(),
           
          ],
        ),
      ),
    );
  }

  Widget _buildAddProfileForm() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Enter Name:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            _buildTextField(_nameController, "Enter Name"),
            const SizedBox(height: 20),
            const Text("Enter Phone No:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            _buildTextField(_phoneController, "Enter Phone No"),
            const SizedBox(height: 20),
            const Text("Enter Address:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            _buildTextField(_addressController, "Enter Address"),
            const SizedBox(height: 20),
            const Text("Enter State:", style: TextStyle(fontSize: 20)),
            const SizedBox(height: 10),
            _buildTextField(_stateController, "Enter State"),
            const SizedBox(height: 30),
            Center(
              child: GestureDetector(
                onTap: _uploadData1,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 199, 57, 116),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    "Submit",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hintText) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          contentPadding: const EdgeInsets.all(15),
        ),
      ),
    );
  }
}

class ProfileInfoScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
      stream: _firestore.collection('users').orderBy('timestamp').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text("Error: ${snapshot.error}"));
        }

        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text("No data available."));
        }

        final users = snapshot.data!.docs;

        return ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            final user = users[index];
            return ListTile(
              title: Text("Name: ${user['name']}"),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Phone: ${user['phone']}"),
                  Text("Address: ${user['address']}"),
                  Text("State: ${user['state']}"),
                ],
              ),
            );
          },
        );
      },
    );
  }
}



// class ProfilePage12 extends StatefulWidget {
//   @override
//   _ProfilePage12State createState() => _ProfilePage12State();
// }

// class _ProfilePage12State extends State<ProfilePage12> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//   final TextEditingController _stateController = TextEditingController();

//   Future<void> _uploadData1() async {
//     String name = _nameController.text.trim();
//     String address = _addressController.text.trim();
//     String state = _stateController.text.trim();
//     String phone = _phoneController.text.trim();

//     if (name.isEmpty || address.isEmpty || state.isEmpty || phone.isEmpty) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Please provide all details.")),
//       );
//       return;
//     }

//     try {
//       await _firestore.collection('users').add({
//         'name': name,
//         'phone': phone,
//         'address': address,
//         'state': state,
//         'timestamp': FieldValue.serverTimestamp(),
//       });
      

//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Data uploaded successfully!")),
//       );

//       _nameController.clear();
//       _phoneController.clear();
//       _addressController.clear();
//       _stateController.clear();

//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => ProfileInfoScreen()),
//       );
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Failed to upload data: $e")),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Profile",
//           style: TextStyle(
//             color: Color.fromARGB(255, 199, 57, 116),
//             fontSize: 24,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0,
//         leading: IconButton(
//           icon: const Icon(Icons.exit_to_app, color: Colors.black),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text("Enter Name:", style: TextStyle(fontSize: 20)),
//               const SizedBox(height: 10),
//               _buildTextField(_nameController, "Enter Name"),
//               const SizedBox(height: 20),
//               const Text("Enter Phone No:", style: TextStyle(fontSize: 20)),
//               const SizedBox(height: 10),
//               _buildTextField(_phoneController, "Enter Phone No"),
//               const SizedBox(height: 20),
//               const Text("Enter Address:", style: TextStyle(fontSize: 20)),
//               const SizedBox(height: 10),
//               _buildTextField(_addressController, "Enter Address"),
//               const SizedBox(height: 20),
//               const Text("Enter State:", style: TextStyle(fontSize: 20)),
//               const SizedBox(height: 10),
//               _buildTextField(_stateController, "Enter State"),
//               const SizedBox(height: 30),
//               Center(
//                 child: GestureDetector(
//                   onTap: _uploadData1,
//                   child: Container(
//                     padding: const EdgeInsets.symmetric(
//                         horizontal: 20, vertical: 10),
//                     decoration: BoxDecoration(
//                       color: const Color.fromARGB(255, 199, 57, 116),
//                       borderRadius: BorderRadius.circular(25),
//                     ),
//                     child: const Text(
//                       "Submit",
//                       style: TextStyle(fontSize: 20, color: Colors.white),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildTextField(TextEditingController controller, String hintText) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Colors.white,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.5),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3),
//           ),
//         ],
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: TextField(
//         controller: controller,
//         decoration: InputDecoration(
//           hintText: hintText,
//           hintStyle: const TextStyle(fontSize: 20, color: Colors.grey),
//           border: const OutlineInputBorder(borderSide: BorderSide.none),
//           contentPadding: const EdgeInsets.all(15),
//         ),
//       ),
//     );
//   }
// }

// class ProfileInfoScreen extends StatelessWidget {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "Profile Info",
//           style: TextStyle(
//             color: Color.fromARGB(255, 199, 57, 116),
//             fontSize: 24,
//           ),
//         ),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         elevation: 0,
//       ),
//       body: StreamBuilder<QuerySnapshot>(
//         stream: _firestore.collection('users').orderBy('timestamp').snapshots(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const Center(child: CircularProgressIndicator());
//           }

//           if (snapshot.hasError) {
//             return Center(child: Text("Error: ${snapshot.error}"));
//           }

//           if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//             return const Center(child: Text("No data available."));
//           }

//           final users = snapshot.data!.docs;

//           return ListView.builder(
//             itemCount: users.length,
//             itemBuilder: (context, index) {
//               final user = users[index];
//               return ListTile(
//                 title: Text("Name: ${user['name']}"),
//                 subtitle: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text("Phone: ${user['phone']}"),
//                     Text("Address: ${user['address']}"),
//                     Text("State: ${user['state']}"),
//                   ],
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }


// class ProfilePage12 extends StatefulWidget {
//   @override
//   _ProfilePage12State createState() => _ProfilePage12State();
// }

// class _ProfilePage12State extends State<ProfilePage12> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           title: const Text(
//             "Profile",
//             style: TextStyle(
//               color: Color.fromARGB(255, 199, 57, 116),
//               fontSize: 24,
//             ),
//           ),
//           centerTitle: true,
//           backgroundColor: Colors.white,
//           elevation: 0,
//           leading: IconButton(
//             icon: const Icon(Icons.exit_to_app, color: Colors.black),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserOrAdmin()));
//             },
//           ),
//          actions: [
//   IconButton(
//     icon: Stack(
//       children: [
//         const Icon(
//           Icons.notifications_outlined,
//           size: 30,
//           color: Colors.black,
//         ),
//         Positioned(
//           right: 0,
//           top: 0,
//           child: Container(
//             padding: const EdgeInsets.all(2),
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(10),
//             ),
//             constraints: const BoxConstraints(
//               minWidth: 5,
//               minHeight: 2,
//             ),
//             child: const Text(
//               '2',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 12,
//                 fontWeight: FontWeight.bold,
//               ),
//               textAlign: TextAlign.center,
//             ),
//           ),
//         ),
//       ],
//     ),
//     onPressed: () {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => AddressSummary(addresses: [])),
//       );
//     },
//   ),
// ],

//           bottom: const TabBar(
//             indicatorColor: Color.fromARGB(255, 189, 21, 111),
//             labelColor: Color.fromARGB(255, 170, 32, 110),
//             unselectedLabelColor: Colors.grey,
//             tabs: [
//               Tab(text: "Personal Info"),
//               Tab(text: "Category"),
//               Tab(text: "Charges"),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//            PersonalInfoTab(),
//            const CategoryTab(),
//           ChargesTab(),
          
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           selectedItemColor: const Color.fromARGB(255, 190, 51, 104),
//           unselectedItemColor: Colors.grey,
//           showUnselectedLabels: true,
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//            // BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Orders"),
//             //BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chat"),
//            // BottomNavigationBarItem(icon: Icon(Icons.account_balance_wallet), label: "Wallet"),
//             BottomNavigationBarItem(icon: GestureDetector(
//               onTap:() {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=> Profile(profile1: [],)));
//               },
//               child: Icon(Icons.person)), label: "Profile"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class PersonalInfoTab extends StatefulWidget {
//   @override
//   _PersonalInfoTabState createState() => _PersonalInfoTabState();
// }

// class _PersonalInfoTabState extends State<PersonalInfoTab> {
//   final FirebaseFirestore _firestore = FirebaseFirestore.instance;
//   final TextEditingController _nameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _addressController = TextEditingController();
//   final TextEditingController _stateController = TextEditingController();

//   Future<void> _uploadData1() async {
//     String name = _nameController.text.trim();
//     String address = _addressController.text.trim();
//     String state = _stateController.text.trim();
//     String phone = _phoneController.text.trim();

//     // if (name.isEmpty || phone <= 0) {
//     //   ScaffoldMessenger.of(context).showSnackBar(
//     //     const SnackBar(content: Text("Please provide valid data.")),
//     //   );
//     //   return;
//     // }

//     try {
//       await _firestore.collection('users').add({
//         'name': name,
//         'phone': phone,
//         'address': address,
//         'state': state,
//         'timestamp': FieldValue.serverTimestamp(),
//       });
//       setState(() {
        
//       });

//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(content: Text("Data uploaded successfully!")),
//       );

//       _nameController.clear();
//       _phoneController.clear();
//        _addressController.clear();
//         _stateController.clear();
//     } catch (e) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(content: Text("Failed to upload data: $e")),
//       );
//     }
//   }

//    final ImagePicker _imagePicker = ImagePicker();
//   XFile? _selectedFile;

 
//    Future<void> uploadImage({required String fileName}) async {
//   try {
//     await FirebaseStorage.instance.ref().child(fileName).putFile(File(_selectedFile!.path));
//     String downloadURL = await FirebaseStorage.instance.ref().child(fileName).getDownloadURL();
//     log("Image uploaded successfully: $downloadURL");
//   } catch (e) {
//     log("Image upload failed: $e");
  
// }

//   }

//   Future<String> downloadImageURL({required String fileName}) async {
//     print("GET URL TO FIREBASE");
//     String url = await FirebaseStorage.instance
//         .ref()
//         .child(fileName)
//         .getDownloadURL();
//     print("UPLOADED URL: $url");
//     return url;
//   }


//   @override
//   Widget build(BuildContext context) {
//     return  SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(height: 20),
//            GestureDetector(
//         onTap: () async {
//       _selectedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
//       if (_selectedFile != null) {
//         print("File = ${_selectedFile!.path}");
//         setState(() {});
//       }
//         },
//         child: Center(
//       child: Stack(
//         alignment: Alignment.topRight, // Align button to the top right corner
//         children: [
//           Container(
//             width: 150,
//             height: 150,
//             clipBehavior: Clip.antiAlias,
//             decoration: BoxDecoration(
             
//               borderRadius: BorderRadius.circular(60),
//             ),
//             child: (_selectedFile == null)
//                 ? Image.asset("assets/p1.jpg")
//                 : Image.file(
//                     File(_selectedFile!.path),
//                     fit: BoxFit.cover,
//                   ),
//           ),
//           Positioned(
//             bottom:30,
//             top:90,
//             right: 20,
//             child: GestureDetector(
//               onTap: () async {
                
//                 _selectedFile = await _imagePicker.pickImage(source: ImageSource.gallery);
//                 if (_selectedFile != null) {
//                   print("File = ${_selectedFile!.path}");
//                   setState(() {});
//                 }
//               },
//               child: const CircleAvatar(
//                 backgroundColor: Color.fromARGB(255, 249, 234, 242),
//                 radius: 18,
//                 child: Icon(
//                   Icons.edit,
//                   color: Color.fromARGB(255, 199, 57, 116),
//                   size: 20,
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//         ),
//       ),
      
//              const Padding(
//               padding: EdgeInsets.only(left: 20.0),
//               child: Text(
//                 "Enter Name:",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: TextField(
//                   controller: _nameController,
//                   style: const TextStyle(fontSize: 30),
//                   decoration: const InputDecoration(
//                     hintText: "Enter Name",
//                     hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
//                     border: OutlineInputBorder(borderSide: BorderSide.none),
//                     contentPadding: EdgeInsets.all(15),
//                   ),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 20.0),
//               child: Text(
//                 "Enter Phone No:",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: TextField(
//                   controller: _phoneController,
//                   style: const TextStyle(fontSize: 30),
//                   decoration: const InputDecoration(
//                     hintText: "Enter Phone No",
//                     hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
//                     border: OutlineInputBorder(borderSide: BorderSide.none),
//                     contentPadding: EdgeInsets.all(15),
//                   ),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 20.0),
//               child: Text(
//                 "Enter Address:",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: TextField(
//                   controller: _addressController,
//                   style: const TextStyle(fontSize: 30),
//                   decoration: const InputDecoration(
//                     hintText: "Enter Address",
//                     hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
//                     border: OutlineInputBorder(borderSide: BorderSide.none),
//                     contentPadding: EdgeInsets.all(15),
//                   ),
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(left: 20.0),
//               child: Text(
//                 "Enter State:",
//                 style: TextStyle(fontSize: 20),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.5),
//                       spreadRadius: 2,
//                       blurRadius: 10,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 // child: TextField(
//                 //   controller: _stateController,
//                 //   style: const TextStyle(fontSize: 30),
//                 //   decoration: const InputDecoration(
//                 //     hintText: "Enter State",
//                 //     hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
//                 //     border: OutlineInputBorder(borderSide: BorderSide.none),
//                 //     contentPadding: EdgeInsets.all(15),
//                 //   ),
//                 // ),
//                 child: TextField(
//   controller: _stateController,
//   style: const TextStyle(fontSize: 20),
//   decoration: const InputDecoration(
//     hintText: "Enter State",
//     hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
//     border: OutlineInputBorder(borderSide: BorderSide.none),
//     contentPadding: EdgeInsets.all(15),
//   ),
// ),

//               ),
//             ),
//             const SizedBox(height: 20),
            
//             const SizedBox(height: 10),
//             Center(
//               child: GestureDetector(
//                 onTap: () async {
//                   _uploadData1();
                    
                 
//                 },
//                 child: Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//                   decoration: BoxDecoration(
//                     color:const Color.fromARGB(255, 199, 57, 116),
//                     borderRadius: BorderRadius.circular(25),
//                   ),
//                   child: const Text(
//                     "Submit ",
//                     style: TextStyle(fontSize: 25, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 10),
            
           
            
//           ],
        
//       ),
//     );
    
//   }
// }
class CategoryTab extends StatefulWidget {
  const CategoryTab ({super.key});

  @override
  _CategoryTabState createState() => _CategoryTabState();
}

class _CategoryTabState extends State<CategoryTab> {
  int _selectedIndex = -1; // Track the selected container

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Your Category",
                style: TextStyle(
                  fontSize: 30,
                  color: Color.fromARGB(255, 199, 57, 116),
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryContainer(
                  index: 0,
                  imagePath: "assets/profile/facialmen.jpg",
                  label: "Facial",
                ),
                _buildCategoryContainer(
                  index: 1,
                  imagePath: "assets/profile/pedicure.jpg",
                  label: "Pedicure",
                ),
                _buildCategoryContainer(
                  index: 2,
                  imagePath: "assets/profile/menbleach.jpg",
                  label: "Bleach",
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryContainer(
                  index: 3,
                  imagePath: "assets/profile/spawomen.jpg",
                  label: "Spa",
                ),
               
                _buildCategoryContainer(
                  index: 4,
                  imagePath: "assets/profile/fruitfacialmen.jpg",
                  label: "Facial",
                ),
                _buildCategoryContainer(
                  index: 5,
                  imagePath: "assets/profile/hairmen.jpg",
                  label: "Haircut",
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildCategoryContainer(
                  index: 6,
                  imagePath: "assets/profile/hairwomen.jpg",
                  label: "Haircut",
                ),
                _buildCategoryContainer(
                  index: 7,
                  imagePath: "assets/profile/maniwomen.webp",
                  label: "Manicure",
                ),
                _buildCategoryContainer(
                  index: 8,
                  imagePath: "assets/profile/facialwomen.webp",
                  label: "Facial",
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(width: 10),
                _buildCategoryContainer(
                  index: 9,
                  imagePath: "assets/profile/bridal.webp",
                  label: "MakeUp",
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: GestureDetector(
                onTap: () async {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Category Updated successfully!"),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 199, 57, 116),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    "Update",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryContainer({
    required int index,
    required String imagePath,
    required String label,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index; // Update the selected index
        });
      },
      child: Container(
        height: 130,
        width: 100,
        decoration: BoxDecoration(
          color: _selectedIndex == index
              ? Colors.pink.shade100 // Highlight color for the selected container
              : Colors.white, // Default color
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 70,
                width: 70,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                label,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class ChargesTab extends StatefulWidget {
  @override
  _ChargesTabState createState() => _ChargesTabState();
}

class _ChargesTabState extends State<ChargesTab> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _facialController = TextEditingController();
  final TextEditingController _haircutController = TextEditingController();
  final TextEditingController _manicureController = TextEditingController();
  final TextEditingController _makeupController = TextEditingController();
  final TextEditingController _scrubController = TextEditingController();
  final TextEditingController _waxingController = TextEditingController();
  final TextEditingController _othersController = TextEditingController();

  Future<void> _uploadData2() async {
   
    int facial = int.tryParse(_facialController.text.trim()) ?? 0;
     int haircut = int.tryParse(_haircutController.text.trim()) ?? 0;
      int manicure= int.tryParse(_manicureController.text.trim()) ?? 0;
       int makeup = int.tryParse(_makeupController.text.trim()) ?? 0;
        int scrub= int.tryParse(_scrubController.text.trim()) ?? 0;
         int waxing= int.tryParse(_waxingController.text.trim()) ?? 0;
          int others = int.tryParse(_othersController.text.trim()) ?? 0;

    if ( facial <= 0  || haircut <= 0  || manicure <= 0  || makeup <= 0  || scrub <= 0  || waxing <= 0  || others <= 0 ) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please provide valid data.")),
      );
      return;
    }

    try {
      await _firestore.collection('users').add({
        'facial': facial,
        'haircut': haircut,
        'manicure':manicure,
        'makeup': makeup,
        'scrub':scrub,
        'others': others,
        'waxing': waxing,
        'timestamp': FieldValue.serverTimestamp(),
      });

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Charges Updated successfully!")),
      );

      _facialController.clear();
      _haircutController.clear();
      _manicureController.clear();
      _makeupController.clear();
      _scrubController.clear();
      _waxingController.clear();
      _othersController.clear();
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to update data: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          const Center(
           child: Text("Standars Charges Applied ",style: TextStyle(color: Color.fromARGB(255, 205, 100, 130),
           fontSize: 30),
           ),
          ),
          const Center(
           child: Text("Do You Need Help Please Call : 9087878987 ",style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),
           fontSize: 15),
           ),
          ),
            const SizedBox(height: 20),
          
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Facial & Cleanup:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller: _facialController,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10), // Adjust padding if needed
          child: Icon(Icons.currency_rupee, color: Colors.grey), // Rupee icon
        ),
        hintText: "Enter amount",
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: EdgeInsets.all(15),
      ),
    ),
  ),
),
const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Haircut & Haircare:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller: _haircutController,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10), // Adjust padding if needed
          child: Icon(Icons.currency_rupee, color: Colors.grey), // Rupee icon
        ),
        hintText: "Enter amount",
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: EdgeInsets.all(15),
      ),
    ),
  ),
),
const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Manicure & Padicure:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller: _manicureController,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10), // Adjust padding if needed
          child: Icon(Icons.currency_rupee, color: Colors.grey), // Rupee icon
        ),
        hintText: "Enter amount",
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: EdgeInsets.all(15),
      ),
    ),
  ),
),
const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Bridal & Party makeup:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller: _makeupController,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10), // Adjust padding if needed
          child: Icon(Icons.currency_rupee, color: Colors.grey), // Rupee icon
        ),
        hintText: "Enter amount",
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: EdgeInsets.all(15),
      ),
    ),
  ),
),
const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Scrub & D-Tan:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller: _scrubController,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10), // Adjust padding if needed
          child: Icon(Icons.currency_rupee, color: Colors.grey), // Rupee icon
        ),
        hintText: "Enter amount",
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: EdgeInsets.all(15),
      ),
    ),
  ),
),
const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Waxing & Body Message:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller:_waxingController,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10), // Adjust padding if needed
          child: Icon(Icons.currency_rupee, color: Colors.grey), // Rupee icon
        ),
        hintText: "Enter amount",
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: EdgeInsets.all(15),
      ),
    ),
  ),
),
const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Othes:",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
  padding: const EdgeInsets.all(20.0),
  child: Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller: _othersController,
      style: const TextStyle(fontSize: 30),
      decoration: const InputDecoration(
        prefixIcon: Padding(
          padding: EdgeInsets.only(left: 15, right: 10), // Adjust padding if needed
          child: Icon(Icons.currency_rupee, color: Colors.grey), // Rupee icon
        ),
        hintText: "Enter amount",
        hintStyle: TextStyle(fontSize: 20, color: Colors.grey),
        border: OutlineInputBorder(borderSide: BorderSide.none),
        contentPadding: EdgeInsets.all(15),
      ),
    ),
  ),
),
 const SizedBox(height: 10),
            Center(
              child: GestureDetector(
                onTap: () async {
                  _uploadData2();

                 
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: BoxDecoration(
                    color:const Color.fromARGB(255, 199, 57, 116),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Text(
                    "Charge Updated ",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),

        ],
      ),
    );
  }
}