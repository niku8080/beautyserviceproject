import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/homepage_male.dart';
import 'package:homepagefemale/productClick_menUI.dart';

void main(){
  runApp(const productmen());
}

class productmen extends StatefulWidget {
  const productmen({super.key});

  @override
  State<productmen> createState() => _productWomenState();
}

class _productWomenState extends State<productmen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:Text("Glossum Essence",
               style: GoogleFonts.aboreto(fontSize: 25,
               fontWeight: FontWeight.w600,
              color:  const Color.fromARGB(255, 14, 55, 88),)
               ,),

          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_border_outlined,
            color:  Color.fromARGB(255, 14, 55, 88),)
            ),
            IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_bag_outlined,
            color:  Color.fromARGB(255, 14, 55, 88),)
            ),           
          ],    
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const ImageSlider2()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255,14,55,88),),
          ),     
          centerTitle: true,
          surfaceTintColor: Colors.white,
        ),

        body: Padding(padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(height: 1,width: 400,color: Colors.grey,),
              const SizedBox(height: 10,),
             Text("Products",
               style: GoogleFonts.aBeeZee(fontSize: 35,
               fontWeight: FontWeight.w600,),),
              
              const SizedBox(height: 20,),
             
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: 
             Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        GestureDetector(
                          onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Productmen()));
                          },
                          child: Container(
                            height: 300,
                            width: 200,
                             color: Colors.white,
                            child: Image.asset("assets/productsmen/dotmen.webp",
                            filterQuality: FilterQuality.high,),
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
                    Text("Cica Niacinamide & Ceramides Oil-Free",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                      const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("426",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(height: 10,),

                  
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
                        Container(
                          height: 300,
                          width: 200,
                           color: Colors.white,
                          child: Image.asset("assets/productsmen/ustraa.avif",
                          filterQuality: FilterQuality.high,),
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
                    Text("De-Tan Cream For Men and removal of tanning",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                    const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("200",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(height: 10,),

                   
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
                        Container(
                          height: 300,
                          width: 200,
                          child: Image.asset("assets/productswomen/pr2.jpg",
                          filterQuality: FilterQuality.high,),
                        ),
                        Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Olaplex",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Olaplex No.8 Bond intense Mask(450ml)",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                    const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("3,200",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(height: 10,),

                    
                  
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
                        child: Image.asset("assets/productsmen/derma_men.webp",filterQuality: FilterQuality.high,fit:BoxFit.cover)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("The Derma-Co",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("1 % Kojic Acid SPF 30 Lip Balm ",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("296",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
                    const SizedBox(width: 18,),
                    Text("(6 % OFF)",
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
                        child: Image.asset("assets/productswomen/product8.jpg",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Biotop Professional",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Biotop Professional 700 Keratin + kale hair",
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
                        child: Image.asset("assets/productswomen/product7.jpg",filterQuality: FilterQuality.high)
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
                        child: Image.asset("assets/productsmen/vitaminc_men.webp",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Vitamin C",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("The Ordinary Vitamin C Suspension 23 % ",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("900",
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
                        child: Image.asset("assets/productsmen/dot1_men.jpg",filterQuality: FilterQuality.high,)
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
                    Text("Vitamin C + E Super Bright Gel Face Wash",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("250",
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
                     color:  const Color.fromARGB(255, 14, 55, 88),
                      child: Text("Add to Bag",
                      style: GoogleFonts.lato(fontSize: 18,color: Colors.white),),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 25,),
          
              

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
                        child: Image.asset("assets/productsmen/beardo_men.webp",filterQuality: FilterQuality.high,fit:BoxFit.cover)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Beardo",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text(" Beardo the De-Tan Peel Off Mask",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                   const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("550",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),
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
                        child: Image.asset("assets/productsmen/mcaffeine_men.webp",filterQuality: FilterQuality.high,fit:BoxFit.cover)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("MCaffeine",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("D-Tan Removal Coffee Clay Face Mask - Por",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("250",
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
                        child: Image.asset("assets/productsmen/neu_men.webp",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Neutrogena",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Bright Boost Gel Cream Oil-Free Moi..",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                   const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("1,719",
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
                        child: Image.asset("assets/productsmen/plum_men.webp",filterQuality: FilterQuality.high,)
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
                    Text("Green Tea Pore Cleansing Gel Face Eash ",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                    const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("800",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(width: 19,),
                                    
                    
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
                        child: Image.asset("assets/productswomen/bobbi.jpg",filterQuality: FilterQuality.high,)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Bobbi Brown",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      
                      child: 
                    Text("Bobbi Brown Crushed Oil infused Lip Gloss",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),

                    Row(children: [
                    const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("4999 - 5999",
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
                        child: Image.asset("assets/productsmen/mcaffeine_men.webp",filterQuality: FilterQuality.high,)
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
                    Text("Power Face Wash Energize And De-Tan",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                   Row(children: [
                    const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("499",
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
                    Text("FoxTale",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Glow Sunscreen SPF 50 PA+++++++++++",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                  Row(children: [
                    const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("180",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(width: 19,),
                                    
                    
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
                        color:Colors.white,
                        child: Image.asset("assets/productswomen/lipgloss.jpg",filterQuality: FilterQuality.high,)
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
                    Text("Makeup Revolution Shimmer Bomb Lip Glo..",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                      const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("552",
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
                        child: Image.asset("assets/productswomen/plum.jpg",filterQuality: FilterQuality.high,)
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
                    Text("Plum BodyLovin' Vanilla Vibes Deodrant",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                   Row(children: [
                    const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("289",
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
                    Text("Retinol Night Cream with VBitamin C & Hy",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),
                    Row(children: [
                      const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("490",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),),],),
                    const SizedBox(width: 19,),
                                    
                    
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
                        color:Colors.white,
                        child: Image.asset("assets/productswomen/aqua.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover)
                        ),
                        ),
                         Positioned(
                          top: 10,
                          right: 0,
                          child: IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline))
                        ),
                      ],
                    ),
                    Text("Aqualogica",
                    style: GoogleFonts.lato(color: const Color.fromARGB(255, 78, 77, 77),
                    fontWeight: FontWeight.w900),),

                    Container(
                      width: 200,
                      child: 
                    Text("Aqualogica Refresh+Sun Kissed Vanilla Perfume",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.w900,fontSize: 17),),),
 
                    const SizedBox(height: 10,),

                    Row(children: [
                      const Icon(Icons.currency_rupee_outlined,color: Colors.black,size: 20,),
                    Text("424",
                    style: GoogleFonts.lato(color: Colors.black,
                    fontWeight: FontWeight.bold,fontSize: 18),), ],),                                
                    
                    const SizedBox(height: 10,),
                    Container(
                      height: 35,
                      width: 200,
                      alignment: Alignment.center,
                      color: Colors.black,
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
        ),),
      ),
    );
  }
}