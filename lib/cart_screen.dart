
// import 'dart:developer';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:homepagefemale/model/product.dart';
// import 'package:homepagefemale/model/product_model.dart';

// import 'package:homepagefemale/productClick_womenUI.dart';

// class CartScreen extends StatefulWidget {
//   final List<Product> cart;


  

//   const CartScreen({super.key, required this.cart});

//   @override
//   State<CartScreen> createState() => _CartScreenState();
// }

// class _CartScreenState extends State<CartScreen> {
//     List productList=[];



//   void initState(){
//     log("init state");
// fetchData();
//     super.initState();
//   }


//   void fetchData()async{

//    QuerySnapshot  response= await  FirebaseFirestore.instance.collection("cartItem").get();

// log("DATA ADDED ${response.docs.length}");
//    for(int i=0; i<response.docs.length; i++){
//     productList.add(
//       ProductModel(
//         name: response.docs[i]['name'], 
//         imagePath: response.docs[i]['productImage'],
//         price: response.docs[i]['price'],
//     )
//     );
//    }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title:  const Text("Cart",
//       style: TextStyle(fontSize: 30,
//       color: const Color.fromARGB(255,245,69,128)),),
//       ),
      
//       body: ListView.builder(
//         itemCount: productList.length,
//         itemBuilder: (context, index) {
         
//           return Card(
//             color: Color.fromARGB(255, 241, 228, 232),
//             margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             elevation: 5,
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 children: [
//                   Image.asset(
//                     productList[index].imagePath,
//                     height: 100,
//                     width: 100,
//                     fit: BoxFit.cover,
//                   ),
//                   const SizedBox(width: 20),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         productList[index].name,
//                         style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         "₹${productList[index].price}",
//                         style: const TextStyle(fontSize: 16, color: Colors.green),
//                       ),
//                       const SizedBox(height: 10,),

//                       Row(children: [
//                           GestureDetector(onTap: () {
//                         Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProductWomen()));
//                       },
                      
//                         child: Container(
//                         height: 25,
//                         width: 100,
//                         alignment: Alignment.center,
//                         decoration: BoxDecoration(
//                           border: Border.all(color:Colors.grey),
//                           borderRadius: BorderRadius.circular(20),
//                          // color: const Color.fromARGB(255, 245, 69, 128),
//                         ),
//                         child: Text("Buy now",style:GoogleFonts.lato(
//                           fontSize: 15,
//                           color: const Color.fromARGB(255, 245, 69, 128),
//                           fontWeight: FontWeight.w800,
//                         )),
//                                             ),

//                       ),
                      
//                       ],
//                       ),
                    
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           );

//         },

//       ),
      
//     );
//   }
// }
import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/model/product.dart';
import 'package:homepagefemale/model/product_model.dart';
import 'package:homepagefemale/productClick_womenUI.dart';

class CartScreen extends StatefulWidget {
  final List<Product> cart;

  const CartScreen({super.key, required this.cart});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<ProductModel> productList = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    QuerySnapshot response =
        await FirebaseFirestore.instance.collection("cartItem").get();

    log("DATA FETCHED: ${response.docs.length}");
    List<ProductModel> tempList = [];
    for (int i = 0; i < response.docs.length; i++) {
      tempList.add(ProductModel(
        name: response.docs[i]['name'],
        imagePath: response.docs[i]['productImage'],
        price: double.tryParse(response.docs[i]['price'].toString()) ?? 0.0,
      ));
    }

    setState(() {
      productList = tempList; // Update the state with fetched data
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Cart",
          style: TextStyle(
            fontSize: 30,
            color: Color.fromARGB(255, 245, 69, 128),
          ),
        ),
      ),
      body: productList.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return Card(
                  color: const Color.fromARGB(255, 241, 228, 232),
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        productList[index].imagePath.startsWith("http")
                            ? Image.network(
                                productList[index].imagePath,
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              )
                            : Image.asset(
                                productList[index].imagePath,
                                height: 100,
                                width: 100,
                                fit: BoxFit.cover,
                              ),
                        const SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              productList[index].name,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "₹${productList[index].price}",
                              style: const TextStyle(
                                  fontSize: 16, color: Colors.green),
                            ),
                            const SizedBox(height: 10),
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const ProductWomen()),
                                    );
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 100,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      "Buy now",
                                      style: GoogleFonts.lato(
                                        fontSize: 15,
                                        color:
                                            const Color.fromARGB(255, 245, 69, 128),
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
