import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/topselfwomen_ui.dart';

 
 class  PregnantInfoTop extends StatefulWidget {
  const PregnantInfoTop ({super.key});

  @override
  State<PregnantInfoTop > createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PregnantInfoTop > {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("A time saving,dermant-app...",
          style: GoogleFonts.aBeeZee(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: const Color.fromARGB(255,245,69,128),
          )
          ),
          leading: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const topSelf()));
            },
            child: const Icon(Icons.arrow_back_ios,
            color: Color.fromARGB(255, 245, 69, 128),),
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
              

               Text("A time saving , dermant-approved skincare routime for new moms",
               style: GoogleFonts.acme(
            fontSize: 35,
            fontWeight: FontWeight.w600
          ),),
          const SizedBox(height: 30,),
           Text("By Hasina Jeelani  |  May 9,2024  | 4 min read",
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
             child: Image.asset("assets/pregnattop7.jpg",filterQuality: FilterQuality.high,fit:BoxFit.cover,),
          ),
          const SizedBox(height: 10,),
       Text(
        softWrap: true,
        textAlign: TextAlign.justify,
           "Taking time for yourself can seem like a forgotten luxury when you’re  but it's also important to address the changes your ,is going through during this phase. “Not only does your life shift dramatically as you take on the role of a mother,but your body also experiences significant changes,” says Dr Kiran Sethi, founder of ISYA Aesthetics. “This includes your hormones, which can go haywire during the postpartum period",
           style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
          color: const Color.fromARGB(255, 44, 44, 44)),  
       ),
       const SizedBox(height: 20,),
       Text("While it’s understandable that balancing this new role and maintaining healthy skin  can be challenging, Dr Sethi advises new moms to be patient and kind to themselves—and to give their body the time it needs to recover. Ahead, she shares some general changes you can expect your skin to go through as well as the best skincare routine for new moms.",
       style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
      color: const Color.fromARGB(255, 44, 44, 44)),     
       ),

       const SizedBox(height: 30,),
        Text("How does a women's skin change after delivery ??",
               style: GoogleFonts.acme(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),
          Text("Some common postpartum skincare issues include acne, pigmentation and hair loss. “Known as postpartum alopecia, this hair loss is quite common and frustrating. Stretch marks, known as striae, are also common during or after pregnancy. These issues are often a result of hormonal changes, which continue after delivery. It’s important to address these concerns with a suitable skincare routine and a healthy diet,” she recommends.",
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
            child: Image.asset("assets/cetaphil.jpg",fit:BoxFit.cover),
          ),

          Text("Try this timesaving routine if you're a new mom.",
               style: GoogleFonts.acme(
            fontSize: 35,
            fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 20,),

          Text("For starters, Dr Sethi cautions that your old skincare routine will likely be ineffective at this period. “I suggest you keep the new one as simple as possible—the focus needs to be on using fewer, more gentle products,” she tells us. Here are a few tips to keep in mind ",
             style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
             color: const Color.fromARGB(255, 44, 44, 44)), 
),
           const SizedBox(height:15),
           Text('- Use a gentle, non-stripping cleanser to wash your face twice daily.\n'
           '- Apply a moisturiser suitable for your skin type to keep the skin hydrated.\n'
           '- Use a broad-spectrum sunscreen with SPF 30 or higher, every day, as sun exposure can worsen pigmentation issues.\n'
           '- Targeted treatments are often counted among the best skincare for new moms, but it’s important to consult a physician for any specific concern.\n  '
           '- If you wear makeup, opt for light, breathable formulas that won’t clog your pores.\n'
           '- Apart from this, getting enough sleep can allow your skin to repair and regenerate.\n'
           '- Eating a balanced diet that is rich in vitamins and minerals can support skin health. If acne is a concern, it’s advisable to avoid dairy and high glycemic foods, as they can exacerbate skin issues.\n'
           ,style: GoogleFonts.lato(fontSize: 20,fontWeight: FontWeight.w700,
          color:const Color.fromARGB(255, 44, 44, 44)),
           ),
           const SizedBox(height: 20,),
           Text("Cetaphil Gentle Skin Cleanser",
           style: GoogleFonts.italiana(
            fontSize: 20,
            fontWeight: FontWeight.bold
           ),),

            const SizedBox(height: 20,),
           Text("Bioderma Atoderm Creme Ultra Daily Hydrating Moisturizer for Normal To Sensitive Dry Skin",
           style: GoogleFonts.labrada(
            fontSize: 20,
            fontWeight: FontWeight.bold
           ),),
            const SizedBox(height: 10,),
           Text("Neutrogena Hydro Boost Water Gel Face Moisturizer With Hyaluronic Acid For 72 Hours Hydration",
           style: GoogleFonts.labrada(
            fontSize: 20,
            fontWeight: FontWeight.bold
           ),),
            const SizedBox(height: 10,),
           Text("Nivea Sun Protect & Moisture Lotion SPF 50 PA++++ UVA-UVB",
           style: GoogleFonts.labrada(
            fontSize: 20,
            fontWeight: FontWeight.bold
           ),),
            const SizedBox(height: 10,),
           Text("CLINIQUE Even Better Clinical Serum Foundation Broad Spectrum SPF 20",
           style: GoogleFonts.labrada(
            fontSize: 20,
            fontWeight: FontWeight.bold
           ),),
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