import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/beautician_female.dart';
import 'package:homepagefemale/mackUpFemale.dart';

import 'homepage_female.dart';



class Femalehaircut extends StatefulWidget {
  const Femalehaircut({super.key});

  @override
  State<Femalehaircut> createState() => _FemalehaircutState();
}

class _FemalehaircutState extends State<Femalehaircut> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 242, 248),
        appBar: AppBar(
          backgroundColor:  const Color.fromARGB(255, 255, 255, 255),
          title:  Center(child: Text("Women Packages",
          style: GoogleFonts.aboreto(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: const Color.fromARGB(255, 245, 69, 128),
          ),
        ),
        
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> imageSlider()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255,245,69,128),),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 10, width: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 10),
                    // Packages
                    
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Row(
                            children: [
                              Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                              
                              const Text("Facial & Cleanup  "),
                              
                            ],
                          ),
                        ),
                      ),
                       Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mackupfemale()));
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                   Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                  
                                  const Text("Bridal Makeup"),
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                       Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
                                const Text("Haircut"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
                                const Text("Body massage"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image. asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
                                const Text("Waxing"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                 Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
                                const Text("Mani-Pedi"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                 Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
                                const Text("hair Care"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                 Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
                                const Text("hair Dresser"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
                                const Text("Threading"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                     
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: const Color.fromARGB(255, 241, 160, 185)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
                                const Text("party Makeup"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                       
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const BeauticianFemale ()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 249, 249),
                      borderRadius: BorderRadius.circular(10), // Optional: round corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haircut",
                                style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "Feather Haircut",
                                style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 20,
                                  color: Colors.grey,),
                                  Text("839",
                                  style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 20),
                                  Text("549"),
                                  SizedBox(width: 10),
                                  Text("39% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                   Icon(Icons.timer,
                                   color: Color.fromARGB(255, 148, 148, 148),),
                                   SizedBox(width: 10,),
                              Text("60 min"),
                
                                ],
                              ),
                              const SizedBox(height: 5,),
                              const Row(
                              children: [
                              Text("Save 290.00 on this Service.",
                               style: TextStyle(
                                color: Color.fromARGB(255, 254, 119, 177),
                                
                
                               ),),
                              ],),
                               
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                       Container(
                  height: 150,
                  width: 100,
                  
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Make sure the image respects the circular border
                    child: Image.asset(
                      "assets/feathercut.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                )
                
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 249, 249),
                      borderRadius: BorderRadius.circular(10), // Optional: round corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Haircut",
                                  style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                              ),
                              
                                const SizedBox(height: 5),
                                 Text(
                                  "U Haircut",
                                  style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                                ),
                                 
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Icon(Icons.currency_rupee_outlined, size: 20,color: Colors.grey,),
                                    Text("524",
                                    style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                    SizedBox(width: 10),
                                    Icon(Icons.currency_rupee_outlined, size: 20),
                                    Text("399"),
                                    SizedBox(width: 20),
                                    Text("24% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),),
                                    
                                    
                                  ],
                                ),
                                 const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                     Icon(Icons.timer,color: Color.fromARGB(255, 148, 148, 148),),
                                   SizedBox(width: 10,),
                              Text("50 min"),
                                  ],
                
                                ),
                                
                                
                                 const SizedBox(height: 10,),
                               const Text("Save  125.00 on this Service.",
                               style: TextStyle(
                               color: Color.fromARGB(255, 254, 119, 177),
                               ),),
                               
                              ],
                            ),
                          ),
                        ),
                       const SizedBox(
                        width: 20,
                       ),
                        Container(
                          height: 150,
                          width: 100,
                           child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                         
                          child: Image.asset("assets/ucut.webp",
                            fit: BoxFit.cover,
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 249, 249),
                      borderRadius: BorderRadius.circular(10), // Optional: round corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Haircut",
                                  style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                              ),
                                
                                const SizedBox(height: 5),
                                 Text(
                                  "Step with layer Haircut",
                                 style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                                ),
                                 
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Icon(Icons.currency_rupee_outlined, size: 20,color: Colors.grey,),
                                    Text("839",style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                    SizedBox(width: 10),
                                    Icon(Icons.currency_rupee_outlined, size: 20),
                                    Text("549"),
                                    SizedBox(width: 20),
                                    Text("35% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),),
                                    
                                    
                                  ],
                                ),
                                 const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                     Icon(Icons.timer,color: Color.fromARGB(255, 148, 148, 148),),
                                   SizedBox(width: 10,),
                              Text("80 min"),
                                  ],
                
                                ),
                                
                                
                                 const SizedBox(height: 10,),
                               const Text("Save 290.00on this Service.",
                               style: TextStyle(
                                color: Color.fromARGB(255, 254, 119, 177),
                               ),),
                               
                              ],
                            ),
                          ),
                        ),
                       const SizedBox(width: 20),
                        Container(
                          height: 150,
                          width: 100,
                          child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/layer1.jpeg",
                            fit: BoxFit.cover,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 249, 249),
                      borderRadius: BorderRadius.circular(10), // Optional: round corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haircut",
                                style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                              ),
                              
                              const SizedBox(height: 10),
                               Text(
                                "Splits End Cut",
                               style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 20,
                                  color: Colors.grey,),
                                  Text("524",
                                  style:  TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 20),
                                  Text("349"),
                                  SizedBox(width: 20),
                                  Text("33% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                   Icon(Icons.timer,color: Color.fromARGB(255, 148, 148, 148),),
                                   SizedBox(width: 10,),
                              Text("45 min"),
                
                                ],
                              ),
                              const SizedBox(height: 5,),
                               const Text("Save 175.00 on this Service.",
                               style: TextStyle(
                                color: Color.fromARGB(255, 254, 119, 177),
                               ),),
                             
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 150,
                          width: 100,
                           child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
                          child: Image.asset(
                            "assets/splisend.webp",
                            fit: BoxFit.cover,
                          ),
                           ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
               GestureDetector(
                onTap: () {
                  
                },
                 child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 249, 249),
                      borderRadius: BorderRadius.circular(10), // Optional: round corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haircut",
                                style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                              ),
                              
                              const SizedBox(height: 10),
                               Text(
                                "Bob Cut(Short Cuts)",
                               style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 20,
                                  color: Colors.grey,),
                                  Text("944",
                                  style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 20),
                                  Text("599"),
                                  SizedBox(width: 20),
                                  Text("37% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                   Icon(Icons.timer,color: Color.fromARGB(255, 148, 148, 148),),
                                   SizedBox(width: 10,),
                              Text("50 min"),
                 
                                ],
                              ),
                              const SizedBox(height: 5,),
                               const Text("Save 345.00 on this Service.",
                               style: TextStyle(
                               color: Color.fromARGB(255, 254, 119, 177),
                               ),),
                             
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          height: 150,
                          width: 100, child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
                         
                          child: Image.asset(
                            "assets/bobcut.jpeg",
                            fit: BoxFit.cover,
                          ),
                          ),
                        ),
                      ],
                    ),
                  ),
                               ),
               ),
               GestureDetector(
                onTap: () {
                  
                },
                 child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 249, 249, 249),
                      borderRadius: BorderRadius.circular(10), // Optional: round corners
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                         Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haircut",
                                style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                              ),
                              
                              const SizedBox(height: 10),
                               Text(
                                "Straight length Haircut",
                                style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 20,
                                  color: Colors.grey,),
                                  Text("839",
                                  style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 20),
                                  Text("549"),
                                  SizedBox(width: 20),
                                  Text("35% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                   Icon(Icons.timer,color: Color.fromARGB(255, 148, 148, 148),),
                                   SizedBox(width: 10,),
                              Text("60 min"),
                 
                                ],
                              ),
                              const SizedBox(height:10,),
                               const Text("Save 290.00 on this Service.",
                               style: TextStyle(
                                color: Color.fromARGB(255, 254, 119, 177),
                               ),),
                             
                            ],
                          ),
                        ),
                        const SizedBox(width: 20),
                       Container(
                   height: 150,
                   width: 100,
                   child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
                    
                     child: Image.asset(
                       "assets/straightcut.jpg",
                       fit: BoxFit.cover,
                     ),
                   ),
                       ),
                 
                 
                      ],
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
}