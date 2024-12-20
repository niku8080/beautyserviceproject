import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/productClick_womenUI.dart';


class Earthproduct extends StatefulWidget {
  const Earthproduct({super.key});

  @override
  State<Earthproduct> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Earthproduct> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: (){}, icon: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (contex)=> const ProductWomen()));
            },
            child: const Icon(Icons.arrow_back_ios,size: 30,
            color: Color.fromARGB(255,245,69,128),),
          )),
          actions: [
            IconButton(onPressed: (){}, icon:const Icon(Icons.favorite_border_outlined,size: 30, color: Color.fromARGB(255,245,69,128),)),
             IconButton(onPressed: (){}, icon:const Icon(Icons.shopping_bag_outlined,size: 30, color: Color.fromARGB(255,245,69,128),)),
          ],
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
                    height: 600,
                    width: 400,
                    child: Image.asset("assets/productswomen/earth.jpg",fit: BoxFit.contain,),
                  ),
                   Container(
                    height: 600,
                    width: 400,
                    color: Colors.white,
                    child: Image.asset("assets/productswomen/earth1.webp",filterQuality: FilterQuality.high,),
                  ),
                   Container(
                    height: 600,
                    width: 400,
                    color: Colors.white,
                    child: Image.asset("assets/productswomen/earth2.jpg",filterQuality: FilterQuality.high,),
                  ),
                  
                ],
              ),
            ),
            const SizedBox(height: 10,),
            Text("The Earth Collective",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.grey,
            fontWeight: FontWeight.w800),),
             Text("The Earth Collective Hair Conditioner For Anti - Dandruff(200 ml)",
            style: GoogleFonts.lato(fontSize: 22,
            color: Colors.black,
            fontWeight: FontWeight.w800),),
      
         const SizedBox(height: 10,),
           Row(
            children: [
              const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
              Text("RS 675",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
            const SizedBox(width: 70,),
            Text("(15% OFF)",
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
                  width: 200,
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
                const Spacer(),
                 Container(
                  width: 180,
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
                width: 340,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 245, 69, 128),
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
          height:1150,
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
                Text("Expected delivery on tue,19 Nov",
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
            Text(" - Vegan",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
            Text(" - Sulphate Free",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
            Text(" - Mineral Oil Free",
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
             Text("Dryness , Dandruff",
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
             Text("899909977",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),
            const SizedBox(height: 20,),
             Container(height: 1,width: 400,color: Colors.grey,),
             const SizedBox(height: 10,),
              Text("Product Description",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),
           
            const SizedBox(height: 10,),
             Text("Show off your luscious locks with the The Earth Collective Hair Conditioner For Anti-Dandruff (200 ml). Enriched with neem and fenugreek, this anti-dandruff conditioner helps prevent dandruff while nourishing and softening your hair. It is a cleansing conditioner that relieves itchiness, removing impurities and dandruff flakes. This The Earth Collective hair conditioner leaves your scalp feeling refreshed and revitalized.",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),

            const SizedBox(height: 20,),

            Text("How to use:",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.bold),),

            const SizedBox(height: 10,),

            Text("Shampoo your hair. Take an adequate amount of the conditioner and apply it to your hair, massaging it into its lengths and ends. Leave it in for 2-5 minutes, then rinse it off thoroughly. Repeat the process if required.",
            style: GoogleFonts.lato(fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.w400),),
              ],
            ),),
        ),
        const SizedBox(height: 20,),
         GestureDetector(
              child: Container(
                height: 45,
                width: 400,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                   color: const Color.fromARGB(255, 245, 69, 128),
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
                        child: Image.asset("assets/productswomen/alfa.webp",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Alfaparf Milano",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Alfaparf Milano Blonde Hair Anti- Yellow Condi..",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                         const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("2499",
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
                       color: const Color.fromARGB(255, 245, 69, 128),
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
                        child: Image.asset("assets/productswomen/onionvaddi.webp",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Vaddi Herbals",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Vaddi Herbals Onion Conditioner(110 ml)",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                         const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("145",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(width: 19,),
                    Text("( 5 % OFF)",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(height: 10,),],),                 
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 245, 69, 128),
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
                        child: Image.asset("assets/productswomen/hairserum.jpg",filterQuality: FilterQuality.high)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Beauty Garage",
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
                       color: const Color.fromARGB(255, 245, 69, 128),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                )
              ],
            ),
          ),

          const SizedBox(height: 40,),
          
          Text("More to this brand",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 23),),
                    const SizedBox(height: 20,),
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
                        child: Image.asset("assets/productswomen/dulllness_earth.avif",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("The Earthe Collective",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("The Earth Collective Hair Conditioner For Nouri..",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    
                    Row(children: [
                       const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("675",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(width: 18,),
                    
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 245, 69, 128),
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
                        child: Image.asset("assets/productswomen/earthpre.avif",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("The Earth Collective",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("The Earth Collective Hair Conditioner For Anti.",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                         const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("675",
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
                     color: const Color.fromARGB(255, 245, 69, 128),
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
                      color: const Color.fromARGB(255, 245, 69, 128),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                ),
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
                        child: Image.asset("assets/productswomen/hairfall_earth.avif",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("The Earthe Collective",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("The Earth Collective Hair Conditioner For Weak..",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                       const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("675",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(width: 18,),
                    
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 245, 69, 128),
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
                        child: Image.asset("assets/productswomen/locci.webp",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("L'occitane",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("L'occitane Gentle & Balance Conditioner",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                         const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("900",
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
                     color: const Color.fromARGB(255, 245, 69, 128),
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
                   Row(
                    children: [
                       const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("499 - 599",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),   ],),                              
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                      color: const Color.fromARGB(255, 245, 69, 128),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                )
              ],
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