import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/topselfmen_ui.dart';

 
 class InfopageMen extends StatefulWidget {
  const InfopageMen ({super.key});

  @override
  State<InfopageMen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<InfopageMen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text(
            overflow: TextOverflow.ellipsis,
            "How to use retinal at every age",
          style: GoogleFonts.aBeeZee(
            fontSize: 23,
            fontWeight: FontWeight.bold,
         color: const Color.fromARGB(255,14,55,88),
          )
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const topSelf1()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255,14,55,88),),
          ),
          centerTitle: true,
        ),
        
        body:Padding(padding:const EdgeInsets.all(10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
               Container(height: 40,
                        width: 150,
                        alignment: Alignment.center,
                        child:Text("POWDER ROOM",
                        style: GoogleFonts.lato(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black
                        ),)
                        ),
              

               Text("An age-Wise guide to using retinol",
               style: GoogleFonts.acme(
            fontSize: 35,
            fontWeight: FontWeight.w600
          ),),
          const SizedBox(height: 30,),
           Text("By Glossum Essence  |  April 9,2024  | 4 min read",
               style: GoogleFonts.acme(
            fontSize: 15,
            fontWeight: FontWeight.w100
          ),),
 
          const SizedBox(height: 10,),
          const Row(
            children: [
              Icon(Icons.facebook_outlined,size: 30,),
              SizedBox(width: 10,),
               Icon(Icons.whatshot_sharp,size: 30,),
               SizedBox(width: 10,),
                Icon(Icons.copy_all_outlined,size: 30,),
            ],
          ),
          const SizedBox(height: 20,),
          Container(
            height: 30,
            width: 100,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey
              )
            ),
            child: Text("Skin",
            style: GoogleFonts.lato(fontSize: 15),),
          ),
 
          const SizedBox(height: 20,),
          Container(
            width: 400,
            height: 400,
             child: Image.asset("assets/ranveer.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
          ),
          const SizedBox(height: 10,),
       Text(
        softWrap: true,
        textAlign: TextAlign.justify,
           "Myth: you need to wait till your face starts showing that first wrinkle or evidence of fine lines to shift your skincare routine into the anti-ageing lane. The reality is, it is never too early to start focusing on anti-ageing, and this is where retinol enters the chat. The powerhouse ingredient is known to help speed up cell turnover while keeping fine lines and wrinkles at bay. Dr Harshna Bijlani, medical head of The AgeLess Clinic, shares her best advice on how to use retinol for beginners and experts alike.",
           style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
          color: const Color.fromARGB(255, 44, 44, 44)),  
       ),
      
       const SizedBox(height: 30,),
        Text("Why you need to develop a retinol skincare routine",
               style: GoogleFonts.acme(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),
          Text("As a form of vitamin A, retinol can significantly improve the health and appearance of your skin. If reduced wrinkles and fine lines as well as smoother skin texture sound like something you’d be interested in, there is no time like the present to introduce retinol to your skincare routine. “While you don’t need to wait till your 50s to use retinol, it helps to allow the frequency to be gradually increased so that your skin can adapt—typically starting with a few times a week and progressing to nightly use. Furthermore, skin fasting—or taking breaks from active ingredients like retinol—can be beneficial as intermittent use allows your skin to recover and regenerate,” explains Dr Bijlani.",
           style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
           color: Colors.black),     
          ),
          const SizedBox(height: 20,),
          
          Container(
            height: 330,
            width: 370,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey)
            ),
            child: Image.asset("assets/minimalist.jpg",fit:BoxFit.cover),
          ),

          Text("How to develop a retinol skincare routine in your 20s",
               style: GoogleFonts.acme(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),

          Text("This decade should be dedicated to prevention and maintaining youthful skin, believes the Mumbai-based dermatologist. “Start with a gentle, low-concentration retinol formula or consider a product with retinol esters, which are milder. You will find that a concentration of 0.2% or less is suitable for preventive purposes. Initially, apply retinol once a week after cleansing your face and gradually increase the frequency as you",
             style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
             color: const Color.fromARGB(255, 44, 44, 44)), 
),
           const SizedBox(height:15),
            Text("How to develop a retinol skincare routine in your 30s",
               style: GoogleFonts.acme(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),

          Text("TThe skincare focus of this decade needs to shift to addressing early signs of ageing and maintaining skin health. Dr Bijlani recommends a moderate concentration from 0.2% to 0.5% as your skin tolerates it. “During this age, start applying a retinol product every night to promote collagen production and reduce early fine lines. Follow up with a moisturiser with hyaluronic acid to maintain skin hydration,” she adds.",
             style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
             color: const Color.fromARGB(255, 44, 44, 44)), 
),
          
           const SizedBox(height:15),
            Text("How to develop a retinol skincare routine in your 40s",
               style: GoogleFonts.acme(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),

          Text("The purpose of retinol in this decade is for addressing pronounced signs of ageing and maintaining skin firmness, thereby necessitating a higher concentration from 0.5% to more. She explains, “You can consider retinol products with a higher concentration of retinol or tretinoin which is a potent version of retinoid and gradually increase the application. Remember to incorporate an antioxidant-rich serum, like vitamin C, to boost its anti-ageing benefits.”",
             style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
             color: const Color.fromARGB(255, 44, 44, 44)), 
),

           
           
           
           const SizedBox(height: 50,),
             
             Text("Glossum Essence",
               style: GoogleFonts.aboreto(fontSize: 25,
               fontWeight: FontWeight.w600,
               color: const Color.fromARGB(255, 245, 69, 128))
               ,),

               Text("For every day,for every mood,for every you",
               style: GoogleFonts.lato(fontSize: 15,
               fontWeight: FontWeight.bold),),
             const SizedBox(height: 10,),
             Container(height: 1,
             width: 400,
             color: Colors.grey,
             ),
             const SizedBox(height: 20,),
       
             Text("Categories",
               style: GoogleFonts.lato(fontSize: 20,
               fontWeight: FontWeight.bold),),


               const SizedBox(height: 30,),
               Row(
                children: [
                   Text("Skin",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold),),
          
                const Spacer(),
                Text("Makeup",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.red),),
                ],
               ),
                const SizedBox(height: 10,),
               Row(
                children: [
                   Text("Hair",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold),),
          
                const Spacer(),
                Text("Fragrances",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.black),),
                ],
               ),
                const SizedBox(height: 10,),
               Row(
                children: [
                   Text("Bath & Baby",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold),),
          
                const Spacer(),
                Text("Men",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.black),),
                ],
               ),
                const SizedBox(height: 10,),
               Row(
                children: [
                   Text("Mon & Baby",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold),),
          
                const Spacer(),
                Text("Wellness",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.black),),
                ],
               ),
               const SizedBox(height: 20,),
               Text("Contact US",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.black),),

              Row(
                children: [
                  Text("Call:",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.black),),
               Text("1-800-890-3030",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.red),),
                ],
              ),
              const SizedBox(height: 10,),
               Row(
                children: [
                  Text("Whatsapp:",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.black),),
               Text("7975535545",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.red),),
                ],
              ),
               Text("(All days between 8am-9pm)",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.grey),),
               const SizedBox(height: 20,),
           Row(
                children: [
                  Text("Email:",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.black),),
               Text("help@glossumessence.com",
               style: GoogleFonts.lato(fontSize: 18,
               fontWeight: FontWeight.bold,
               color: Colors.red),),
                ],
              ),
            ],
          ),
        ),)
      ),
    );
  }
}