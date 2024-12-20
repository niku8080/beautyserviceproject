// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:homepagefemale/model/product_model.dart';
// class ProductaWomen extends StatefulWidget {
//   const ProductaWomen({super.key});

//   @override
//   State<ProductaWomen> createState() => _ProductaWomenState();
// }

// class _ProductaWomenState extends State<ProductaWomen> {
//   List<Product> products = [
//   Product(
//     name: "Moroccanoil",
//     description: "Moroccanoil intense Hydrating Mask(250 ml)",
//     imagePath: "assets/productswomen/product1.jpg",
//     price: 3240,
//   ),
//   Product(
//     name: "kevin Murphy",
//     description: "kevin Murphy Hydrate-Me Masque (23ml)",
//     imagePath: "assets/productswomen/product3.jpg",
//     price: 2200,
//   ),
//   Product(
//     name: "Olaplex",
//     description: "Olaplex No.8 Bond intense Mask(450ml)",
//     imagePath: "assets/productswomen/pr2.jpg",
//     price: 3200,
//   ),
// ];

//   bool isLiked = false;
//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home:Scaffold(
//         appBar: AppBar(
//           title:Text("Glossum Essence",
//                style: GoogleFonts.aboreto(fontSize: 24,
//                fontWeight: FontWeight.w600,
//                color: const Color.fromARGB(255, 245, 69, 128)),
//                ),

//           actions: [
//             IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined,
//             color: Color.fromARGB(255, 245, 69, 128)),
//             ),
//             IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined,
//             color: Color.fromARGB(255, 245, 69, 128)),
//             ),
//           ],
//           centerTitle: true,
//           surfaceTintColor: Colors.white,
//         ),

//         body: Padding(padding: const EdgeInsets.all(20),
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Container(height: 1,width: 400,color: Colors.grey,),
//              Text("Products",
//                style: GoogleFonts.aBeeZee(fontSize: 35,
//                fontWeight: FontWeight.w600,
//              )),

//               const SizedBox(height: 30,),

//              SingleChildScrollView(
//               scrollDirection: Axis.horizontal,
//               child:
//              Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         Container(
//                           height: 300,
//                           width: 200,
//                            color: Colors.white,
//                           child: Image.asset("assets/productswomen/product1.jpg",
//                           filterQuality: FilterQuality.high,),
//                         ),
//                         Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text(
//                       "Moroccanoil",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Moroccanoil intense Hydrating Mask(250 ml)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("3,240",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(height: 10,),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                        color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         Container(
//                           height: 300,
//                           width: 200,
//                            color: Colors.white,
//                           child: Image.asset("assets/productswomen/product3.jpg",
//                           filterQuality: FilterQuality.high,),
//                         ),
//                         Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("kevin Murphy",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("kevin Murphy Hydrate-Me Masque (23ml)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("2,200",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(height: 10,),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         Container(
//                           height: 300,
//                           width: 200,
//                           child: Image.asset("assets/productswomen/pr2.jpg",
//                           filterQuality: FilterQuality.high,),
//                         ),
//                         Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Olaplex",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Olaplex No.8 Bond intense Mask(450ml)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(children: [
//                     Text("3,200",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(height: 10,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//               ],
//              ),
//           ),

//           const SizedBox(height: 40,),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child:
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/product6.webp",filterQuality: FilterQuality.high,fit:BoxFit.cover)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){
//                             setState(() {
//                               isLiked = !isLiked;
//                             });
//                           }, icon:  Icon(Icons.favorite,
//                           color:isLiked ? Colors.red :Colors.grey,
//                           ))
//                         ),
//                       ],
//                     ),
//                     Text("True Frog",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("True Frog Deep Conditioning Hair Mask",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                          const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("625",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(width: 18,),
//                     Text("(6 % OFF)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(height: 10,),
//                     ]
//                     ,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                        color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/product8.jpg",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Biotop Professional",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Biotop Professional 700 Keratin + kale hair",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                          const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("2,250",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(width: 19,),
//                     Text("( 10 % OFF)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(height: 10,),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                        color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/product7.jpg",filterQuality: FilterQuality.high)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Beauty Garage",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Beauty Garage k9 Botoplexx Retention",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                          const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("1,938",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(width: 19,),
//                      Text("(20 % OFF)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),

//           const SizedBox(height: 40,),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child:
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/earth.jpg",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("The Earth collective",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("The Earth Collective Hair Conditioner For Dry &...",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                          const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("627",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(width: 18,),
//                     Text("(15 % OFF)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(height: 10,),
//                     ]
//                     ,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/10.jpg",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("It's a 10 Haircare",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("It's a 10 Haircare Miracle Hair Mask",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                       const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("2,350",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(width: 19,),
//                     Text("( 10 % OFF)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(height: 10,),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/hairserum.jpg",filterQuality: FilterQuality.high)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Beauty Garage",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Beauty Garage k9 Botoplexx Retention",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                       const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("1,938",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(width: 19,),
//                      Text("(20 % OFF)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                        color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(height: 25,),
//            Text("For your hair goals",
//                style: GoogleFonts.aBeeZee(fontSize: 27,
//                fontWeight: FontWeight.w600,),),

//           const SizedBox(height: 40,),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child:
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/kiko.avif",filterQuality: FilterQuality.high,fit:BoxFit.cover)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Kiko Milano",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Kiko Milano Lip Scrub(4.2g)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("550",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(width: 18,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/mars.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("MARS",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Mars dpectra Glow liquid Highlighter(3.7gm)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                          const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("2,250",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(width: 19,),
//                     Text("( 10 % OFF)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(height: 10,),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/revol.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Makeup Revolution",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Makeup Revolution Remove H@0 Hydrate..",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),

//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("499 - 599",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),

//            const SizedBox(height: 40,),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child:
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/lakeme.jpg",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Lakeme",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Lakeme 9to5 Overtime shine Tinted Lip Oil-pi..",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("719",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(width: 18,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/rubys.jpg",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Ruby's Organics",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Rubys's Organics Lip Oil Gloss-Malibu(6.5ml)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),

//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("800",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(width: 19,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/bobbi.jpg",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Bobbi Brown",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,

//                       child:
//                     Text("Bobbi Brown Crushed Oil infused Lip Gloss",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),

//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("4999 - 5999",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(height: 40,),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child:
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/mua.avif",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("MUA",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("MUA Multi Lip Matte Lipstick and Gloss Duo.",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),

//                    Row(children: [
//                      const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("499",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(width: 18,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                         color: Colors.white,
//                         child: Image.asset("assets/productswomen/wetndwild.avif",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Wet n Wild",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Wet n Wild Megaslicks Lip Gloss-simless(2.2ml)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),

//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("180",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(width: 19,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                      color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                         color:Colors.white,
//                         child: Image.asset("assets/productswomen/lipgloss.jpg",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Makeup Revolution",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Makeup Revolution Shimmer Bomb Lip Glo..",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),

//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("552",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(height: 40,),
//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child:
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/plum.jpg",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Plum",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Plum BodyLovin' Vanilla Vibes Deodrant",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("289",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(width: 18,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                         color: Colors.white,
//                         child: Image.asset("assets/productswomen/bella vita.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Bella Vita",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Bella Vita Eau De Parfum for Men",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                   Row(children: [
//                      const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("490",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(width: 19,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                         color:Colors.white,
//                         child: Image.asset("assets/productswomen/aqua.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Aqualogica",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Aqualogica Refresh+Sun Kissed Vanilla Perfume",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),

//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("424",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(height: 40,),

//           SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child:
//             Row(
//               children: [
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/dulllness_earth.avif",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("The Earthe Collective",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("The Earth Collective Hair Conditioner For Nouri..",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),

//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("675",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),
//                     const SizedBox(width: 18,),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/earthpre.avif",filterQuality: FilterQuality.high,)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("The Earth Collective",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("The Earth Collective Hair Conditioner For Anti.",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                          const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("675",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(width: 19,),
//                     Text("( 10 % OFF)",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),
//                     const SizedBox(height: 10,),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                       color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(width: 45,),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Stack(
//                       children: [
//                         GestureDetector(
//                           onTap: (){},
//                           child:
//                         Container(height: 300,
//                         width: 200,
//                          color: Colors.white,
//                         child: Image.asset("assets/productswomen/revol.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover)
//                         ),
//                         ),
//                          Positioned(
//                           top: 10,
//                           right: 0,
//                           child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
//                         ),
//                       ],
//                     ),
//                     Text("Makeup Revolution",
//                     style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
//                     fontWeight: FontWeight.w900),),

//                     Container(
//                       width: 200,
//                       child:
//                     Text("Makeup Revolution Remove H@0 Hydrate..",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.w900,fontSize: 17),),),

//                     const SizedBox(height: 10,),
//                     Row(children: [
//                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
//                     Text("499 - 599",
//                     style: GoogleFonts.lato(color: Colors.black,
//                     fontWeight: FontWeight.bold,fontSize: 18),),],),

//                     const SizedBox(height: 10,),
//                     Container(
//                       height: 35,
//                       width: 200,
//                       alignment: Alignment.center,
//                        color: const Color.fromARGB(255, 245, 69, 128),
//                       child: Text("Add to Bag",
//                       style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//             const SizedBox(height: 20,),

//             ],
//           ),
//         ),),
//       ),
//     );
//   }
// }

import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:homepagefemale/database.dart';
import 'package:homepagefemale/favouritescreen.dart';
import 'package:homepagefemale/homepage_female.dart';
import 'package:homepagefemale/model/product_model.dart';

import 'cart_screen.dart';

class ProductaWomen extends StatefulWidget {
  const ProductaWomen({super.key});

  @override
  State<ProductaWomen> createState() => _ProductaWomenState();
}

class _ProductaWomenState extends State<ProductaWomen> {
  List<Product> products = [
    Product(
      name: "Moroccanoil",
      description: "Moroccanoil intense Hydrating Mask(250 ml)",
      imagePath: "assets/productswomen/product1.jpg",
      price: 3240,
    ),
    Product(
      name: "kevin Murphy",
      description: "kevin Murphy Hydrate-Me Masque (23ml)",
      imagePath: "assets/productswomen/product3.jpg",
      price: 2200,
    ),
    Product(
      name: "Olaplex",
      description: "Olaplex No.8 Bond intense Mask(450ml)",
      imagePath: "assets/productswomen/pr2.jpg",
      price: 3200,
    ),
  ];
  List<Product> productsss = [
    Product(
      name: "True Frog",
      description: "True Frog Deep Conditioning Hair Mask",
      imagePath: "assets/productswomen/product6.webp",
      price: 625,
    ),
    Product(
      name: "Biotop Professional",
      description: "Biotop Professional 700 Keratin + kale hair",
      imagePath: "assets/productswomen/product7.jpg",
      price: 1938,
    ),
    Product(
      name: "The Earth collective",
      description: "The Earth Collective Hair Conditioner For Dry &...",
      imagePath: "assets/productswomen/earth.jpg",
      price: 627,
    ),
  ];
  
  List<Product> productss = [
    Product(
      name: "It's a 10 Haircare",
      description: "It's a 10 Haircare Miracle Hair Mask",
      imagePath: "assets/productswomen/10.jpg",
      price: 3240,
    ),
    Product(
      name: "Beauty Garage",
      description: "Beauty Garage k9 Botoplexx Retention",
      imagePath: "assets/productswomen/hairserum.jpg",
      price: 1938,
    ),
    Product(
      name: "Kiko Milano",
      description: "Kiko Milano Lip Scrub(4.2g)",
      imagePath: "assets/productswomen/product5 copy.jpg",
      price: 3200,
    ),
  ];

  List<Product> cart = [];
  List<Product> favorites = [];

  void addToCart(Product product) {
    setState(() {
      cart.add(product);
    });
  }
  final DBHelper dbHelper = DBHelper();
   // final DBHelperCart dbHelperCart = DBHelperCart();
 

  void addToFavorites(Product product) async {
    setState(() {
      favorites.add(product);
    });

    // Add to Firebase Firestore
    await FirebaseFirestore.instance
        .collection('favorites')
        .add(product.toMap());
      
    
    // Save to Sqflite local database
    await dbHelper.insertFavorite(product);
   // await dbHelperCart.insertProduct(product);
  }

  Future<void> syncFavorites() async {
    // Clear local database
    await dbHelper.clearFavorites();

    // Fetch favorites from Firestore
    final querySnapshot =
        await FirebaseFirestore.instance.collection('favorites').get();

    for (var doc in querySnapshot.docs) {
      final product = Product.fromMap(doc.data() as Map<String, dynamic>);
      await dbHelper.insertFavorite(product);
    }
  }

  @override
  void initState() {
    super.initState();
    syncFavorites();
  }

  // void addToFavorites(Product product) {
  //   setState(() {
  //     favorites.add(product);
  //   });
  // }
// void addToFavorites(Product product) async {
//   setState(() {
//     isLiked = !isLiked;
//   });

//   if (isLiked) {
//     // Save to Firebase
//     final firebaseInstance = FirebaseFirestore.instance;
//     await firebaseInstance.collection('favorites').add(product.toMap());

//     // Save to SQLite
//     final dbHelper = DBHelper();
//     await dbHelper.insertFavorite(product);
//   }
// }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Glossum Essence",
            style: GoogleFonts.aboreto(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: const Color.fromARGB(255, 245, 69, 128)),
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>  imageSlider()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255,245,69,128),),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavoriteScreen()
                  ),
                );
              },
              icon: const Icon(
                Icons.favorite_border_outlined,
                color: Color.fromARGB(255, 245, 69, 128),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  CartScreen(cart: [],)
                  ),
                );
              },
              icon: const Icon(
                Icons.shopping_bag_outlined,
                color: Color.fromARGB(255, 245, 69, 128),
              ),
            ),
          ],
          centerTitle: true,
          surfaceTintColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 1,
                  width: 400,
                  color: Colors.grey,
                ),
                Text(
                  "Products",
                  style: GoogleFonts.aBeeZee(
                      fontSize: 35, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: products.map((product) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 45.0),
                        child: ProductWidget(
                          product: product,
                          addToCart: addToCart,
                          addToFavorites: addToFavorites,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: productss.map((product) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 45.0),
                        child: ProductWidget(
                          product: product,
                          addToCart: addToCart,
                          addToFavorites: addToFavorites,
                        ),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: productsss.map((product) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 45.0),
                        child: ProductWidget(
                          product: product,
                          addToCart: addToCart,
                          addToFavorites: addToFavorites,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProductWidget extends StatefulWidget {
  final Product product;
  final Function(Product) addToCart;
  final Function(Product) addToFavorites;

  const ProductWidget(
      {Key? key,
      required this.product,
      required this.addToCart,
      required this.addToFavorites})
      : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.white,
              child: Image.asset(
                widget.product.imagePath,
                filterQuality: FilterQuality.high,
              ),
            ),
            Positioned(
              top: 10,
              right: 0,
              child: IconButton(
                onPressed: () {
                  setState(() {
                    isLiked = !isLiked;
                  });
                  widget.addToFavorites(widget.product);
                },
                icon: Icon(
                  Icons.favorite,
                  color: isLiked ? Colors.red : Colors.grey,
                ),
              ),
            ),
          ],
        ),
        Text(
          widget.product.name,
          style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 78, 77, 77),
              fontWeight: FontWeight.w900),
        ),
        Container(
          width: 200,
          child: Text(
            widget.product.description,
            style: GoogleFonts.lato(
                color: Colors.black, fontWeight: FontWeight.w900, fontSize: 17),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            const Icon(Icons.currency_rupee_outlined,
                color: Colors.black, size: 20),
            Text(
              widget.product.price.toString(),
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ],
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () async {
           log("added to cart");
           await widget.addToCart(widget.product);


           await  FirebaseFirestore.instance.collection("cartItem").add({
            "productImage":  widget.product.imagePath,
            "price": widget.product.price.toString(),
            "name":  widget.product.name,
            }  );
          },
          child: Container(
            height: 35,
            width: 200,
            alignment: Alignment.center,
            color: const Color.fromARGB(255, 245, 69, 128),
            child: Text(
              "Add to Bag",
              style: GoogleFonts.lato(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(height: 20,),
      ],
    );
  }
}
