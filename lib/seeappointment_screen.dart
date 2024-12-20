import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SeeappointmentScreen extends StatelessWidget {
  final Map<String, String> addressData;  // This holds the data passed from the previous screen

  const SeeappointmentScreen({super.key, required this.addressData});  // Constructor to receive addressData

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Appointment Details",
          style: GoogleFonts.aboreto(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: const Color.fromARGB(255, 245, 69, 128),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);  // Goes back to the previous screen
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 245, 69, 128),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your Saved Address",
              style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Text(
              "Name: ${addressData['name']}",  // Displaying values from the addressData map
              style: GoogleFonts.lato(fontSize: 18),
            ),
            Text(
              "Mobile: ${addressData['mobile']}",
              style: GoogleFonts.lato(fontSize: 18),
            ),
            Text(
              "Block No: ${addressData['blockNo']}",
              style: GoogleFonts.lato(fontSize: 18),
            ),
            Text(
              "Society: ${addressData['society']}",
              style: GoogleFonts.lato(fontSize: 18),
            ),
            Text(
              "Landmark: ${addressData['landmark']}",
              style: GoogleFonts.lato(fontSize: 18),
            ),
            Text(
              "Address Type: ${addressData['addressType']}",
              style: GoogleFonts.lato(fontSize: 18),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);  // Goes back to the previous screen
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 245, 69, 128),
              ),
              child: Text(
                "Back to Home",
                style: GoogleFonts.lato(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

