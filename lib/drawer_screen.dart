import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homepagefemale/aboutUs.dart';
import 'package:homepagefemale/adress_form.dart';
import 'package:homepagefemale/cart_screen.dart';
import 'package:homepagefemale/favouritescreen.dart';
import 'package:homepagefemale/homepage_female.dart';
import 'package:homepagefemale/user_or_adminlogin.dart';
//import 'package:google_fonts/google_fonts.dart';
 

 class drawerUI extends StatefulWidget {
  const drawerUI({super.key});

  @override
  State<drawerUI> createState() => _drawerUIState();
}

class _drawerUIState extends State<drawerUI> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.white,
          actions: [
            IconButton(onPressed: (){}, icon:const Icon(Icons.notifications_none_outlined,size: 30,
             color:  Color.fromARGB(255, 245, 69, 128)
            )),
          ],
          leading: IconButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>  imageSlider()));
          }, icon:const Icon(Icons.arrow_back_ios_new_outlined,size: 30,
           color:  Color.fromARGB(255, 245, 69, 128)),
        ),
      ),

      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
           Container(width: 410,
           height: 1,
          // color:const Color.fromARGB(255, 187, 183, 183)
           ),
           Padding(padding: const EdgeInsets.all(15),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               Container(width: 400,
           height: 100,
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
               color:const Color.fromARGB(255, 187, 183, 183)
            )
           ),
          child: const Row(
            children: [
               SizedBox(width: 10,),
               Icon(Icons.person_2_outlined,size: 70, color:Color.fromARGB(255, 245, 49, 128)),
               SizedBox(width: 30,),
              Text("Hellow, Kiran",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            ],
          ),
           ),

           const SizedBox(height: 20,),
           Container(
            width: 380,
            height: 280,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
               color:const Color.fromARGB(255, 187, 183, 183)
            )
           ),
           child: Padding(padding: const EdgeInsets.all(10),
           child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Icon(Icons.person_2_outlined,size: 30,),
                  const SizedBox(width: 20,),
                 
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>AddressForm()));
                      },
                      child: Container(
                        width: 180,
                         child:const Text("Personal Details",
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                      ),
                    ),
                    Container(
                      width: 180,
                      child: const Text("Contact Details",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),
              ),
                    ),
                  ],
                 ),
                  const SizedBox(width: 30,),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.expand_more_outlined)),
                ],
               ),             

               const SizedBox(height: 10,),
               Container(height: 1,width: 300,color:const Color.fromARGB(255, 218, 215, 215)),
               Row(
                children: [
                  const Icon(Icons.favorite_border_outlined,size: 30,),
                  const SizedBox(width: 20,),
                 
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> FavoriteScreen()));
                      },
                      child: Container(
                        width: 180,
                         child:const Text("My Wishlist",
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                      ),
                    ),
                    Container(
                      width: 180,
                      child: const Text("View Like Products ",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),
              ),
                    ),
                  ],
                 ),
                  const SizedBox(width: 30,),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.expand_more_outlined)),
                ],
               ),             

               const SizedBox(height: 10,),
               Container(height: 1,width: 300,color:const Color.fromARGB(255, 218, 215, 215)),
Row(
                children: [
                  const Icon(Icons.person_2_outlined,size: 30,),
                  const SizedBox(width: 20,),
                 
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> const About_us()));
                      },
                      child: Container(
                        width: 180,
                         child:const Text("About US",
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                      ),
                    ),
                    Container(
                      width: 180,
                      child:  const Text("Welcome to  beauty ",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),
              ),
                    ),
                  ],
                 ),
                  const SizedBox(width: 30,),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.expand_more_outlined)),
                ],
               ),             
               const SizedBox(height: 10,),
               Container(height: 1,width: 300,color:const Color.fromARGB(255, 218, 215, 215)),

Row(
                children: [
                  const Icon(Icons.shopping_bag_outlined,size: 30,),
                  const SizedBox(width: 20,),
                 
                 Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>CartScreen(cart: [],)));
                      },
                      child: Container(
                        width: 180,
                         child:const Text("cart Products",
                                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
                                    ),
                      ),
                    ),
                    Container(
                      width: 180,
                      child:  const Text("View cart Products ",
              style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey),
              ),
                    ),
                  ],
                 ),
                  const SizedBox(width: 30,),
                  IconButton(onPressed: (){}, icon:const Icon(Icons.expand_more_outlined)),
                ],
               ),             
            ],
           ),
           ),          
           ),
           const SizedBox(height: 10,),
           Row(
            children: [
              const Icon(Icons.logout_outlined,
              color: Color.fromARGB(255,245,69,128)),
              const SizedBox(width: 10,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const UserOrAdmin()));
            },
            child: const Text("Logout",
            style: TextStyle(
              color:Colors.red,fontSize: 23,fontWeight: FontWeight.bold
            ),),
          ),],),
           
            ],
           ),)
          ],
        ),
      ),
      ),
    );
  }
}