import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:homepagefemale/user_or_adminlogin.dart';

class HomaePage extends StatefulWidget {
  const HomaePage({super.key});

  @override
  State<HomaePage> createState() => _HomaePageState();
}

class _HomaePageState extends State<HomaePage> {
  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 500), () {
      scrollController.animateTo(
        scrollController.position.maxScrollExtent,
        duration:const Duration(seconds:10),
        curve: Curves.linear,
      );
    });
  

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  }

  List<String> assets = [
    'assets/p1.webp',
    'assets/p2.jpg',
    'assets/p3.jpg',
    'assets/p4.jpg',
    'assets/p5.webp',
    'assets/p6.jpeg',
    'assets/p7.jpeg',
    'assets/p8.webp',
    'assets/p9.png',
    'assets/p10.jpeg',
    'assets/p11.jpg',
    'assets/p12.jpg',
    'assets/p13.avif',
    
  ]; // Added the missing semicolon

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            SizedBox(
              width: size.width,
              height: size.height,
              child: SingleChildScrollView(
                controller: scrollController,
                physics: const BouncingScrollPhysics(), // Added physics here
                child: StaggeredGrid.count(
                  crossAxisCount: 4,
                  mainAxisSpacing: 4,
                  crossAxisSpacing: 4,
                  children: List.generate(12, (index) {
                    return StaggeredGridTile.count(
                      crossAxisCellCount: 2,
                      mainAxisCellCount: index.isEven ? 4 : 2,
                      child: Image(
                        image: AssetImage(assets[index]),
                        fit: BoxFit.cover,
                      ),
                    );
                  }),
                ),
              ),
            ),
            Container(
              width: size.width,
              //height: size.height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                   Colors.white.withOpacity(0),
                   Colors.white.withOpacity(0),
                    Colors.white.withOpacity(0.9),
                  // Colors.white.withOpacity(1),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(shape: BoxShape.circle,
                    color: Colors.amber
                  ),
                  child: Image.asset("assets/logo.jpg",fit: BoxFit.cover,),
                  ),
                 
                  Text("GLOSSUM ESSENCE",
                  style: GoogleFonts.aboreto(fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 245, 69,128), ),),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Colors.pink,),),
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>  const UserOrAdmin()));
                        },
                       child: const Text("Continue",
                       style: TextStyle(fontSize: 25,
                       fontWeight:FontWeight.w600,
                       color: Colors.white,
                        ),)),
                    ),
                  ),
                  
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
