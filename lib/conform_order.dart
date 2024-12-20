import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/homepage_female.dart';

class ConfirmOrderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ConfirmOrderScreen(),
    );
  }
}

class ConfirmOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Success icon
              Container(
                height: 100,
                width: 200,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 225, 129, 161),
                ),
                child: const CircleAvatar(
                  radius: 60,
                  backgroundColor: Color.fromARGB(255, 245, 69, 128),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 70,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              
              // Thank you message
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    Text(
                      'Order Confirmed!',
                      style: GoogleFonts.lato(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Thank you for shopping with us!',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey[600],
                      ),
                    ),
                    const SizedBox(height: 20),
                    
                    // Order details
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color.fromARGB(255, 68, 66, 66)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Order ID - 123456789',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Estimated Delivery - Tomorrow, 10:00 AM',
                            style: TextStyle(fontSize: 20),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                'Total Amount  - ',
                                style: TextStyle(fontSize: 20),
                              ),
                               const Icon(Icons.currency_rupee_outlined, size: 20),
                 Text("140.00",
                 style: TextStyle(fontSize: 20),
                 )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    
                    // View Order Details button
                    
                    const SizedBox(height: 24),
                    
                    // Back to home page
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> imageSlider())); // Go back to home
                      },
                      child: Text(
                        'Back to Home Page',
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
