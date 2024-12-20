import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/adress_form.dart';
import 'package:homepagefemale/conformappointment.dart';

class AppointmentScreen extends StatefulWidget {
  
  @override
  _AppointmentScreenState createState() => _AppointmentScreenState();
}

class _AppointmentScreenState extends State<AppointmentScreen> {
  DateTime selectedDate = DateTime.now();
  String? selectedTimeSlot; // To track the selected time slot.

  List<String> timeSlots = [
    "10:00 AM", "10:30 AM", "11:00 AM", "11:30 AM",
    "12:00 PM", "12:30 PM", "01:00 PM", "01:30 PM",
    "02:00 PM", "02:30 PM", "03:00 PM", "03:30 PM",
    "04:00 PM", "04:30 PM", "05:00 PM", "05:30 PM",
    "06:00 PM", "06:30 PM", "07:00 PM", "07:30 PM",
  ];

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Glow Essence",
          style: GoogleFonts.aboreto(
            fontWeight: FontWeight.bold,
            fontSize: 26,
            color: const Color.fromARGB(255, 245, 69, 128),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => AddressForm()));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 245, 69, 128),
          ),
        ),
      ),
      body:
       Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select Date & Time Of Appointment",
                style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () => _selectDate(context),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${selectedDate.toLocal()}".split(' ')[0],
                        style: GoogleFonts.lato(fontSize: 26),
                      ),
                      const Icon(Icons.calendar_today),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Available Time Slots",
                style: GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Wrap(
                  spacing: 30,
                  runSpacing: 20,
                  children: timeSlots
                      .map((time) => _buildTimeSlotButton(time))
                      .toList(),
                ),
              ),
              const SizedBox(height: 20),
            
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (selectedTimeSlot == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Please select a time slot!"),
                        ),
                      );
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ConformAppointment(address:[],)));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    backgroundColor: const Color.fromARGB(255, 245, 69, 128),
                    textStyle: const TextStyle(fontSize: 21),
                  ),
                  child: Text(
                    "Book & pay after service",
                    style: GoogleFonts.lato(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "By booking an appointment you agree to our Terms of Service and Privacy Policy.",
                style: GoogleFonts.lato(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 75, 73, 73),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTimeSlotButton(String time) {
    bool isSelected = selectedTimeSlot == time;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTimeSlot = time;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        decoration: BoxDecoration(
          color: isSelected ? Colors.pinkAccent : Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isSelected ? Colors.pinkAccent : Colors.grey,
            width: 2,
          ),
        ),
        child: Text(
          time,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
