import 'package:flutter/material.dart';
class Page15 extends StatefulWidget {
  const Page15({Key? key}) : super(key: key);

  @override
  State<Page15> createState() => _Page15State();
}

class _Page15State extends State<Page15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),

      appBar: AppBar(
        title: Text("Add Images or Videos"),
        backgroundColor: Color(171717),

      ),


      body: SingleChildScrollView(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(

                    width: MediaQuery.of(context).size.width *.28,
                    height: 50,

                   child: Column(
                      children: [
                        Icon(Icons.add_photo_alternate_outlined,size: 40,color: Colors.amber,),
                      ],

                    )




      ),


                SizedBox(
                  height: 19,
                ),
                Text("Tap to Add Images"),
                SizedBox(
                  height: 180,
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.video_call_rounded,size: 40,color: Colors.amberAccent,)
                    ],
                  ),
                ),
                SizedBox(
                  height: 19,
                ),
                Text("Tap to Add Video"),
                SizedBox(
                  height: 180,
                ),
                Container(
                  child: Column(
                    children: [
                      Icon(Icons.volume_up,size: 40,color: Colors.amberAccent,),
                    ],
                  ),

                ),
                SizedBox(
                  height: 19,
                ),
                Text("Tap to Add Audio"),

              ],




            ),
          ],
        ),




      ),

    );
  }
}
