import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/model/appoitment_modle.dart';

class AddressSummary extends StatefulWidget {


 


  
  final List addresses;

  const AddressSummary({Key? key, required this.addresses}) : super(key: key);

  @override
  State<AddressSummary> createState() => _AddressSummaryState();


  
}

class _AddressSummaryState extends State<AddressSummary> {

  List Data=[];


   @override
  void initState() {

        DataMethod();

    super.initState();
    
  }

  void DataMethod(){
      Future.delayed(const Duration(seconds: 0), ()async {
      QuerySnapshot    response= await FirebaseFirestore.instance.collection("appointment").get();

      for(int i=0; i<response.docs.length;i++){
        Data.add(
          AppoitmentModle(
            name: response.docs[i]['name'], 
            mobile:  response.docs[i]['mobile'], 
            blockNo:  response.docs[i]['blockNo'], 
            society:  response.docs[i]['society'], 
            landmark:  response.docs[i]['landmark'], 
          //  saveaddress:  response.docs[i]['name']
            )
        );
        setState(() {
          
        });
      }

      log("DATA ADDED :- ${response}");

      
});
   
   
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Appointement Booking",
          style: GoogleFonts.aboreto(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: const Color.fromARGB(255, 245, 69, 128),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Data.length,
        itemBuilder: (context, index) {
        //  final item = widget.addresses[index];
          return Card(
            color: Color.fromARGB(255, 251, 234, 240),
            elevation: 2,
            margin: const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name: ${Data[index].name}", style: GoogleFonts.lato(fontSize: 18)),
                  Text("Mobile No: ${Data[index].blockNo}", style: GoogleFonts.lato(fontSize: 18)),
                  Text("Block No.: ${Data[index].landmark}", style: GoogleFonts.lato(fontSize: 18)),
                  Text("Society: ${Data[index].mobile}", style: GoogleFonts.lato(fontSize: 18)),
                  Text("Landmark: ${Data[index].society}", style: GoogleFonts.lato(fontSize: 18)),
                 // Text("Address Type: ${Data[index].name}", style: GoogleFonts.lato(fontSize: 18)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

