import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:homepagefemale/homepage_male.dart';
import 'package:homepagefemale/payment_screen.dart';



class Productmen extends StatefulWidget {
  const Productmen({super.key});

  @override
  State<Productmen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Productmen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> ImageSlider2()));
          }, icon: const Icon(Icons.arrow_back_ios,size: 30,)),
          actions: [
            IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border_outlined,size: 30,)),
             IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_bag_outlined,size: 30,)),
          ],
          surfaceTintColor: Colors.white,
        ),

       body:Padding(padding: const EdgeInsets.all(10),
       child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 400,
                    width: 400,
                    child: Image.asset("assets/productsmen/dotmen.webp",fit:BoxFit.cover),
                  ),
                   Container(
                    height: 600,
                    width: 400,
                    color: Colors.white,
                    child: Image.asset("assets/productsmen/dot1_men.webp",filterQuality: FilterQuality.high,fit: BoxFit.contain,),
                  ),
                   Container(
                    height: 600,
                    width: 400,
                    color: Colors.white,
                    child: Image.asset("assets/productsmen/dot2_men.webp",filterQuality: FilterQuality.high,fit: BoxFit.contain,),
                  ),
                   Container(
                    height: 600,
                    width: 400,
                    color: Colors.white,
                    child: Image.asset("assets/productsmen/dot3_men.jpg",filterQuality: FilterQuality.high,),
                  ),
                ],
              ),
            ),
            //const SizedBox(height: 10,),
            Text("Dot & Key",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.w800),),
             Text("vitaminc Dot and key with Lotus Flavour(200 ml)",
            style: GoogleFonts.lato(fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w800),),
      
         const SizedBox(height: 10,),
           Row(
            children: [
              const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
              Text("562",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 70,),
            Text("(10% OFF)",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            ],
           ),
            Text("Inclusive  Of All Taxes",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.w500),),
             
             const SizedBox(height: 10,),
             Text("Sold by : RELIANCE RETAIL LIMITED",
            style: GoogleFonts.lato(fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.w800),),
   
            const SizedBox(height: 30,),
            Row(
              children: [
                Container(
                  width: 160,
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:const  Color.fromARGB(255, 194, 193, 193),
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.done,size: 40,),
                       Text("Authentic Products",
            style: GoogleFonts.lato(fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
           
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                 Container(
                  width: 160,
                  height: 90,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                     color:const  Color.fromARGB(255, 194, 193, 193),
                  ),
                  child: Column(
                    children: [
                      const Icon(Icons.cyclone_rounded,size: 40,),
                       Text("Easy Return",
            style: GoogleFonts.lato(fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
           
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30,),
            Row(
              children: [
             GestureDetector(
              child: Container(
                height: 45,
                width: 280,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                 color:  const Color.fromARGB(255, 14, 55, 88),
                ),
                child:  Text("Add to Bag",
            style: GoogleFonts.lato(fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold),),
              ),
            ),
            IconButton(onPressed:(){}, icon: const Icon(Icons.favorite_border_outlined,size: 30,)),
          ],
        ),
        const SizedBox(height: 30,),
        Container(      
          height:1170,
          width: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.grey,
            )
          ),    
            child:Padding(padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text("Expected delivery on 30 nov",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),

            const SizedBox(height: 10,),
            Container(height: 1,width: 400,color: Colors.grey,),
             const SizedBox(height: 10,),
            
            
                Text("Special Features",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(height: 10,),
            Text(" - Dermatologically Tested",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
            Text(" - Sulphate Free",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
            Text(" - Silicon Free",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
            
            const SizedBox(height: 15,),
            Container(height: 1,width: 400,color: Colors.grey,),
            Text("Product Details",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(height: 15,),

            Row(
              children: [
                 Text("Country",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 100,),
             Text("India",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
             Row(
              children: [
                 Text("Conscious",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 80,),
             Text("Vegan",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
             Row(
              children: [
                 Text("Concern",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 95,),
             Text("Dryness",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
             Row(
              children: [
                 Text("Gender",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 105,),
             Text("Unisex",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
             Row(
              children: [
                 Text("Net Weight",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 70,),
             Text("200 ml",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
             Row(
              children: [
                 Text("Net Quantity",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 55,),
             Text("1N",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
             Row(
              children: [
                 Text("Expiry Date",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 70,),
             Text("2026-04-30",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
             Row(
              children: [
                 Text("Cust.care No.",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 60,),
             Text("896464783",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
            const SizedBox(height: 10,),
             Container(height: 1,width: 400,color: Colors.grey,),
             const SizedBox(height: 10,),
              Text("Product Description",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
           
            const SizedBox(height: 10,),
             Text("Lotus Professional Retimen Plant Retinol +nVitamin c Brightning Boost Night Cream with Natural This conditioner gives additional moisture to dry and damaged hair. The conditioner helps detangle wet hair without causing any friction and breakage. It contains cold-pressed baobab oil and hibiscus extracts to moisturize, smoothen coarse hair, and prevent intense static flyaways. Its post-shower application helps detangle hair effectively and provides a smooth base and protection layer for styling creams.",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),

            const SizedBox(height: 5,),

            Text("How to use:",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),

            const SizedBox(height: 2,),

            Text("Cleanse your face with the retimen Plant Retinol + vitamin-c . Apply a small amount of conditioner to your scalp and hair strands. Leave it for 1 minute and rinse well for softer and bouncier hair.",
            style: GoogleFonts.lato(fontSize: 17,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
              ],
            ),),
        ),
        const SizedBox(height: 20,),
 GestureDetector(
  onTap: () {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentModeApp()));
  },
              child: Container(
                height: 45,
                width: 400,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color:  const Color.fromARGB(255, 14, 55, 88),
                ),
                child:  Text("Buy Now",
            style: GoogleFonts.lato(fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold),),
              ),
            ),
            const SizedBox(height: 20,),

        
         Text("Ratings & Reviews",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),

             Text("Be the first to review this product",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w500),),

            const SizedBox(height: 30,),

             Text("People also Viewed",
            style: GoogleFonts.lato(fontSize: 23,
            color: Colors.black,
            fontWeight: FontWeight.bold),),

            const SizedBox(height: 35,),

            SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: 
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: 
                        Container(height: 300,
                        width: 200,
                         color: Colors.white,
                        child: Image.asset("assets/productsmen/night1.avif",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Ustraa",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Ustraa Night Cream - De-tan & Anti-Aging",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("269",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(width: 18,),
                    Text("(15 % OFF)",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(height: 10,),
                    ]
                    ,),                  
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                      color:  const Color.fromARGB(255, 14, 55, 88),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                ),
                const SizedBox(width: 45,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: 
                        Container(height: 300,
                        width: 200,
                         color: Colors.white,
                        child: Image.asset("assets/productsmen/derma_men.webp",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("The Derma",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("The Derma Co 1% Kojic Acid SPF 30 Lip ..",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("2,350",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(width: 19,),
                    Text("( 10 % OFF)",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(height: 10,),],),                 
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                     color:  const Color.fromARGB(255, 14, 55, 88),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                ),
                const SizedBox(width: 45,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: 
                        Container(height: 300,
                        width: 200,
                         color: Colors.white,
                        child: Image.asset("assets/productsmen/plum_men.webp",filterQuality: FilterQuality.high)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Plum",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Beauty Garage k9 Botoplexx Retention",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("1,938",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(width: 19,),
                     Text("(20 % OFF)",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),                  
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                      color:  const Color.fromARGB(255, 14, 55, 88),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                )
              ],
            ),
          ),

          const SizedBox(height: 40,),
          
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: 
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: 
                        Container(height: 300,
                        width: 200,
                         color: Colors.white,
                        child: Image.asset("assets/productsmen/skinrx_men.avif",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Dot & Key",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Dot & Key Vitamin C Super Bright Foaming",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                   const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("550",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(width: 18,),
                    
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                     color:  const Color.fromARGB(255, 14, 55, 88),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                ),
                const SizedBox(width: 45,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: 
                        Container(height: 300,
                        width: 200,
                         color: Colors.white,
                        child: Image.asset("assets/productsmen/pilgrim_men.webp",filterQuality: FilterQuality.high,fit:BoxFit.cover)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Pilgrim",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Mars dpectra Glow liquid Highlighter(3.7gm)",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("2,250",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(width: 19,),
                    Text("( 10 % OFF)",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(height: 10,),],),                 
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                     color:  const Color.fromARGB(255, 14, 55, 88),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                ),
                const SizedBox(width: 45,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: (){},
                          child: 
                        Container(height: 300,
                        width: 200,
                         color: Colors.white,
                        child: Image.asset("assets/productswomen/revol.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Makeup Revolution",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Makeup Revolution Remove H@0 Hydrate..",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),

                    Row(children: [
                    const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("499 - 599",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),                               
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                     color:  const Color.fromARGB(255, 14, 55, 88),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                )
              ],
            ),
          ),          
         const SizedBox(height: 30,),        
          ],
        ),
       ),
       ),
      ),
    );
  }
}