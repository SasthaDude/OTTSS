import 'package:flutter/material.dart';
import 'package:ott/des.dart';
import 'package:ott/profile2.dart';

import 'home.dart';

class video extends StatefulWidget {
  const video({super.key});

  @override
  State<video> createState() => _videoState();
}

class _videoState extends State<video> {
  List image = [
    'assets/nivi.jpg',
    'assets/anu.jpg',
    'assets/sai.jpg',
    'assets/pre.jpg',
    'assets/anu.jpg',
    'assets/sai.jpg',

  ];
  List text = [
    'Nivin Pauly',
    'Anuppamma',
    'Sai Pallavi',
    'Modona',
    'Anuppamma',
    'Sai Pallavi',
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          SizedBox(
            width: 105,
            child: Row(
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
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: 600,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                  image: AssetImage('assets/mallu1.jpg'),
                  fit: BoxFit.fill
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Premam',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('malayalam',style: TextStyle(color: Colors.white,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  height: 55,
                  width: 380,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),color: Colors.white
                  ),child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>nmp()),
                    );
                  },
                  child: Text(
                    "How do I Watch this?",
                  ),
                ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Rentals include 30 days to start watching this video and 48 hours to finish started',style: TextStyle(color: Colors.grey,fontSize: 16),),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.video_collection,color: Colors.white,size: 30,),
                  Icon(Icons.add,color: Colors.white,size: 30,),
                  Icon(Icons.thumb_up_alt_outlined,color: Colors.white,size: 30,),
                  Icon(Icons.thumb_down_alt_outlined,color: Colors.white,size: 30,),
                  Icon(Icons.share,color: Colors.white,size: 30,),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Trailer',style: TextStyle(color: Colors.white),),
                  Text('Watchlist',style: TextStyle(color: Colors.white),),
                  Text('like',style: TextStyle(color: Colors.white),),
                  Text('not for me',style: TextStyle(color: Colors.white),),
                  Text('share',style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Vijay Rajendren is a happy to go lucky man. Things change when his father becomes terminally',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Love . Drama . Fun',style: TextStyle(color: Colors.white60,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('2020  168 min',style: TextStyle(color: Colors.white60,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Languages',style: TextStyle(color: Colors.blue,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Audio(1), Subtitles(1)',style: TextStyle(color: Colors.grey,fontSize: 16),),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('Related',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                Text('More Details',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Customer also watched',style: TextStyle(color: Colors.white,fontSize: 16),),
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
                          ),
                        ],
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text('Cast & Crew',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
           SizedBox (
             height:100,
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Image(image: AssetImage('assets/nivi.jpg')),
                 Image(image: AssetImage('assets/sai.jpg')),
                 Image(image: NetworkImage('https://www.google.com/search?sa=X&sca_esv=bc726fa3646732db&sca_upv=1&rlz=1C1ONGR_enIN1080IN1080&biw=1242&bih=545&sxsrf=ADLYWIIOnNsQLEbbs5mStSM1UCsmuEe8dA:1717133784776&q=Madonna+Sebastian&stick=H4sIAAAAAAAAAONgFuLWz9U3MDTMyrJIT1aCcIxTktNSyrWEspOt9NMyc3LBhFVyYnHJIlZB38SU_Ly8RIXg1CSgQGZi3g5WRgClRfSSRwAAAA&ved=2ahUKEwjK05fqlbeGAxWa2DgGHWGwCYAQgOQBegQIRBAY')),
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
