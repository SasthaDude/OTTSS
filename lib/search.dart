import 'package:flutter/material.dart';
import 'package:ott/profile2.dart';

class search extends StatefulWidget {
  const search({super.key});

  @override
  State<search> createState() => _searchState();
}

class _searchState extends State<search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Search',style: TextStyle(color: Colors.white),),
        ),
        actions: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 5),
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
      body: SingleChildScrollView(
        child: Column(
         crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            width: 380,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: "Search by actor, title...",
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(Icons.search), // Search icon
                suffixIcon: IconButton(
                  icon: Icon(Icons.mic), // Microphone icon
                  onPressed: () {
                  },
                ),
              ),
            ),
                  ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Genres',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[900],
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('Adventure',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('Anime ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('Comedy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(child: Text('Documentary',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)
                    ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(child: Text('Drama',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                        )
                  ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey[900],
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(5)
                    ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Fantasy',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                      )
                  ),
                )
              ],
            ),
            Center(
              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(),
                  color: Colors.grey
                ),
                child: Center(child: Text('See more',style: TextStyle(color: Colors.white),)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Featured collections',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Hindi',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('English',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Tamil',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Malayalam',style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
            Center(
              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(),
                    color: Colors.grey
                ),
                child: Center(child: Text('See more',style: TextStyle(color: Colors.white),)),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
