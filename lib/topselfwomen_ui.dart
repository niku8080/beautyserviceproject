import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/homepage_female.dart';

import 'package:homepagefemale/infopage_women.dart';

 

 class topSelf extends StatefulWidget {
  const topSelf({super.key});

  @override
  State<topSelf> createState() => _topSelfState();
}

class _topSelfState extends State<topSelf> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> imageSlider()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255,245,69,128),),
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
                    color: const Color.fromARGB(255,245,69,128),
                  )),
                  const SizedBox(width: 20,),
                   Text("SHELF",
                  style: GoogleFonts.acme(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    color: const Color.fromARGB(255,245,69,128),
                  )),
                ],
              ),
               Text("Beauty news, reviews and hot takes",
                  style: GoogleFonts.lato(
                    fontSize: 26,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,

                  ),),
                  const SizedBox(height: 40,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        color: const Color.fromARGB(255,245,69,128),
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
                        color: const Color.fromARGB(255,245,69,128),
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
                        color: const Color.fromARGB(255,245,69,128),
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
                        color: const Color.fromARGB(255,245,69,128),
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
                        color: const Color.fromARGB(255,245,69,128),
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
                  Container(
                    height: 300,
                    width: 350,
                    child: Image.asset("assets/suhanatop1.webp",fit:BoxFit.cover,filterQuality: FilterQuality.high,),
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
          child: Text("Apply foundation like THIS so they ask how your skin looks this good",
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
                  child: Image.asset("assets/top3.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
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
                    child: Image.asset("assets/anayatop7.jpg",fit:BoxFit.cover,filterQuality: FilterQuality.high,),
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
          child: Text("Ananya pandey hairstylist'sts share their beauty hot takes",
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const  PregnantInfoTop()));
                  },
                  child: Container(
                    width: 300,
                    height: 300,
                    child: Image.asset("assets/pregnattop7.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
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
          Text("A time saving , dermant-approved skincare routime for new moms",
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
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const PregnantInfoTop()));
                    },
                    child: Container(
                      height: 300,
                      width: 350,
                      child: Image.asset("assets/deepikatop8.jpg",fit:BoxFit.cover,filterQuality: FilterQuality.high,),
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
          child: Text("Pimple patches:Effective solutions or just gimmicks?",
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