import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/appointment.dart';
import 'package:homepagefemale/cart_screen.dart';

import 'package:homepagefemale/drawer_screen.dart';
import 'package:homepagefemale/favouritescreen.dart';

import 'package:homepagefemale/femaleHaircut.dart';
import 'package:homepagefemale/homepage_male.dart';
import 'package:homepagefemale/productClick_womenUI.dart';

import 'package:homepagefemale/productsWomen_UI.dart';

import 'package:homepagefemale/topselfwomen_ui.dart';


import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class imageSlider extends StatefulWidget {
   imageSlider({super.key});

  @override
  State createState() => _imageSliderState();
}

class _imageSliderState extends State<imageSlider> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> _images = [
    'assets/s1.webp',
    'assets/s2.webp',
    'assets/s3.avif',
    'assets/s5.avif',
    'assets/s6.webp',
    'assets/s7.webp',
    'assets/p1.jpeg',
  ];

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
    _controller.addListener(() {
      setState(() {
        _currentPage = _controller.page!.round();
      });
    });
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0; // Loop back to the first image
      }
      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 50),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        backgroundColor: Colors.white,
        title: Text(
          "Glossum Essence",
          style: GoogleFonts.aboreto(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: const Color.fromARGB(255, 245, 69, 128),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const drawerUI()));
          },
          icon: const Icon(
            Icons.person_2_outlined,
            size: 30,
            color: Color.fromARGB(255, 245, 69, 128),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoriteScreen()));
            },
            icon: const Icon(
              Icons.favorite_border_outlined,
              size: 30,
              color: Color.fromARGB(255, 245, 69, 128),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> CartScreen(cart: [],)));
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Color.fromARGB(255, 245, 69, 128),
            ),
          ),
        ],
      ),
      body:
      ListView(
        scrollDirection: Axis.vertical,
        children: [
       Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: 
            Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 400,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: _images.length,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        _images[index],
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                ),
                const SizedBox(height: 10),
                SmoothPageIndicator(
                  controller: _controller,
                  count: _images.length,
                  effect: const WormEffect(
                    activeDotColor: Colors.black,
                    dotColor: Colors.grey,
                    dotHeight: 8,
                    dotWidth: 8,
                  ),
                ),
                const SizedBox(height: 20),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                GestureDetector(
                  onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>imageSlider ()));
                     setState(() {
                       
                     });
                  },
                  child: Container(
                    height: 60,
                    width: 170,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 245, 69, 128),
                    ),

                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Padding(padding: EdgeInsets.all(5)),
                        const Icon(
                          Icons.girl_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        const SizedBox(width: 5),
                        Expanded(child: 
                        Text(
                          "Salon for Women",
                          style: GoogleFonts.lato(
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontSize: 20
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),

                 GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const ImageSlider2()));
                  },
                  
                    child: Container(
                      height: 60,
                      width: 170,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color.fromARGB(255, 245, 69, 128),)
                        //color: const Color.fromARGB(255, 245, 69, 128),
                      ),
                    
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const  Padding(padding: const EdgeInsets.all(5)),
                           const Icon(                          
                            Icons.account_circle_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          const SizedBox(width: 5),
                          Expanded(child: 
                          Text(
                            "Salon for Men",
                            style: GoogleFonts.lato(
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                              fontSize: 20
                            ),
                          ),
                          ),
                        ],
                      ),
                    ),
                  
                ),
              ],
            ),

            const SizedBox(height: 30,),
            Text("Personal Services",
            style: GoogleFonts.aBeeZee(fontSize: 25,
            fontWeight: FontWeight.w800),),

           const SizedBox(height: 20,),
            //services

            Row(
              children: [
                Column(
                  children: [
                Container(
                  height: 170,
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/b1.webp",fit: BoxFit.cover,),
                ), 
                Text("Bleach & D-tan",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
                 const SizedBox(height: 20,width: 19,),

                 Column(
                  children: [
                Container(
                  height: 170,
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/z1.jpeg",fit: BoxFit.cover,),
                ), 
                 Text("Head & Body Massage",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
              
              Row(
              children: [
                Column(
                  children: [
                Container(
                  height: 170,
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/service3.webp",fit: BoxFit.cover,),
                ),
                 Text("Waxing",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),) 
                  ],
                ),
                const SizedBox(height: 20,width: 19,),

                 Column(
                  children: [
                Container(
                  height: 170,
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/service4.jpg",fit: BoxFit.cover,),
                ), 
                 Text("Mani-Pedi",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            
            Row(
              children: [
                Column(
                  children: [
                Container(
                  height: 170,
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/th1.jpeg",fit: BoxFit.cover,),
                ), 
                 Text("Hair Care",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
                const SizedBox(height: 20,width: 19,),

                 Column(
                  children: [
              GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const Femalehaircut()));
                },
                  child: Container(
                    height: 170,
                    width: 170,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("assets/d1.jpg",fit: BoxFit.cover,),
                  ),
                ),
                 Text("Hair Dresser",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),) 
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20,),
            
            Row(
              children: [
                Column(
                  children: [
                Container(
                  height: 170,
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/service6.jpg",fit: BoxFit.cover,),
                ), 
                 Text("Threading",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
               const SizedBox(height: 20,width: 19,),

                 Column(
                  children: [
                Container(
                  height: 170,
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/service7.jpg",fit: BoxFit.cover,),
                ),
                 Text("Body Massage",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),) 
                  ],
                ),
              ],
            ),
                        const SizedBox(height: 20,),
            
            Row(
              children: [
                Column(
                  children: [
                GestureDetector(
                  onTap: () {
                     
                  },
                  child: Container(
                    height: 170,
                    width: 170,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("assets/service10.webp",fit: BoxFit.cover,),
                  ),
                ), 
                 Text("Bridal Makeup",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),const SizedBox(height: 20,width: 10,), const Spacer(),

                 Column(
                  children: [
                Container(
                  height: 170,
                  width: 170,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/service8.webp",fit: BoxFit.cover,),
                ),
                 Text("Party Makeup",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),) ,
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Text("Offers",
            style: GoogleFonts.aBeeZee(fontSize: 25,
            fontWeight: FontWeight.w800),),
 
            const SizedBox(height: 20,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 500,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                       ),
                       child: Image.asset("assets/pra2.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30,),
            Text("Only on Glossum Essence",
            style: GoogleFonts.aBeeZee(fontSize: 25,
            fontWeight: FontWeight.w800),),
           
           const SizedBox(height: 20,),

           SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child:
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               Row(
                children: [
                   Stack(
                    children: [
                  Container(
                    height: 200,
                    width: 380,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                       ),
                       child: Image.asset("assets/pr3.webp",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                  ),
                   const Positioned(
                    top: 6,
                    left: 340,
                    child: 
                  Icon(Icons.favorite_border_outlined,
                  color: Colors.black,size: 25,),
                  ),
                ],
               ),
                ],
              ),
              Text("Huda Beauty",
              style: GoogleFonts.lato(
                fontSize: 17,
                color: Colors.grey,
              ),),
              const SizedBox(height: 10,), 
 
               Text("Huda Beauty Lipstick filter - Strawberry",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Text("Cream(4.6ml)",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              const SizedBox(height: 10,),
              Row(
                children: [
                  const Icon(Icons.currency_rupee_outlined, size: 20),
                 Text("2,250",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
                ]
              ),
                ],
              ),              
            ),
             const SizedBox(height: 10,),
            GestureDetector(
              onTap: () {
                 
              },
              child: Container(
                height: 0,
                width: 400,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromARGB(255, 237, 168, 191))
                ),
              ),
            ),
            const SizedBox(height: 20,),
            
            
             Text("Featured Products",
            style: GoogleFonts.aBeeZee(fontSize: 25,
            fontWeight: FontWeight.w800),),
           
           const SizedBox(height: 20,),
          
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                           GestureDetector(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProductWomen()));
                            },
                             child: Container(
                                                 height: 200,
                                                 width: 380,
                                                 clipBehavior: Clip.antiAlias,
                                                 decoration: BoxDecoration(
                                                   borderRadius:BorderRadius.circular(20),
                                                    ),
                                                    child: Image.asset("assets/pr4.avif",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                                               ),
                           ),

                  Positioned(
                    top: 6,
                    left: 330,
                    right: 5,
                    child: IconButton(onPressed: (){},
                     icon: const Icon(Icons.favorite_border_outlined,color: Colors.white,size: 25,)
                     ),
                    ),
                  
                        ],
                      ),
                       Text("M.A.C",
              style: GoogleFonts.lato(
                fontSize: 17,
                color: Colors.grey,
              ),),
              const SizedBox(height: 10,),  
 
               Text("M.A.C Studio Fix Powder Plus Foundation",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Text("NC35(15g)",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              const SizedBox(height: 10,),
               Row(
                children: [
                  const Icon(Icons.currency_rupee_outlined, size: 20),
                 Text("3,600",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
                ]
              ),
              
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                           Container(
                    height: 200,
                    width: 380,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                       ),
                       child: Image.asset("assets/pr5.png",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                  ),

                  Positioned(
                    top: 6,
                    left: 330,
                    right: 5,
                    child: IconButton(onPressed: (){},
                     icon: const Icon(Icons.favorite_border_outlined,color: Colors.black,size: 25,)
                     ),
                    ),
                  
                        ],
                      ),
                       Text("ESTEE LAUDER",
              style: GoogleFonts.lato(
                fontSize: 17,
                color: Colors.grey,
              ),),
              const SizedBox(height: 10,),  
 
               Text("ESTEE LAUDER Moisture Surge 100H Auto-",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Text("Replenshing Hydrator",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              const SizedBox(height: 10,),
               Row(
                children: [
                  const Icon(Icons.currency_rupee_outlined, size: 20),
                 Text("6,200",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
                ]
              ),
              
                    ],
                  ),
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                           Container(
                    height: 200,
                    width: 380,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                       ),
                       child: Image.asset("assets/o1.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                  ),

                  Positioned(
                    top: 6,
                    left: 330,
                    right: 5,
                    child: IconButton(onPressed: (){},
                     icon: const Icon(Icons.favorite_border_outlined,color: Colors.black,size: 25,)
                     ),
                    ),
                  
                        ],
                      ),
                       Text("Mixsoon",
              style: GoogleFonts.lato(
                fontSize: 17,
                color: Colors.grey,
              ),),
              const SizedBox(height: 10,),  
 
               Text("Mixoon Faces Cosmetics Benetint Cheek & Lip",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              Text("Stain-Red(10ml)",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              //const SizedBox(height: 10,),
               Row(
                children: [
                  const Icon(Icons.currency_rupee_outlined, size: 20),
                 Text("8,000",
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
                ]
              ),
              
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              height: 0,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 237, 168, 191))
              ),
            ),
            const SizedBox(height: 20,),
             Text("Just Dropped",
            style: GoogleFonts.aBeeZee(fontSize: 25,
            fontWeight: FontWeight.w800),),
           
           const SizedBox(height: 20,),
          
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                           GestureDetector(
                            onTap: () {} ,
                             child: Container(
                                                 height: 200,
                                                 width: 380,
                                                 clipBehavior: Clip.antiAlias,
                                                 decoration: BoxDecoration(
                                                   borderRadius:BorderRadius.circular(20),
                                                    ),
                                                    child: Image.asset("assets/new4.webp",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                                               ),
                           ),
                  

                  Positioned(
                    top: 6,
                    left: 7,
                   // right: 200,
                    child:Container(
                      height: 25,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 234, 97, 143)
                      ),
                      child: Text("Flat 50%",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    ),
                  
                        ],
                      ),
                       Text("Augustinus Bader",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              const SizedBox(height: 10,),  
 
               Text("Enjoy free mini & pouch on purchases over",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),),            
                    ],
                  ),
                 
                  const SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                           Container(
                    height: 200,
                    width: 380,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(20),
                       ),
                       child: Image.asset("assets/new3.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
                  ),

                  Positioned(
                    top: 6,
                    left: 7,
                   // right: 200,
                    child:Container(
                      height: 25,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 234, 97, 143)
                      ),
                      child: Text("Special gift",
                      style: GoogleFonts.lato(
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      ),),
                    ),
                    ),
                  
                        ],
                      ),
                       Text("Real techniques",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),),
              const SizedBox(height: 10,),  
 
               Text("Achieve smooth base with pro-grade makeup toools",
              style: GoogleFonts.lato(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),),
             
                    ],
                  )



                ],
              ),
            ),
             ],
              ),
              ],
            ),
          ),
          ),
        ],
      ),
        ],
      ),
       bottomNavigationBar: BottomNavigationBar(
       
        onTap: (int newIndex) {
          setState(() {
           
          });
        },
          type: BottomNavigationBarType.fixed,
          items:  [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 25,
              ),
              label: 'Home',
            ),
            
            BottomNavigationBarItem(
              
              icon: GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>  const topSelf()));
                },
                child: const Icon(Icons.topic_outlined, size: 25,)),
              label: 'TopShelf',
            ),
             BottomNavigationBarItem(
              icon: GestureDetector(
                onTap:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddressSummary(addresses: [],)));
                },
               child:   const Icon(Icons.book_online_rounded, size: 25,)),
              label: 'Booking',
            ),
             BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProductaWomen()));
                },
                child: const Icon(Icons.production_quantity_limits_outlined, size: 25,)),
              label: 'Products',
            ),
            //  BottomNavigationBarItem(
            //   icon: GestureDetector(
            //     onTap: () {
            //        Navigator.push(context, MaterialPageRoute(builder: (context)=> const CartScreen(cart: [],)));
            //     },
            //     child: const Icon(Icons.shopping_bag, size: 25,)),
            //   label: 'Order',
            // ),
           
          ],
        ),
    );
  }
}
