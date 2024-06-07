import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:ott/profile2.dart';
import 'package:ott/videodes.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}
 List image = [
  'assets/pic1.jpg',
  'assets/pic2.jpg',
  'assets/pic3.jpg',
  'assets/pic5.jpg',
  'assets/pic6.jpg',
   'assets/img3.jpg',
   'assets/img5.jpg',
   'assets/img6.jpg',
   'assets/img4.jpg',
 ];

 List image2 = [
   'assets/img1.jpg',
   'assets/img2.jpg',
   'assets/img3.jpg',
   'assets/img5.jpg',
   'assets/img6.jpg',
   'assets/img4.jpg',
   'assets/pic3.jpg',
   'assets/pic5.jpg',
   'assets/pic6.jpg'
 ];
 List image3 = [
   'assets/img1.jpg',
   'assets/img5.jpg',
   'assets/img6.jpg',
   'assets/mallu1.jpg',
   'assets/kgf.jpg',
   'assets/pic6.jpg'

 ];
  List text =[
    'English',
    'Hindi',
    'Tamil',
    'Malayalam',
    'Kannada',
    'International'
  ];
   List pic =[
     'assets/p1.jpg',
     'assets/p2.jpg',
     'assets/p3.jpg',
     'assets/p4.jpg',
     'assets/p1.jpg',
     'assets/p2.jpg',
   ];


int currentPage =0;


class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.only(top: 30),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Row(
               children: [
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Container(
                         height: MediaQuery.of(context).size.height/29,
                           child: Image(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-8qLG2veCk844-poOlAgvI1nv-yxfU9lhow&s'),)),
                     )
                   ],
                 ),
                 SizedBox(
                   width: 150,
                 ),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(right: 9),
                       child: Icon(Icons.cast,color: Colors.white,size: 30,),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(left:1),
                       child: TextButton(
                           onPressed: () {
                             Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>Profile()),
                           ); },
                           child: Icon(Icons.person_pin,color: Colors.white,size: 40,)),
                     )
                   ],
                 ),

               ],
             ),
             Row(
               children: [
                 Padding(
                   padding: const EdgeInsets.all(4.0),
                   child: Container(
                     height: 45,
                     width: 70,
                     decoration: BoxDecoration(
                       border: Border.all(),
                       color: Colors.white,
                       borderRadius: BorderRadius.circular(50)
                     ),
                     child: Center(child: Text('All',style: TextStyle(fontWeight: FontWeight.bold),)),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(3.0),
                   child: Container(
                     height: 45,
                     width: 85,
                     decoration: BoxDecoration(
                         border: Border.all(),
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(50)
                     ),
                     child: Center(child: Text('Movies',style: TextStyle(fontWeight: FontWeight.bold),)),
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.all(3.0),
                   child: Container(
                     height: 45,
                     width: 90,
                     decoration: BoxDecoration(
                         border: Border.all(),
                         color: Colors.white,
                         borderRadius: BorderRadius.circular(50)
                     ),
                     child: Center(child: Text('TV shows',style: TextStyle(fontWeight: FontWeight.bold),)),
                   ),
                 )
               ],
             ),
             SizedBox(
               height: 20,
             ),
             Stack(
               children: [
                 CarouselSlider.builder(
                   options: CarouselOptions(
                     height: 200,
                     aspectRatio: 16/9,
                     viewportFraction: 1,
                     initialPage: 0,
                     enableInfiniteScroll: true,
                     reverse: false,
                     autoPlay: true,
                     autoPlayInterval: Duration(seconds: 3),
                     autoPlayAnimationDuration: Duration(milliseconds: 800),
                     autoPlayCurve: Curves.fastOutSlowIn,
                     enlargeCenterPage: true,
                     enlargeFactor: 0.3,),
                   itemCount:image.length,
                   itemBuilder: (BuildContext context, int index, int realIndex) {
                     return Container(
                       width: double.infinity,
                       decoration: BoxDecoration(
                         image: DecorationImage(
                           image: AssetImage(image[index]),
                           fit: BoxFit.fill,
                         ),
                       ),
                       child: TextButton(
                         onPressed: () {
                           Navigator.push(
                             context,
                             MaterialPageRoute(builder: (context) =>video()),
                           );
                         },
                         child: Text(
                           "",
                         ),
                       ),
                     );
                   },
                 ),

               ],

             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('miniTV - Most popular shows- Free with ads>',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
             ),
             Container(
               height: 140,
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: image2.length,
                   itemBuilder: (BuildContext con, index)
                   {
                     return Padding(
                       padding: const EdgeInsets.only(left:10,top: 5),
                       child: Column(
                         children: [
                           Container(
                             height: 120,
                             width: 200,
                             decoration: BoxDecoration(
                               border: Border.all(),
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image: AssetImage(image2[index]),fit: BoxFit.fill
                               ),
                             ),
                             child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) =>video()),
                                 );
                               },
                               child: Text(
                                 "",
                                 ),
                               ),
                             ),
                         ],
                       ),
                     );
                   }
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Prime- Watch in your Language',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
             ),
             Container(
               height: 140,
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: image3.length,
                   itemBuilder: (BuildContext con, index)
                   {
                     return Padding(
                       padding: const EdgeInsets.only(left:10,top: 5),
                       child: Stack(
                         children:[
                           Container(
                             height: 120,
                             width: 200,
                             decoration: BoxDecoration(
                               border: Border.all(),
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image: AssetImage(image3[index]),fit: BoxFit.fill
                               ),
                             ),
                             child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) =>video()),
                                 );
                               },
                               child: Text(
                                 "",
                               ),
                             ),
                           ),
                           Positioned(
                               bottom: 20,left: 5,
                               child: Text(text[index],style: TextStyle(color: Colors.white60,fontWeight: FontWeight.bold,fontSize: 17),))
                         ]
                       ),
                     );
                   }
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Prime- Filmfare OTT Award Winners >',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
             ),
             Container(
               height: 140,
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: image.length,
                   itemBuilder: (BuildContext con, index)
                   {
                     return Padding(
                       padding: const EdgeInsets.only(left:10,top: 5),
                       child: Column(
                         children: [
                           Container(
                             height: 120,
                             width: 200,
                             decoration: BoxDecoration(
                               border: Border.all(),
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image: AssetImage(image[index]),fit: BoxFit.fill
                               ),
                             ),
                             child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) =>video()),
                                 );
                               },
                               child: Text(
                                 "",
                               ),
                             ),
                           ),
                         ],
                       ),
                     );
                   }
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Prime- Amazon Original series >',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
             ),
             Container(
               height: 260,
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: pic.length,
                   itemBuilder: (BuildContext con, index)
                   {
                     return Padding(
                       padding: const EdgeInsets.only(left:10,top: 5),
                       child: Column(
                         children: [
                           Container(
                             height: 250,
                             width: 200,
                             decoration: BoxDecoration(
                               border: Border.all(),
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image: AssetImage(pic[index]),fit: BoxFit.fill
                               ),
                             ),
                             child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) =>video()),
                                 );
                               },
                               child: Text(
                                 "",
                               ),
                             ),
                           ),
                         ],
                       ),
                     );
                   }
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Prime- TV shows we think you like',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
             ),
             Container(
               height: 140,
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: image2.length,
                   itemBuilder: (BuildContext con, index)
                   {
                     return Padding(
                       padding: const EdgeInsets.only(left:10,top: 5),
                       child: Column(
                         children: [
                           Container(
                             height: 120,
                             width: 200,
                             decoration: BoxDecoration(
                               border: Border.all(),
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image: AssetImage(image2[index]),fit: BoxFit.fill
                               ),
                             ),
                             child: TextButton(
                               onPressed: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(builder: (context) =>video()),
                                 );
                               },
                               child: Text(
                                 "",
                               ),
                             ),
                           ),
                         ],
                       ),
                     );
                   }
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Text('Prime- Stories from the heartland',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
             ),
             Container(
               height: 140,
               child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                   itemCount: image.length,
                   itemBuilder: (BuildContext con, index)
                   {
                     return Padding(
                       padding: const EdgeInsets.only(left:10,top: 5),
                       child: Column(
                         children: [
                           Container(
                             height: 120,
                             width: 200,
                             decoration: BoxDecoration(
                               border: Border.all(),
                               borderRadius: BorderRadius.circular(10),
                               image: DecorationImage(
                                   image: AssetImage(image[index]),fit: BoxFit.fill
                               ),
                             ),
                             child: TextButton(
                             onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) =>video()),
                               );
                             },
                             child: Text(
                               "",
                             ),
                           ),
                           ),
                         ],
                       ),
                     );
                   }
               ),
             ),

           ],
         ),
       ),
     ),
    );
  }
}

