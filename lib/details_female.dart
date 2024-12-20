import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/adress_form.dart';


class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:
         SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 370,
                width: double.infinity,
                child: Image.asset(
                  "assets/beau1.webp",
                  fit: BoxFit.cover,
                ),
              ),
             Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Siya beauty home spa & training center",
                  style: GoogleFonts.lato(
                    fontSize: 26,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                  ),
                ),
              ),
             Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Address: Pipeline Rd, Wani Nagar, Savedi, Ahmednagar, Maharashtra 410003.",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 10),
               Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Photos",
                        style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w800),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                     Padding(
                       padding: const EdgeInsets.only(left: 5),
                       child: Container(
                          height: 150,
                          width: 150,
                          child: Image.asset(
                            "assets/siya1.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                     ),
                  
                    const SizedBox(width: 10),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "assets/siya2.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "assets/mack1.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12 ),
                      child: Text(
                        "Reviews",
                        style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                ),
              ),
             // const SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                     // child: Padding(
                       // padding: const EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/n1.jpeg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                       Padding(
                        padding: const EdgeInsets.only(top: 25,
                        left: 10),
                        child: Text(
                          "Supriya Pukale",
                          style: GoogleFonts.lato(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      
                      Container(
                        padding: const EdgeInsets.only(top: 10,
                        left: 5),
                        width: 230,
                        height: 100,
                        child:  Text(
                          "Highly recommend Siya beauty home! Their expert team provided exceptional service, attention to detail, and stunning results. Friendly staff, relaxing atmosphere, and reasonable prices. Will definitely return!.",
                          style: GoogleFonts.quicksand(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(height: 5,),
                      const Row(
                        children: [
                          Icon(Icons.star,
                          color: Color.fromARGB(255,245,69,128),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,245,69,128),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,245,69,128),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,245,69,128),),
                          Icon(Icons.star,
                          color: Colors.grey),

                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Image.asset(
                        "assets/n2.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     Padding(
                        padding: const EdgeInsets.only(top: 25,
                        left: 10),
                        child: Text(
                          "Arati Dube",
                          style: GoogleFonts.lato(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      
                      Container(
                        padding: const EdgeInsets.only(top: 10,
                        left: 5),
                        width: 230,
                        height: 100,
                        child:  Text(
                          "Getting my beauty services done here since 5-6 years now. Anagha ma'am and others as well are quite excellent at their work. My home is in Ahmednagar and I work in Pune, but I get all services done here once I visit home. They have maintained very good hygiene in the parlour..",
                          style: GoogleFonts.quicksand(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Text(
                            "******",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Colors.amber,
                            ),
                          ),
                          SizedBox(width: 10),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "6.4",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomSheet: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  AddressForm()));
            },
            child: Container(
              height: 50,
              width: 240,
              child: const Center(
                child: Text("Processed",
                style: TextStyle(color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.w700,
                ),),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
             color: const Color.fromARGB(255,245,69,128),
              ),
            ),
          ),
        ),
      ),
    );
  }
}