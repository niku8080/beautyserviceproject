import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/adress_form.dart';

class Details2 extends StatefulWidget {
  const Details2({super.key});

  @override
  State<Details2> createState() => _DetailsState();
}

class _DetailsState extends State<Details2> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 370,
                width: double.infinity,
                child: Image.asset(
                  "assets/bm7.webp",
                  fit: BoxFit.cover,
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Star men's parlour.",
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
                  "Address: Star men' parlour pipeline road bhistbag, naka, Savedi, Ahmednagar, Maharashtra 414003.",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              const SizedBox(height: 10),
               Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Photos",
                  style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w700),
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
                            "assets/c1.jpeg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    
                    const SizedBox(width: 10),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "assets/c3.webp",
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "assets/c2.jpeg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: const EdgeInsets.all(12),
                child: Text(
                  "Reviews",
                  style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Image.asset(
                        "assets/c3.webp",
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
                          "Akshay Shinde",
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
                        
                        width: 250,
                        height: 100,
                        child: Text(
                          "It's really one of the best salon in Ahmednagar with such a professional, trained and humble staff. Along with the variety of work they have a amazing feel good ambiance also . I suggest all to always go there and have a feel of comfort and satisfaction.",
                          style: GoogleFonts.quicksand(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Icon(Icons.star,
                          color: Color.fromARGB(255,14,55,88),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,14,55,88),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,14,55,88),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,14,55,88),),
                          Icon(Icons.star,
                          color: Colors.grey),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.green,
                      ),
                      child: Image.asset(
                        "assets/m3.jpg",
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
                          "Kartik Gaikwad",
                          style: GoogleFonts.lato(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      
                      Container(
                        padding: const EdgeInsets.only(top: 10,left: 5),
                        width: 250,
                        height: 100,
                        child:  Text(
                          "Nice treatment and give suggestions to hair cuts 👍.",
                          style: GoogleFonts.quicksand(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Icon(Icons.star,
                          color: Color.fromARGB(255,14,55,88),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,14,55,88),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,14,55,88),),
                          Icon(Icons.star,
                          color: Color.fromARGB(255,14,55,88),),
                          Icon(Icons.star,
                          color: Colors.grey),
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
             color: const Color.fromARGB(255,14,55,88),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
