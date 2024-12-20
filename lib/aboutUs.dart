import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/drawer_screen.dart';


class About_us extends StatefulWidget {
  const About_us({super.key});

  @override
  State<About_us> createState() => _About_usState();
}

class _About_usState extends State<About_us> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: const Text("About Us",
          style: TextStyle(fontSize: 30,
          fontWeight: FontWeight.w800,
          color: Color.fromARGB(255,245,69,128)),),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const drawerUI()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255,245,69,128),),
          ),
          surfaceTintColor:Colors.white,
        ),
        body:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(padding:const EdgeInsets.all(10),
          child: Column(
            children: [
               Text("Glossum Essence is inspired by the Goddess Rati, who symbolises love, passion and beauty. \n The name Tira recognises your inner superpower that makes you feel beautiful on the inside and out. It celebrates the unique spirit that makes you – truly you"
          ,style: GoogleFonts.lato(fontSize: 18),),
          
          const SizedBox(height: 20,),
           Text("We understand that beauty means different things to different people, and that it can change from day to day and mood to mood. Tira celebrates that feeling.",
          style:  GoogleFonts.lato(fontSize: 18),),
          const SizedBox(height: 20,),
              
               Text("At Glossum Essence, we curate the best global and homegrown beauty brands and inspire you to explore and express your every idea of beauty.",
              style:  GoogleFonts.lato(fontSize: 18)),
              const SizedBox(height: 20,),
          
                Text("We are here to be your companion in this journey – For every day, every mood, every you.",
               style:  GoogleFonts.lato(fontSize: 18),),
               const SizedBox(height: 20,),
          
               Image.asset("assets/a1.jpg",fit:BoxFit.cover,height: 250,width: 410,)
            ],
          ),),
        ),
      ),
    );
  }
}