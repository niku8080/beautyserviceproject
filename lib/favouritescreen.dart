// import 'package:flutter/material.dart';
// import 'package:homepagefemale/model/product_model.dart';
// class CartScreen extends StatelessWidget {
//   final List<Product> cart;

//   const CartScreen({super.key, required this.cart});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Cart")),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           childAspectRatio: 0.7,
//         ),
//         itemCount: cart.length,
//         itemBuilder: (context, index) {
//           final product = cart[index];
//           return Column(
//             children: [
//               Image.asset(product.imagePath, height: 150, width: 150),
//               Text(product.name),
//               Text("₹${product.price}"),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:homepagefemale/model/product_model.dart';
// class FavoriteScreen extends StatelessWidget {
//   final List<Product> favorites;

//   const FavoriteScreen({super.key, required this.favorites});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Favorites")),
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3,
//           childAspectRatio: 0.5,
//         ),
//         itemCount: favorites.length,
//         itemBuilder: (context, index) {
//           final product = favorites[index];
//           return Container(
//             child: Row(
//               children: [
//                  Image.asset(product.imagePath, height: 150, width: 150),
//                  SizedBox(width: 20,),
//                 Column(
//                   children: [
//                     //Image.asset(product.imagePath, height: 150, width: 150),
//                     Text(product.name),
//                     Text("₹${product.price}"),
//                   ],
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
// import 'package:flutter/material.dart';
// import 'package:homepagefemale/model/product_model.dart';

// class FavoriteScreen extends StatelessWidget {
//   final List<Product> favorites;

//   const FavoriteScreen({super.key, required this.favorites});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Favorites")),
//       body: ListView.builder(
//         itemCount: favorites.length,
//         itemBuilder: (context, index) {
//           final product = favorites[index];
//           return Card(
//             margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//             elevation: 5,
//             child: Padding(
//               padding: const EdgeInsets.all(10.0),
//               child: Row(
//                 children: [
//                   Image.asset(
//                     product.imagePath,
//                     height: 150,
//                     width: 150,
//                     fit: BoxFit.cover,
//                   ),
//                   const SizedBox(width: 20),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         product.name,
//                         style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                       ),
//                       const SizedBox(height: 5),
//                       Text(
//                         "₹${product.price}",
//                         style: const TextStyle(fontSize: 16, color: Colors.green),
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
import 'package:flutter/material.dart';
import 'package:homepagefemale/database.dart';
import 'package:homepagefemale/model/product_model.dart';


class FavoriteScreen extends StatefulWidget {
  @override
  _FavoriteScreenState createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final DBHelper dbHelper = DBHelper();
  List<Product> favorites = [];

  @override
  void initState() {
    super.initState();
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    final loadedFavorites = await dbHelper.getFavorites();
    setState(() {
      favorites = loadedFavorites;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Favorites",
      style: TextStyle(fontSize: 30,
      color: Color.fromARGB(255,245,69,128)),),
     ),
      body: ListView.builder(
        itemCount: favorites.length,
        itemBuilder: (context, index) {
          final product = favorites[index];
          return Card(
            color: const Color.fromARGB(255, 234, 215, 222),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                Row(children: [                 
                  Image.asset(
                    product.imagePath,
                    height: 120,
                    width: 120,
                    isAntiAlias: true,
                    fit: BoxFit.cover,
                  ),             
                  ],),              
                  const SizedBox(width: 20),
                 
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "₹${product.price}",
                        style: const TextStyle(
                            fontSize: 20, color: Colors.pink),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        children: [
                          const SizedBox(width: 130,),
                       IconButton(onPressed: (){
                        favorites.removeAt(index);
                        setState(() {                        
                        });
                       }, icon: const Icon(Icons.delete_outline_outlined,color:Colors.black,size: 20,))],),
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
