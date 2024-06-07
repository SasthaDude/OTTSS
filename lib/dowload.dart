import 'package:flutter/material.dart';
import 'package:ott/profile2.dart';

class dowload extends StatefulWidget {
  const dowload({super.key});

  @override
  State<dowload> createState() => _dowloadState();
}

class _dowloadState extends State<dowload> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Dowloads',style: TextStyle(color: Colors.white),),
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
      body: Column(
        children: [
          SizedBox(
            height: 300,
          ),
          Center(child: Text('No videos dowloaded',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 230,
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('Find videos to dowload',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Auto Dowloads: On . ',style: TextStyle(color: Colors.white),),
              Text('Manage',style: TextStyle(color: Colors.blue),)
            ],
          )
        ],
      ),
    );
  }
}
