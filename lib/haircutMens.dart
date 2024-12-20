import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/beautician_male.dart';
import 'package:homepagefemale/homepage_male.dart';
import 'package:homepagefemale/men_cleanup_beach.dart';


class Haircutmens extends StatefulWidget {
  const Haircutmens({super.key});

  @override
  State<Haircutmens> createState() => _HaircutmensState();
}

class _HaircutmensState extends State<Haircutmens> {
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 208, 217, 244),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          title: Center(child: Text("Men Packages",
          style:  GoogleFonts.aboreto(
            fontWeight: FontWeight.bold,
            fontSize: 23,
            color: const Color.fromARGB(255, 14, 55, 88),
          ),
        ),
        
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ImageSlider2()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255,14,55,88),),
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
                            border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
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
                            border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("Scrub & Facial"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:  const EdgeInsets.all(5.0),
                        child: GestureDetector(
                          onTap: () {
                             Navigator.push(context, MaterialPageRoute(builder: (context)=> const MenCleanupBeach()));
                          },
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                             border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                            ),
                            child:  Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                  
                                  const Text("Bleach"),
                                  
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
                            border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("Shaving"),
                                
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
                            border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                 Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("waxing"),
                                
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
                           border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                 Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("Kids Haircut"),
                                
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
                           border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("Hair Color"),
                                
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
                           border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                 Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("Message Therapy"),
                                
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
                            border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("Cleanup"),
                                
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
                            border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                 Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("Hair Care"),
                                
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
                            border: Border.all(color: const Color.fromARGB(255, 2, 12, 89)),
                          ),
                          child:  Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: [
                                 Image.asset("assets/mens_logo.jpg",fit:  BoxFit.cover,),
                                
                                const Text("Manicure & Pedicure"),
                                
                              ],
                            ),
                          ),
                        ),
                      ),
                       
                  ],
                ),
              ),
              GestureDetector(
                onDoubleTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const BeauticianMale()));
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
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Haircut ",
                                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Comb Over Cut",
                                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                                ),
                                SizedBox(height: 7),
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee_outlined, size: 15,
                                    color: Colors.grey,),
                                    Text("700",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),),
                                    SizedBox(width: 10),
                                    Icon(Icons.currency_rupee_outlined, size: 15),
                                    Text("499"),
                                    SizedBox(width: 10),
                                    Text("20% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                Row(
                                  children: [
                                     Icon(Icons.timer,
                                     color: Color.fromARGB(255, 106, 104, 104),),
                                     SizedBox(width: 10,
                                     ),
                                Text("60 min"),
                                    
                                  ],
                                ),
                                SizedBox(height: 7,),
                                Row(
                                children: [
                                Text("Save  201.00 on this Service.",
                                 style: TextStyle(
                                  color: Color.fromARGB(255, 3, 12, 148),
                                  
                                    
                                 ),),
                                ],),
                                 
                              ],
                            ),
                          ),
                        const SizedBox(
                            width: 20,
                          ),
                         Container(
                      height: 150,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                       
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15), // Large enough to make it fully circular
                        child: Image.asset(
                          "assets/combover.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    
                        ],
                      ),
                    ),
                  ),
                ),
              ),
             GestureDetector(
                onDoubleTap: () {
                  
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
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haircut ",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Faux Haulk Cut",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 15,
                                  color: Colors.grey,),
                                  Text("900",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 15),
                                  Text("670"),
                                  SizedBox(width: 10),
                                  Text("25% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                   Icon(Icons.timer,
                                   color: Color.fromARGB(255, 106, 104, 104),),
                                   SizedBox(width: 10,
                                   ),
                              Text("40 min"),
                
                                ],
                              ),
                              SizedBox(height: 7,),
                              Row(
                              children: [
                              Text("Save  203.00 on this Service.",
                               style: TextStyle(
                                color: Color.fromARGB(255, 3, 12, 148),
                                
                
                               ),),
                              ],),
                               
                            ],
                          ),
                        ),
                      const SizedBox(
                          width: 20,
                        ),
                       Container(
  height: 150,
  width: 100,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
   
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15), // Large enough to make it fully circular
    child: Image.asset(
      "assets/faux.jpeg",
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
                onDoubleTap: () {
                  
                },
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
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
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haircut ",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Ceasaer Cut",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 15,
                                  color: Colors.grey,),
                                  Text("450",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 15),
                                  Text("365"),
                                  SizedBox(width: 10),
                                  Text("19% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                   Icon(Icons.timer,
                                   color: Color.fromARGB(255, 106, 104, 104),),
                                   SizedBox(width: 10,
                                   ),
                              Text("30 min"),
                
                                ],
                              ),
                              SizedBox(height: 7,),
                              Row(
                              children: [
                              Text("Save  85.00 on this Service.",
                               style: TextStyle(
                                color: Color.fromARGB(255, 3, 12, 148),
                                
                
                               ),),
                              ],),
                               
                            ],
                          ),
                        ),
                      const SizedBox(
                          width: 20,
                        ),
                       Container(
  height: 150,
  width: 100,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
   
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15), // Large enough to make it fully circular
    child: Image.asset(
      "assets/caesaer.jpeg",
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
                onDoubleTap: () {
                  
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
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haircut ",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Pampadour Cut",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 15,
                                  color: Colors.grey,),
                                  Text("650",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 15),
                                  Text("370"),
                                  SizedBox(width: 10),
                                  Text("45% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                   Icon(Icons.timer,
                                   color: Color.fromARGB(255, 106, 104, 104),),
                                   SizedBox(width: 10,
                                   ),
                              Text("80 min"),
                
                                ],
                              ),
                              SizedBox(height: 7,),
                              Row(
                              children: [
                              Text("Save  280.00 on this Service.",
                               style: TextStyle(
                                color: Color.fromARGB(255, 3, 12, 148),
                                
                
                               ),),
                              ],),
                               
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      
                       Container(
  height: 150,
  width: 100,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
   
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15), // Large enough to make it fully circular
    child: Image.asset(
      "assets/pompadour.jpeg",
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
                onDoubleTap: () {
                  
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
                        const Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Haircut ",
                                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              Text(
                                "Low Fade Cut",
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(height: 7),
                              Row(
                                children: [
                                  Icon(Icons.currency_rupee_outlined, size: 15,
                                  color: Colors.grey,),
                                  Text("400",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),),
                                  SizedBox(width: 10),
                                  Icon(Icons.currency_rupee_outlined, size: 15),
                                  Text("200"),
                                  SizedBox(width: 10),
                                  Text("50% off", style: TextStyle(color: Color.fromARGB(235, 10, 158, 40)),)
                                ],
                              ),
                              SizedBox(
                                height: 7,
                              ),
                              Row(
                                children: [
                                   Icon(Icons.timer,
                                   color: Color.fromARGB(255, 106, 104, 104),),
                                   SizedBox(width: 10,
                                   ),
                              Text("60 min"),
                
                                ],
                              ),
                              SizedBox(height: 7,),
                              Row(
                              children: [
                              Text("Save  200.00 on this Service.",
                               style: TextStyle(
                                color: Color.fromARGB(255, 3, 12, 148),
                                
                
                               ),),
                              ],),
                               
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                      
                       Container(
  height: 150,
  width: 100,
  decoration: const BoxDecoration(
    shape: BoxShape.circle,
   
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(15), // Large enough to make it fully circular
    child: Image.asset(
      "assets/lowfade.jpeg",
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