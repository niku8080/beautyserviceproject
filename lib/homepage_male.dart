import 'dart:async';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/appointment.dart';
import 'package:homepagefemale/cart_screen.dart';
import 'package:homepagefemale/drawer_screen.dart';
import 'package:homepagefemale/favouritescreen.dart';
import 'package:homepagefemale/haircutMens.dart';
import 'package:homepagefemale/homepage_female.dart';
import 'package:homepagefemale/productClick_menUI.dart';
import 'package:homepagefemale/productsMen_UI.dart';
import 'package:homepagefemale/topselfmen_ui.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class ImageSlider2 extends StatefulWidget {
  const ImageSlider2({super.key});

  @override
  State createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider2> {
  final PageController _controller = PageController();
  int _currentPage = 0;
  late Timer _timer;

  final List<String> _images = [
    'assets/p2.jpg',
    'assets/men1.jpeg',
    'assets/men2.jpeg',
    'assets/men3.jpeg',
    'assets/m14.jpg',
    'assets/men4.jpeg',
    'assets/p7.jpg',
    
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
            color: const Color.fromARGB(255,14,55,88),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const drawerUI()));
          },
          icon: const Icon(
            Icons.person_2_outlined,
            size: 30,
            color: const Color.fromARGB(255,14,55,88),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>  FavoriteScreen()));
            },
            icon: const Icon(
              Icons.favorite_border_outlined,
              size: 30,
              color: const Color.fromARGB(255,14,55,88),
            ),
          ),
          IconButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context)=>  const CartScreen(cart: [],)));
            },
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: const Color.fromARGB(255,14,55,88),
            ),
          ),
        ],
      ),
      body:ListView(
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
                  onTap: () {},
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>  imageSlider()));
                    },
                    child: Container(
                      height: 60,
                      width: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: const Color.fromARGB(255, 14, 55, 88),),
                        
                      ),
                    
                      child: Row(
                        
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Padding(padding: EdgeInsets.all(5)),
                          const Icon(
                            Icons.girl_outlined,
                            color: Colors.black,
                            size: 35,
                          ),
                          const SizedBox(width: 5),
                          Expanded(child: 
                          Text(
                            "Salon for Women",
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
                ),
                const SizedBox(
                  width: 20,
                ),

                 GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 60,
                    width: 150,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 14, 55, 88),
                    ),

                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const  Padding(padding: const EdgeInsets.all(5)),
                         const Icon(                          
                          Icons.account_circle_outlined,
                          color: Colors.white,
                          size: 35,
                        ),
                        const SizedBox(width: 5),
                        Expanded(child: 
                        Text(
                          "Salon for Men",
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
              GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Haircutmens()));
                },
                  child: Container(
                    height: 150,
                    width: 150,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset("assets/m1.webp",fit: BoxFit.cover,),
                  ),
                ), 
                Text("Haircut",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),

                 Column(
                  children: [
                Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m2.jpg",fit: BoxFit.cover,),
                ), 
                 Text("Kids Haircut",
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
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m3.jpg",fit: BoxFit.cover,),
                ),
                 Text("Hair color",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),) 
                  ],
                ),
               const SizedBox(
                  width: 20,
                ),


                 Column(
                  children: [
                Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m5.jpg",fit: BoxFit.cover,),
                ), 
                 Text("Waxing",
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
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m6.jpeg",fit: BoxFit.cover,),
                ), 
                 Text("D-Tan",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
               const SizedBox(
                  width: 20,
                ),


                 Column(
                  children: [
                Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m7.jpeg",fit: BoxFit.cover,),
                ),
                 Text("Bleach",
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
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m8.webp",fit: BoxFit.cover,),
                ), 
                 Text("Scrub",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
               const SizedBox(
                  width: 20,
                ),


                 Column(
                  children: [
                Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m10.jpg",fit: BoxFit.cover,),
                ),
                 Text("Hair care",
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
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m11.jpg",fit: BoxFit.cover,),
                ), 
                 Text("Massage Therapy",
                style: GoogleFonts.lato(
                  fontSize: 15,
                  fontWeight: FontWeight.w700
                ),)
                  ],
                ),
               const SizedBox(
                  width: 20,
                ),

                 Column(
                  children: [
                Container(
                  height: 150,
                  width: 150,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Image.asset("assets/m14.jpg",fit: BoxFit.cover,),
                ),
                 Text("Pre Wedding Packages",
                style: GoogleFonts.lato(
                  fontSize: 13,
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
                       child: Image.asset("assets/n3.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
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
                       child: Image.asset("assets/mp5.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
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
 
               Text("Huda Beauty cream filter - Orange",
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
            Container(
              height: 0,
              width: 400,
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(255, 237, 168, 191))
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> const Productmen()));
                            },
                             child: Container(
                                                 height: 200,
                                                 width: 380,
                                                 clipBehavior: Clip.antiAlias,
                                                 decoration: BoxDecoration(
                                                   borderRadius:BorderRadius.circular(20),
                                                    ),
                                                    child: Image.asset("assets/mp19.webp",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
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
 
               Text("The Ordinary Azelaic Acid",
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
                       child: Image.asset("assets/mp2.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
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
                       child: Image.asset("assets/mp6.jpg",fit: BoxFit.cover,
                       filterQuality: FilterQuality.high,),
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
 
               Text("Mixoon Faces Cosmetics Anhydrous Solution",
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
                            onTap: () {},
                             child: Container(
                                                 height: 200,
                                                 width: 380,
                                                 clipBehavior: Clip.antiAlias,
                                                 decoration: BoxDecoration(
                                                   borderRadius:BorderRadius.circular(20),
                                                    ),
                                                    child: Image.asset("assets/mp17.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
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
          type: BottomNavigationBarType.fixed,
          items:  [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 25,),
              label: 'Home',
            ),
             BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>  const topSelf1()));
                },
                child: const Icon(Icons.topic_outlined, size: 25,)),
              label: 'Top Sales',
            ),
             BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const AddressSummary(addresses: [],)));
                },
                child: const Icon(Icons.book_online_rounded, size: 25,)),
              label: 'Booking',
            ),
             BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const productmen()));
                },
                child: const Icon(Icons.production_quantity_limits_outlined, size: 25,)),
              label: 'Products',
            ),
            // const BottomNavigationBarItem(
            //   icon: Icon(Icons.shopping_bag, size: 25,),
            //   label: 'Order',
            // ),
            
          ],
        ),
    );
  }
}
