import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:homepagefemale/loginScreen.dart';
import 'package:homepagefemale/siginScreen.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/w1.jpg'), // Background image
                fit: BoxFit.cover, // Adjust the image to cover the entire background
              ),
            ),
          ),
          
          // Positioned Buttons
           Positioned(
            top: 170,
            left: 60,
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text("Welcome To",
                 style:GoogleFonts.aBeeZee(fontSize: 50,
                 fontWeight: FontWeight.bold),
                 ),
                 Text("Glossum Essence",
                 style: GoogleFonts.aboreto(fontSize: 25,
                 fontWeight: FontWeight.w600,
                 color: const Color.fromARGB(255, 245, 69, 128))
                 ,),
                 const SizedBox(height: 120,),
      
                 GestureDetector(
                  onTap: (){
      
                  },
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  const Loginscreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 50,
                        width: 300,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 249, 69, 128),
                          borderRadius: BorderRadius.circular(20),
                         
                          ),
                        
                        child: Text("Login",
                        style:GoogleFonts.aBeeZee(fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                                     ),
                      ),
                    ),
                  ),
           ),
           const SizedBox(height: 30,),
            GestureDetector(
                  onTap: (){
      
                  },
                  child: GestureDetector(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>  const Siginscreen()));
                    },
                    child: Container(
                      height: 50,
                      width: 300,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255,245,69,128),
                        borderRadius: BorderRadius.circular(20)
                        ),
                      
                      child: Text("SignUp",
                      style:GoogleFonts.aBeeZee(fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                                   ),
                    ),
                  ),
           ),
           const SizedBox(height: 100,),
            GestureDetector(
                  onTap: (){
      
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      //color: Color.fromARGB(255, 196, 122, 95),
                      borderRadius: BorderRadius.circular(10)
                      ),
                    
                    child: Text("Get Started ->",
                    style:GoogleFonts.quicksand(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                 ),
                  ),
           ),
              ],
            )
          ),
         
         
        ],
      ),
    );
  }
}