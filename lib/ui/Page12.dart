import 'package:flutter/material.dart';
class Page12 extends StatefulWidget {
  const Page12({Key? key}) : super(key: key);

  @override
  State<Page12> createState() => _Page12State();
}

class _Page12State extends State<Page12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        title: Text("REPORT"),

        backgroundColor: Color(0xff171717),

      ),
      body: SingleChildScrollView(
      child:Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Column(
    children: [
      ListView.builder(
        itemBuilder:(BuildContext context,int index) {
          return Container(

            width: MediaQuery
                .of(context)
                .size
                .width * .28,
            height: 100,

            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.photo_camera, size: 40, color: Colors.amber,),
                  ],
                ),
              ],

            ),


          );
        }) ]
    ),
  ],

  ),

  ),



    );
}
}

