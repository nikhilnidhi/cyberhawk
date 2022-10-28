import 'package:flutter/material.dart';
class Page17 extends StatefulWidget {
  const Page17({Key? key}) : super(key: key);

  @override
  State<Page17> createState() => _Page17State();
}

class _Page17State extends State<Page17> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        title: Text("Digital Guide",style: TextStyle(color: Colors.white),),
        backgroundColor:Color(171717),
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
    GridView.builder(

    physics: NeverScrollableScrollPhysics(),
        padding: const EdgeInsets.only(bottom: 19.0,top: 0,left: 10,right: 10),
    shrinkWrap: true,


    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

    crossAxisCount: 2,
      crossAxisSpacing: 8,


    ),
    itemCount: 4,


    itemBuilder: (BuildContext context, int index) {
    return Column(


    children: [
    Image.asset('assets/img.png' ),
      SizedBox(
        height: 10,
      ),
      Text("Mammals")
    ],



    );

    }

      ),


  ]
    ),
    ),
    );
}
}