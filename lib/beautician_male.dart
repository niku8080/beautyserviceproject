
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/details_male.dart';
import 'package:homepagefemale/haircutMens.dart';


class BeauticianMale extends StatefulWidget {
  const BeauticianMale({super.key});

  @override
  State<BeauticianMale> createState() => __BeauticianState();
}

class __BeauticianState extends State<BeauticianMale> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        //backgroundColor: Color.fromARGB(255, 205, 220, 232),
appBar: AppBar(
  backgroundColor: Colors.white,
  surfaceTintColor: Colors.white,
  title:  Padding(
    padding: EdgeInsets.all(9.0),
    child: Text("Choose Beauty Specialist",
    style:     GoogleFonts.aboreto(
            fontWeight: FontWeight.bold,
            fontSize: 21,
            color: const Color.fromARGB(255, 14, 55, 88),
          ),
        ),
        
  ),
  //backgroundColor: const Color.fromARGB(255,245,69,128),
  leading: GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Haircutmens()));
    },
    child: const Icon(Icons.arrow_back_ios,
    color: Color.fromARGB(255,14,55,88),),
  ),
  
),
body: ListView.builder(
  itemCount: 1,
  physics: const BouncingScrollPhysics(),
  itemBuilder: (context, index) => 
Column(
  children: [
  Padding(padding: const EdgeInsets.all(8.0),
    child: GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> const Details2()));
      },
      child: Container(
        margin:const EdgeInsets.only(top: 10,
        left: 10,
        right: 10),
        height: 150,
        width: 370,
        decoration: BoxDecoration(
        
          borderRadius: BorderRadius.circular(12),
          boxShadow:const [ 
            BoxShadow(
              offset: Offset(0, 10),
              color: Color.fromRGBO(20, 17, 17, 0.098),
              blurRadius: 0,
            )
          ],
        ),
        child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.only(top: 5,
            left: 5,
            ),
            height: 150,
            width: 150,
            child: Image.asset("assets/bm7.webp",
            fit: BoxFit.cover,),
          ),
           Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                padding: const EdgeInsets.only(top: 20,),
                child: Text("Om Thorat",
                style: GoogleFonts.lato(fontSize: 22,
                fontWeight:FontWeight.w600 )),
              ),
              
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(top: 5,),
                  height: 170,
                  width: 160,
                child:   Text("Give Services of Haircut,Scrub,Beard ,Cleanup.",
                style: GoogleFonts.quicksand(fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.black,
                )),
                ),
              ),
              
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                     color: Color.fromARGB(255,14,55,88),),
                    ],
                  ),
                
              
            ],
          ),
        ],),
        
      ),
    ),
    ),
    Padding(padding: const EdgeInsets.all(8.0),
    child: Container(
      margin:const EdgeInsets.only(top: 10,
      left: 10,
      right: 10),
      height: 150,
      width: 370,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(12),
        boxShadow:const [ 
          BoxShadow(
            offset: Offset(0, 10),
            color: Color.fromRGBO(20, 17, 17, 0.098),
            blurRadius: 0,
          )
        ],
      ),
      child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(top: 5,
          left: 5,
          ),
          height: 150,
          width: 150,
          child: Image.asset("assets/bm2.jpg",
          fit: BoxFit.cover,),
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 20,),
              child: Text("Akshay Barbade",
              style: GoogleFonts.lato(fontSize: 22,
              fontWeight:FontWeight.w600 )),
            ),
            
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 5,),
                height: 150,
                width: 150,
              child:   Text("Give Services of Haircut,Scrub,Beard ,Cleanup.",
              style: GoogleFonts.quicksand(fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              )),
              ),
            ),
          
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
      ],),
      
    ),
    ),
    Padding(padding: const EdgeInsets.all(8.0),
    child: Container(
      margin:const EdgeInsets.only(top: 10,
      left: 10,
      right: 10),
      height: 150,
      width: 370,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(12),
        boxShadow:const [ 
          BoxShadow(
            offset: Offset(0, 10),
            color: Color.fromRGBO(20, 17, 17, 0.098),
            blurRadius: 0,
          )
        ],
      ),
      child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(top: 5,
          left: 5,
          ),
          height: 150,
          width: 150,
          child: Image.asset("assets/bm3.jpeg",
          fit: BoxFit.cover,),
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 20,),
              child: Text("Sachine Sigh",
              style: GoogleFonts.lato(fontSize: 22,
              fontWeight: FontWeight.w600)),
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 5,),
                height: 150,
                width: 150,
              child:   Text("Give Services of Haircut,Scrub,Beard ,Cleanup.",
              style: GoogleFonts.quicksand(fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black,
              )),
              ),
            ),
            
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    color: Colors.grey,),
                  ],
                ),
              
            
          ],
        ),
      ],),
      
    ),
    ),
    Padding(padding: const EdgeInsets.all(8.0),
    child: Container(
      margin:const EdgeInsets.only(top: 10,
      left: 10,
      right: 10),
      height: 150,
      width: 370,
      decoration: BoxDecoration(
      
        borderRadius: BorderRadius.circular(12),
        boxShadow:const [ 
          BoxShadow(
            offset: Offset(0, 10),
            color: Color.fromRGBO(20, 17, 17, 0.098),
            blurRadius: 0,
          )
        ],
      ),
      child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(top: 10,
          left: 10,
          ),
          height: 150,
          width: 150,
          child: Image.asset("assets/bm4.webp",
          fit: BoxFit.cover,),
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 20,),
              child: Text("Rajveer Mohite",
              style: GoogleFonts.lato(fontSize: 22,
              fontWeight: FontWeight.w600)),
            ),
            
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 5,),
                height: 150,
                width: 150,
              child:   Text("Give Services of Haircut,Scrub,Beard ,Cleanup.",
              style:GoogleFonts.quicksand(fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black)),
              ),
            ),
          
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Icon(Icons.star,
                     color: Color.fromARGB(255,14,55,88),),
                    Icon(Icons.star,
                     color: Color.fromARGB(255,14,55,88),),
                    Icon(Icons.star,
                     color: Color.fromARGB(255,14,55,88),),
                    Icon(Icons.star,
                   color: Colors.grey),
                    Icon(Icons.star,
                    color: Colors.grey),
                  ],
                ),
              
            
          ],
        ),
      ],),
      
    ),
    ),
    Padding(padding: const EdgeInsets.all(8.0),
    child: Container(
      margin:const EdgeInsets.only(top: 10,
      left: 10,
      right: 10),
      height: 150,
      width: 370,
      decoration: BoxDecoration(
        
        borderRadius: BorderRadius.circular(12),
        boxShadow:const [ 
          BoxShadow(
            offset: Offset(0, 10),
            color: Color.fromRGBO(20, 17, 17, 0.098),
            blurRadius: 0,
          )
        ],
      ),
      child: Row(
      children: [
        Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.only(top: 5,
          left: 5,
          ),
          height: 150,
          width: 150,
          child: Image.asset("assets/bm5.jpg",
          fit: BoxFit.cover,),
        ),
         Column(
          children: [
             Padding(
              padding: const EdgeInsets.only(top: 25,),
              child: Text("Sodi Sigh",
              style: GoogleFonts.lato(fontSize:22,
              fontWeight: FontWeight.w600 )),
            ),
           
            Expanded(
              child: Container(
                padding: const EdgeInsets.only(top: 5,),
                height: 150,
                width: 150,
              child:   Text("Give Services of Haircut,Scrub,Beard ,Cleanup.",
              style: GoogleFonts.quicksand(fontSize: 15,
              fontWeight: FontWeight.w600,
              color: Colors.black)),
              ),
            ),
            
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.star,
                     color: Color.fromARGB(255,14,55,88),),
                    Icon(Icons.star,
                     color: Color.fromARGB(255,14,55,88),),
                    Icon(Icons.star,
                    color: Colors.grey),
                    Icon(Icons.star,
                    color: Colors.grey),
                    Icon(Icons.star,
                    color: Colors.grey),
                  ],
                ),
              
            
          ],
        ),
      ],),
      
    ),
    ),
  ]
),
),
   ),
    );
      
       
  }
}
