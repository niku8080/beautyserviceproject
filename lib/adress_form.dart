import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/appointment_booking.dart';

class AddressForm extends StatefulWidget {
  const AddressForm({super.key});

  @override
  State<AddressForm> createState() => _AddressFormState();
}

class _AddressFormState extends State<AddressForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController blockNoController = TextEditingController();
  TextEditingController societyController = TextEditingController();
  TextEditingController landmarkController = TextEditingController();

  String selectedAddressType = ""; // Store the selected address type

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Enter Complete Address",
            style: GoogleFonts.aboreto(
              fontWeight: FontWeight.bold,
              fontSize: 23,
              color: const Color.fromARGB(255, 245, 69, 128),
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField("Name*", nameController),
              _buildTextField("Mobile*", mobileController),
              _buildTextField("Flat No/H.No./Block No*", blockNoController),
              _buildTextField("Apartment Name/Society/Street No.*", societyController),
              _buildTextField("Landmark", landmarkController),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Save address",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey,
                  ),
                ),
              ),
              const SizedBox(height: 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _buildClickableContainer("Home"),
                  _buildClickableContainer("Work"),
                  _buildClickableContainer("Hotel"),
                  _buildClickableContainer("Others"),
                ],
              ),
              const SizedBox(height: 40), // Add spacing between the row and the Save Address button
              GestureDetector(
                onTap: () async{

                  Map<String, dynamic>data= {
          "name": nameController.text,

  "mobile": mobileController.text, 
  "blockNo": blockNoController.text, 
  "society": societyController.text, 
 "landmark":  landmarkController.text 
                  };


                await  FirebaseFirestore.instance.collection("appointment").add(data);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>  AppointmentScreen()));
                },
                child: Center(
                  child: Container(
                        height: 50,
                        width: 320,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 245, 69, 128),
                        ),
                    child: Center(
                      child: Text(
                        "Save Address",
                        style: GoogleFonts.lato(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build text fields with labels
  Widget _buildTextField(String label, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: GoogleFonts.lato(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.blueGrey,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            controller: controller,
            style: const TextStyle(fontSize: 18),
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
        ],
      ),
    );
  }

  // Build a clickable container for address types
  Widget _buildClickableContainer(String label) {
    bool isSelected = selectedAddressType == label;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAddressType = label; // Update the selected type
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        height: 50,
        width: 80,
        decoration: BoxDecoration(
          color: isSelected ? Color.fromARGB(255,245,69,128) : Colors.white,
          border: Border.all(
            color: isSelected ? Color.fromARGB(255,245,69,128) : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            if (isSelected)
              BoxShadow(
                color: Color.fromARGB(255,245,69,128).withOpacity(0.5),
                blurRadius: 4,
                offset: Offset(2, 2),
              ),
          ],
        ),
        child: Center(
          child: Text(
            label,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
