import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/infopage_men.dart';

import 'homepage_male.dart';



 class topSelf1 extends StatefulWidget {
  const topSelf1({super.key});

  @override
  State<topSelf1> createState() => _topSelfState();
}

class _topSelfState extends State<topSelf1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ImageSlider2()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255,14,55,88),),
          ),
        ),

        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("TOP",
                  style: GoogleFonts.abyssinicaSil(
                    fontSize: 50,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255,14,55,88),
                  )),
                  const SizedBox(width: 20,),
                   Text("SHELF",
                  style: GoogleFonts.acme(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                   color:  Color.fromARGB(255,14,55,88),
                  )),
                ],
              ),
               Text("Beauty news, reviews and hot takes",
                  style: GoogleFonts.lato(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color:  Colors.black,
                  ),),
                  const SizedBox(height: 40,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        color: Color.fromARGB(255,14,55,88),
                        child:Text("WHAT'S BEEN UP",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),)
                        ),
                         Container(height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        color: Color.fromARGB(255,14,55,88),
                        child:Text("POWDER ROOM",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),)
                        ),
                         Container(height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        color: Color.fromARGB(255,14,55,88),
                        child:Text("RITUALS",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),)
                        ),
                         Container(height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        color: Color.fromARGB(255,14,55,88),
                        child:Text("INGREDIENT      |",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),)
                        ),
                         Container(height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        color: Color.fromARGB(255,14,55,88),
                        child:GestureDetector(
                          onTap: (){

                          },
                        child:Text("BOOKMARK",
                        style: GoogleFonts.lato(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),
                        ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20,),
                 Padding(padding: const EdgeInsets.all(10),
                 child: 
                  Text("ALL YOUR BEAUTY Q'S ANSWERED, STRAIGHT FROM THE EXPERTS",
                  style: GoogleFonts.aBeeZee(
                    fontSize: 20,
                    color: const Color.fromARGB(255, 52, 52, 52),
                    fontWeight: FontWeight.w700
                  )),
          ),
              const SizedBox(height: 20,),


            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=> const InfopageMen() ));
                    },
                    child: Container(
                      height: 300,
                      width: 350,
                      child: Image.asset("assets/ranveer.jpg",fit:BoxFit.cover,filterQuality: FilterQuality.high,),
                    ),
                  ),
                  Positioned(
                    top:10,
                    left: 10,
                    child: 
                    Container(
                      height: 20,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 103, 103, 103)
                      ),
                      child: Text("POWDER ROOM",
                      style: GoogleFonts.lato(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: IconButton(onPressed:(){}, 
                    icon: const Icon(Icons.bookmark_add_outlined,color: Colors.black,size: 30,)
                    ),
                    ),
                ],
              ),  
            ],
          ),  
          Padding(padding:const EdgeInsets.all(10),
          child: Text("MAKEUP",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),),) ,
          Padding(padding:const EdgeInsets.all(10),
          child: Text("An age-Wise guide to using retinol",
          style: GoogleFonts.abhayaLibre(
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),),),
          Padding(padding:const EdgeInsets.all(10),
          child: Text("5 MIN READ . 26 OCT'24",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),) , 

          const SizedBox(height: 30,), 
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
          Row(
            children: [
              const SizedBox(width: 50,),
              GestureDetector(
                onTap: (){},
                child: Stack(
                  children: [
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/varundhawan.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                ),
                Positioned(
                    top:10,
                    left: 10,
                    child: 
                    Container(
                      height: 20,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 103, 103, 103)
                      ),
                      child: Text("POWDER ROOM",
                      style: GoogleFonts.lato(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: IconButton(onPressed:(){}, 
                    icon: const Icon(Icons.bookmark_add_outlined,color: Colors.black,size: 30,)
                    ),
                    ),

            ],
          ),
              ),
            ],
          ), 
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 70,),
           Text("SKIN",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),),],),
          const SizedBox(height: 30,),
          Row(
            children: [
              const SizedBox(width: 61,),
              Expanded(child: 
          Text("Dr jaishree Shared explains everything you need know about 'cortisol face",
          style: GoogleFonts.abhayaLibre(
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),), ),],),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 61,),
              Expanded(child: 
          Text("2 MIN READ . 21 OCT'24",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),), ),],),
            ],
          ), 
          const SizedBox(height: 30,),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 350,
                    child: Image.asset("assets/mnetop2.jpg",fit:BoxFit.cover,filterQuality: FilterQuality.high,),
                  ),
                  Positioned(
                    top:10,
                    left: 10,
                    child: 
                    Container(
                      height: 20,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 103, 103, 103)
                      ),
                      child: Text("POWDER ROOM",
                      style: GoogleFonts.lato(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: IconButton(onPressed:(){}, 
                    icon: const Icon(Icons.bookmark_add_outlined,color: Colors.black,size: 30,)
                    ),
                    ),
                ],
              ),  
            ],
          ),  
          Padding(padding:const EdgeInsets.all(10),
          child: Text("HAIR",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),),) ,
          Padding(padding:const EdgeInsets.all(10),
          child: Text("Pimple patches:Effective solutions or just gimmicks?",
          style: GoogleFonts.abhayaLibre(
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),),),
          Padding(padding:const EdgeInsets.all(10),
          child: Text("10 MIN READ . 2 SEPT'24",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),) , 

          const SizedBox(height: 30,), 
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
          Row(
            children: [
              const SizedBox(width: 50,),
              GestureDetector(
                onTap: (){},
                child: Stack(
                  children: [
                Container(
                  width: 300,
                  height: 300,
                  child: Image.asset("assets/mentop1.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                ),
                Positioned(
                    top:10,
                    left: 10,
                    child: 
                    Container(
                      height: 20,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 103, 103, 103)
                      ),
                      child: Text("POWDER ROOM",
                      style: GoogleFonts.lato(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: IconButton(onPressed:(){}, 
                    icon: const Icon(Icons.bookmark_add_outlined,color: Colors.black,size: 30,)
                    ),
                    ),

            ],
          ),
              ),
            ],
          ), 
          const SizedBox(height: 10,),
          Row(
            children: [
              const SizedBox(width: 70,),
           Text("SKIN",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),),],),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 61,),
              Expanded(child: 
          Text("A time saving , dermant-approved skincare routime ",
          style: GoogleFonts.abhayaLibre(
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),), ),],),
          const SizedBox(height: 20,),
          Row(
            children: [
              const SizedBox(width: 61,),
              Expanded(child: 
          Text("4 MIN READ . 1 OCT'23",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),), ),],),
            ],
          ), 
          const SizedBox(height: 30,),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              Stack(
                children: [
                  Container(
                    height: 300,
                    width: 350,
                    child: Image.asset("assets/kapooe.jpg",fit:BoxFit.cover,filterQuality: FilterQuality.high,),
                  ),
                  Positioned(
                    top:10,
                    left: 10,
                    child: 
                    Container(
                      height: 20,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 103, 103, 103)
                      ),
                      child: Text("POWDER ROOM",
                      style: GoogleFonts.lato(
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: IconButton(onPressed:(){}, 
                    icon: const Icon(Icons.bookmark_add_outlined,color: Colors.white,size: 30,)
                    ),
                    ),
                ],
              ),  
            ],
          ),
           Padding(padding:const EdgeInsets.all(10),
          child: Text("SKIN",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.w600
          ),),) ,
          Padding(padding:const EdgeInsets.all(10),
          child: Text("Lip hyperpigmentation treatments that a derm approves of",
          style: GoogleFonts.abhayaLibre(
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),),),
          Padding(padding:const EdgeInsets.all(10),
          child: Text("4 MIN READ . 26 OCT'24",
          style: GoogleFonts.lato(
            fontSize: 15,
            fontWeight: FontWeight.bold
          ),),) ,                 
            ],
          ),
        ),
      ),
    );
  }
}