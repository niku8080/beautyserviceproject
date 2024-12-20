// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:homepagefemale/details_female.dart';
// import 'package:homepagefemale/mackUpFemale.dart';

// class BeauticianFemale extends StatefulWidget {
//   const BeauticianFemale({super.key});

//   @override
//   State<BeauticianFemale> createState() => _BeauticianFemaleState();
// }

// class _BeauticianFemaleState extends State<BeauticianFemale> {
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
// appBar: AppBar(
//   backgroundColor: Colors.white,
//   surfaceTintColor: Colors.white,
//   title:  Padding(
//     padding: const EdgeInsets.all(9.0),
//     child: Text("Choose Beauty Specialist",
//     style:    GoogleFonts.aboreto(
//             fontWeight: FontWeight.bold,
//             fontSize: 21,
//             color: const Color.fromARGB(255, 245, 69, 128),
//           ),
//         ),
        
//   ),
//   //backgroundColor: const Color.fromARGB(255,245,69,128),
//   leading: GestureDetector(
//     onTap: () {
//       Navigator.push(context, MaterialPageRoute(builder: (context)=> const Mackupfemale()));
//     },
//     child: const Icon(Icons.arrow_back_ios,
//     color: Color.fromARGB(255,245,69,128),),
//   ),
  
// ),
// body: ListView.builder(
//   itemCount: 1,
//   physics: const BouncingScrollPhysics(),
//   itemBuilder: (context, index) => 
// Column(
//   children: [
//   Padding(padding: const EdgeInsets.all(8.0),
//     child: GestureDetector(
//       onTap: () {
//         Navigator.push(context, MaterialPageRoute(builder: (context)=>const Details ()));
//       },
//       child: Container(
//         margin:const EdgeInsets.only(top: 10,
//         left: 10,
//         right: 10),
//         height: 150,
//         width: 370,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12),
//           boxShadow:const [ 
//             BoxShadow(
//               offset: Offset(0, 10),
//               color: Color.fromRGBO(85, 82, 82, 0.094),
//               blurRadius: 0,
//             )
//           ],
//         ),
//         child: Row(
//         children: [
//           Container(
             
//             padding: const EdgeInsets.all(12),
//            margin: const EdgeInsets.only(top: 5,
//             left: 5,
//             ),
          
//             height: 150,
//             width: 150,
           
           
//             child: Image.asset("assets/beau1.webp",
//             fit: BoxFit.cover,),
//           ),
//            Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//                Padding(
//                 padding: const EdgeInsets.only(top: 20,),
//                 child: Text("Pratiksha Bide",
//                 style: GoogleFonts.lato(fontWeight: FontWeight.w600,fontSize: 25)),
//               ),
//               // const SizedBox(
//               //   height: 5,
//              // ),
//               Expanded(
//                 child: Container(
//                   //padding: const EdgeInsets.only(top: 10,),
//                   height: 200,
//                   width: 200,
//                 child:   Text("Give Services of Bleach & D-tan Body Massage, Hair dresser,Mani-Pedi,Cleanup.",
//                 style: GoogleFonts.quicksand(fontSize: 15,fontWeight: FontWeight.w600,color:Colors.black)),
//                 ),
//               ),
//              const SizedBox(height: 1,),
//                   const Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                        Icon(Icons.star,
//                        color: Color.fromARGB(255,245,69,128),),
//                       Icon(Icons.star,
//                        color: Color.fromARGB(255,245,69,128),),
//                       Icon(Icons.star,
//                        color: Color.fromARGB(255,245,69,128),),
//                       Icon(Icons.star,
//                       color: Color.fromARGB(255,245,69,128),),
//                       Icon(Icons.star,
//                       color: Color.fromARGB(255,245,69,128),),
                     
                    
//                     ],
//                   ),
               
//             ],
//           ),
//         ],),
        
//       ),
//     ),
//     ),
//     Padding(padding: const EdgeInsets.all(8.0),
//     child: Container(
//       margin:const EdgeInsets.only(top: 10,
//       left: 10,
//       right: 10),
//       height: 150,
//       width: 370,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         boxShadow:const [ 
//           BoxShadow(
//             offset: Offset(0, 10),
//             color: Color.fromRGBO(20, 17, 17, 0.098),
//             blurRadius: 0,
//           )
//         ],
//       ),
//       child: Row(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(12),
//           margin: const EdgeInsets.only(top: 10,
//           left: 10,
//           ),
//           height: 150,
//           width: 150,
//           child: Image.asset("assets/beau2.jpg",
//           fit: BoxFit.cover,),
//         ),
//          Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              Padding(
//               padding: const EdgeInsets.only(top: 20,),
//               child: Text("Priyanka Kale",
//               style: GoogleFonts.lato(fontWeight: FontWeight.w600,fontSize: 25)),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Expanded(
//               child: Container(
//                 //padding: const EdgeInsets.only(top: 10,),
//                 height: 200,
//                 width: 200,
//               child:   Text("Give Services of Bleach & D-tan Body Massage, Hair dresser,Mani-Pedi,Cleanup.",
//               style: GoogleFonts.quicksand(fontSize: 15,fontWeight: FontWeight.w600,color:Colors.black)),
//               ),
//             ),
//             const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Icon(Icons.star,
//                     color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                     color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                     color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                     color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                     color: Colors.grey,),
                       
                    
                  
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],),
      
//     ),
//     ),
//     Padding(padding: const EdgeInsets.all(8.0),
//     child: Container(
//       margin:const EdgeInsets.only(top: 10,
//       left: 10,
//       right: 10),
//       height: 150,
//       width: 370,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         boxShadow:const [ 
//           BoxShadow(
//             offset: Offset(0, 10),
//             color: Color.fromRGBO(20, 17, 17, 0.098),
//             blurRadius: 0,
//           )
//         ],
//       ),
//       child: Row(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(12),
//           margin: const EdgeInsets.only(top: 10,
//           left: 10,
//           ),
//           height: 150,
//           width: 150,
//           child: Image.asset("assets/b5.webp",
//           fit: BoxFit.cover,),
//         ),
//          Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              Padding(
//               padding: const EdgeInsets.only(top: 20,),
//               child: Text("Manisha Barbade",
//               style: GoogleFonts.lato(fontWeight: FontWeight.w600,fontSize: 25)),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Expanded(
//               child: Container(
//                 //padding: const EdgeInsets.only(top: 10,),
//                 height: 200,
//                 width: 200,
//               child:   Text("Give Services of Bleach & D-tan Body Massage, Hair dresser,Mani-Pedi,Cleanup.",
//               style: GoogleFonts.quicksand(fontSize: 15,fontWeight: FontWeight.w600,color:Colors.black)),
//               ),
//             ),
//             const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Icon(Icons.star,
//                      color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                      color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,color:   Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                     color: Colors.grey,),
//                     Icon(Icons.star,
//                     color: Colors.grey,),
//                     SizedBox(
//                     width: 10,
//                   ),
                 
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],),
      
//     ),
//     ),
//     Padding(padding: const EdgeInsets.all(8.0),
//     child: Container(
//       margin:const EdgeInsets.only(top: 10,
//       left: 10,
//       right: 10),
//       height: 160,
//       width: 370,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         boxShadow:const [ 
//           BoxShadow(
//             offset: Offset(0, 10),
//             color: Color.fromRGBO(20, 17, 17, 0.098),
//             blurRadius: 0,
//           )
//         ],
//       ),
//       child: Row(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(12),
//           margin: const EdgeInsets.only(top: 10,
//           left: 10,
//           ),
//           height: 150,
//           width: 150,
//           child: Image.asset("assets/b8.webp",
//           fit: BoxFit.cover,),
//         ),
//          Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              Padding(
//              padding: const EdgeInsets.only(top: 20,),
//               child: Text("Riya Mohite",
//               style: GoogleFonts.lato(fontWeight: FontWeight.w600,fontSize: 25)),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Expanded(
//               child: Container(
//                 //padding: const EdgeInsets.only(top: 10,),
//                 height: 200,
//                 width: 200,
//               child:   Text("Give Services of Bleach & D-tan Body Massage, Hair dresser,Mani-Pedi,Cleanup.",
//                 style: GoogleFonts.quicksand(fontSize: 15,fontWeight: FontWeight.w600,color:Colors.black)),
//               ),
//             ),
//             const Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                      Icon(Icons.star,
//                      color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                      color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                      color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                     color: Colors.grey,),
//                     Icon(Icons.star,
//                     color: Colors.grey,),
//                     SizedBox(
//                     width: 10,
//                   ),
                 
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],),
      
//     ),
//     ),
//     Padding(padding: const EdgeInsets.all(8.0),
//     child: Container(
//       margin:const EdgeInsets.only(top: 10,
//       left: 10,
//       right: 10),
//       height: 160,
//       width: 370,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(12),
//         boxShadow:const [ 
//           BoxShadow(
//             offset: Offset(0, 10),
//             color: Color.fromRGBO(20, 17, 17, 0.098),
//             blurRadius: 0,
//           )
//         ],
//       ),
//       child: Row(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(12),
//           margin: const EdgeInsets.only(top: 10,
//           left: 10,
//           ),
//           height: 150,
//           width: 160,
//           child: Image.asset("assets/beau5.jpg",
//           fit: BoxFit.cover,),
//         ),
//          Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//              Padding(
//               padding: const EdgeInsets.only(top: 20,),
//               child: Text("Juee Karale",
//               style: GoogleFonts.lato(fontWeight: FontWeight.w600,fontSize: 25)),
//             ),
//             const SizedBox(
//               height: 5,
//             ),
//             Expanded(
//               child: Container(
//                 //padding: const EdgeInsets.only(top: 10,),
//                 height: 200,
//                 width: 200,
//               child:   Text("Give Services of Bleach & D-tan Body Massage, Hair dresser,Mani-Pedi,Cleanup.",
//                style: GoogleFonts.quicksand(fontSize: 15,fontWeight: FontWeight.w600,color:Colors.black)),
//               ),
//             ),
//             const Column(
//               children: [
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Icon(Icons.star,
//                     color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                      color: Color.fromARGB(255,245,69,128),),
//                     Icon(Icons.star,
//                     color: Colors.grey,),
//                     Icon(Icons.star,
//                     color: Colors.grey,),
//                     Icon(Icons.star,
//                     color: Colors.grey,),
//                   SizedBox(
//                     width: 10,
//                   ),
                 
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],),
      
//     ),
//     ),
//   ]
// ),
// ),
  
      
  
  
//    );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/details_female.dart';
import 'package:homepagefemale/mackUpFemale.dart';

class BeauticianFemale extends StatefulWidget {
  const BeauticianFemale({super.key});

  @override
  State<BeauticianFemale> createState() => _BeauticianFemaleState();
}

class _BeauticianFemaleState extends State<BeauticianFemale> {
  // List of beauticians
  final List<Map<String, dynamic>> beauticians = [
    {
      "name": "Pratiksha Bide",
      "description":
          "Give Services of Bleach & D-tan Body Massage, Hair dresser, Mani-Pedi, Cleanup.",
      "image": "assets/beau1.webp",
      "rating": 5,
    },
    {
      "name": "Priyanka Kale",
      "description":
          "Give Services of Bleach & D-tan Body Massage, Hair dresser, Mani-Pedi, Cleanup.",
      "image": "assets/beau2.jpg",
      "rating": 4,
    },
    {
      "name": "Manisha Barbade",
      "description":
          "Give Services of Bleach & D-tan Body Massage, Hair dresser, Mani-Pedi, Cleanup.",
      "image": "assets/b5.webp",
      "rating": 3,
    },
    {
      "name": "Riya Mohite",
      "description":
          "Give Services of Bleach & D-tan Body Massage, Hair dresser, Mani-Pedi, Cleanup.",
      "image": "assets/b8.webp",
      "rating": 3,
    },
    {
      "name": "Juee Karale",
      "description":
          "Give Services of Bleach & D-tan Body Massage, Hair dresser, Mani-Pedi, Cleanup.",
      "image": "assets/beau5.jpg",
      "rating": 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.all(9.0),
          child: Text(
            "Choose Beauty Specialist",
            style: GoogleFonts.aboreto(
              fontWeight: FontWeight.bold,
              fontSize: 21,
              color: const Color.fromARGB(255, 245, 69, 128),
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Mackupfemale()));
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Color.fromARGB(255, 245, 69, 128),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: beauticians.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final beautician = beauticians[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Details()));
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(85, 82, 82, 0.094),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: [
                  // Beautician Image
                  Container(
                    padding: const EdgeInsets.all(12),
                    margin: const EdgeInsets.only(left: 5),
                    height: 150,
                    width: 150,
                    child: Image.asset(
                      beautician['image'],
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Beautician Details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          beautician['name'],
                          style: GoogleFonts.lato(
                              fontWeight: FontWeight.w600, fontSize: 25),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          beautician['description'],
                          style: GoogleFonts.quicksand(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(height: 2),
                        Row(
                          children: List.generate(5, (starIndex) {
                            return Icon(
                              Icons.star,
                              color: starIndex < beautician['rating']
                                  ? const Color.fromARGB(255, 245, 69, 128)
                                  : Colors.grey,
                            );
                          }),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
