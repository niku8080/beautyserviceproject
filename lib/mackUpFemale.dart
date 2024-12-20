import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/beautician_female.dart';
import 'package:homepagefemale/homepage_female.dart';


class Mackupfemale extends StatelessWidget {
  const Mackupfemale({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 242, 248),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title:  Center(child: Text("Women Packages",
          style:  GoogleFonts.aboreto(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: const Color.fromARGB(255, 245, 69, 128),
          ),
        ),
        
          ),
          leading: 
             GestureDetector(
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
                                Image.asset("assets/women_logo.png",fit: BoxFit.cover,),
                                
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
                  
                },
                 child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>const BeauticianFemale ()));
                    },
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
                                  "Bridal Makeup",
                                   style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                                ),
                                const SizedBox(height: 10),
                                 Text(
                                  "Matte Bridal makeup",
                                 style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                                ),
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Icon(Icons.currency_rupee_outlined, size: 20,
                                    color: Colors.grey,),
                                    Text("8500",
                                    style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                    SizedBox(width: 10),
                                    Icon(Icons.currency_rupee_outlined, size: 20),
                                    Text("6500"),
                                    SizedBox(width: 20),
                                    Text("37% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Row(
                                  children: [
                                     Icon(Icons.timer,color: Color.fromARGB(255, 92, 91, 91),),
                                     SizedBox(width: 10,),
                                Text("300 min"),
                                     
                                  ],
                                ),
                                const SizedBox(height: 5,),
                                 const Text("Save 2,000.00 on this Service.",
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
                            decoration: BoxDecoration(
                              border: Border.all(color: const Color.fromARGB(255, 239, 221, 50),
                              width: 2)
                            ),
                            child: Image.asset(
                              "assets/hd.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                               ),
               ),
               GestureDetector(
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
                                "Bridal Makeup",
                                 style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                              ),
                              const SizedBox(height: 10),
                               Text(
                                "Preminum Bridal makeup",
                               style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                              ),
                              const SizedBox(height: 10),
                              const Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 20,
                                  color: Colors.grey,),
                                  Text("12599",
                                  style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 20),
                                  Text("7599"),
                                  SizedBox(width:10),
                                  Text("35% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                   Icon(Icons.timer,color: Color.fromARGB(255, 92, 91, 91),),
                                   SizedBox(width: 10,),
                              Text("360 min"),
                 
                                ],
                              ),
                              const SizedBox(height: 5,),
                               const Text("Save 5,000.00 on this Service.",
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
                   decoration: BoxDecoration(
                     border: Border.all(
                       color: const Color.fromARGB(255, 255, 206, 28), // Use a color for gold
                       width: 3, // Adjust the width of the border as needed
                     ),
                   ),
                    
                     child: Image.asset(
                       "assets/n1.jpg",
                       fit: BoxFit.cover,
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
                                "Bridal Makeup",
                                 style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                              ),
                              const SizedBox(height: 10),
                               Text(
                                "Airbrush Bridal Makeup",
                                style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                              ),
                              const SizedBox(height: 20),
                              const Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 20,
                                  color: Colors.grey,),
                                  Text("9449",
                                  style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 20),
                                  Text("5699"),
                                  SizedBox(width: 10),
                                  Text("40% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              const Row(
                                children: [
                                  Icon(Icons.timer,color: Color.fromARGB(255, 92, 91, 91),),
                                   SizedBox(width: 10,),
                              Text("240 min"),
                
                                ],
                              ),
                              const SizedBox(height: 5,),
                              const Row(
                              children: [
                              Text("Save 3,750.00 on this Service.",
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
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color.fromARGB(255, 239, 151, 50),
                            width: 3)
                          ),
                          child: Image.asset(
                            "assets/airbrush.jpg",
                            fit: BoxFit.cover,
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
                                  "Bridal Makeup",
                                   style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                                ),
                                const SizedBox(height: 5),
                                 Text(
                                  " Shimmer Bridal Makeup",
                                  style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                                ),
                                 
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Icon(Icons.currency_rupee_outlined, size: 20),
                                    Text("12599",
                                    style: TextStyle(
                                    color:Color.fromARGB(255, 78, 77, 77),
                                  ),),
                                    SizedBox(width: 10),
                                    Icon(Icons.currency_rupee_outlined, size: 20),
                                    Text("799"),
                                    SizedBox(width: 10),
                                    Text("40% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),),
                                    
                                    
                                  ],
                                ),
                                 const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                   Icon(Icons.timer,color: Color.fromARGB(255, 92, 91, 91),),
                                   SizedBox(width: 10,),
                              Text("290 min"),
                                  ],
                
                                ),
                                
                                
                                 const SizedBox(height: 10,),
                               const Text("Save  5,000.00 on this Service.",
                               style: TextStyle(
                               color: Color.fromARGB(255, 254, 119, 177),
                               ),),
                               
                              ],
                            ),
                          ),
                        ),
                       const SizedBox(width: 15),
                        Container(
                          height: 150,
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color.fromARGB(255, 239, 221, 50),
                            width: 3)
                          ),
                          child: Image.asset(
                            "assets/shimmwe.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
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
                                  "Bridal Makeup",
                                   style:GoogleFonts.lato(fontSize: 20,
                                fontWeight:FontWeight.w600 ,
                                color: Colors.black)
                                ),
                                const SizedBox(height: 5),
                                 Text(
                                  "Mineral Bridal Makeup",
                                  style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 78, 77, 77)),
                                ),
                                 
                                const SizedBox(height: 10),
                                const Row(
                                  children: [
                                    Icon(Icons.currency_rupee_outlined, size: 20),
                                    Text("9000"),
                                    SizedBox(width: 10),
                                    Icon(Icons.currency_rupee_outlined, size: 20),
                                    Text("7500"),
                                    SizedBox(width: 10),
                                    Text("25% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),),
                                    
                                    
                                  ],
                                ),
                                 const SizedBox(height: 10,),
                                const Row(
                                  children: [
                                  Icon(Icons.timer,color: Color.fromARGB(255, 92, 91, 91),),
                                   SizedBox(width: 10,),
                              Text(" 280 min"),
                                  ],
                
                                ),
                                
                                
                                 const SizedBox(height: 10,),
                               const Text("Save 1,500.00on this Service.",
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
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color.fromARGB(255, 239, 221, 50),
                            width: 3)
                          ),
                          child: Image.asset(
                            "assets/mineral.webp",
                            fit: BoxFit.cover,
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