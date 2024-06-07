import 'package:flutter/material.dart';
import 'package:ott/bot.dart';
import 'package:ott/home.dart';

class watching extends StatefulWidget {
  const watching({super.key});

  @override
  State<watching> createState() => _watchingState();
}

class _watchingState extends State<watching> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            height: 100,
          ),
          Center(child: Text("Who's watching?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),)),
          Align(
            child: Container(
              height: 200,
              width: 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(50),
                              image: DecorationImage(
                                image: AssetImage('assets/profile.png')
                              )
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>abc()),
                                );
                              },
                              child: Text(
                                "",
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                padding: MaterialStateProperty.all(EdgeInsets.zero),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                          ),
                          Text('Person1',style: TextStyle(color: Colors.white),)

                        ],
                      ),

                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: AssetImage('assets/profile.png')
                                )
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>abc()),
                                );
                              },
                              child: Text(
                                "",
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                padding: MaterialStateProperty.all(EdgeInsets.zero),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                          ),
                          Text('Person2',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: AssetImage('assets/kid.jpg')
                                )
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) =>abc()),
                                );
                              },
                              child: Text(
                                "",
                              ),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(Colors.transparent),
                                padding: MaterialStateProperty.all(EdgeInsets.zero),
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                              ),
                            ),
                          ),
                          Text('Kids',style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(50),
                                image: DecorationImage(
                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEz86KzDzmp1nX-hXWbsVhwYfcDi5YCsynDA&s')
                                )
                            ),
                          ),
                          Text("Add New",style: TextStyle(color: Colors.white),)

                        ],
                      ),
                    ],
                  ),

                ],
              ),

            ),
          ),
          SizedBox(
            height: 300,
          ),
          Container(
            height: 50,
            width: 350,
            decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey
            ),
            child: Center(child: Text('Edit Profile',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),))
          ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text('Learn more',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.blue),),
        )
        ],
      ),
    );
  }
}
