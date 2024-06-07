import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';



class nmp extends StatefulWidget {
  const nmp({super.key});

  @override
  State<nmp> createState() => _nmpState();
}

class _nmpState extends State<nmp> {

  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    );
  }

  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back,color: Colors.white,),
          ),
          actions: [
            Icon(
              Icons.search,
              color: Colors.white,
            ),
          ],
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height /2,
                width: MediaQuery.of(context).size.width /1,
                child: FlickVideoPlayer(
                    flickManager: flickManager
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/20,
                width: MediaQuery.of(context).size.width/1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                       'PREMAM',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      )),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height/25,
                width: MediaQuery.of(context).size.width/1,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "2023   U/A   2h 35m ",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                    Icon(
                      Icons.hd_outlined,
                      color: Colors.white38,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height/12,
                  width: MediaQuery.of(context).size.width/1,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                      child: Text(
                        " ▶ Play",
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold ),
                      )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: MediaQuery.of(context).size.height/12,
                    width: MediaQuery.of(context).size.width/1,
                    decoration: BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.file_download_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Download",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    )),
              ),
              Text('Premam was remade into Telugu under the same name, which released in 2016. The film stars Naga Chaitanya and Shruthi Hassan in the lead role reprising Nivin and Pallavi and was directed by Chandoo Mondeti',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                        Text(
                          "My List",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.thumb_up_alt_outlined,
                          color: Colors.white,
                        ),
                        Text(
                          "Rate ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                        Text(
                          "Share ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                endIndent: 259,
                indent: 10,
                color: Colors.redAccent,
                thickness: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "More Like This ",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.black,
        );
   }
}