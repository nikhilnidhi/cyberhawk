import 'package:flutter/material.dart';
import 'package:untitled2/ui/page14.dart';
import 'package:untitled2/ui/page15.dart';

class Page13 extends StatefulWidget {
  const Page13({Key? key}) : super(key: key);

  @override
  State<Page13> createState() => _Page13State();
}

class _Page13State extends State<Page13> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff171717),
      appBar: AppBar(
        title: Text("Online Reporting"),
        backgroundColor: Color(0xff171717),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 19,
            ),



            Row(
              children: [
                Text('select the crime type',style: TextStyle(fontSize: 21,color: Colors.white),),
              ],
            ),
            SizedBox(
              height: 30,
              width: 5,
            ),
            GridView.builder(

              physics: NeverScrollableScrollPhysics(),
                padding: const EdgeInsets.only(bottom: 19.0,top: 0,left: 10,right: 10),
              shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 0,
                ),
                itemCount: 3,

                itemBuilder: (BuildContext context, int index) {

                 return Column(
                    children: [


                      Image.asset(
                        'assets/wood.jpg',

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Illegal Wildlife Product Trade")
                    ],



                  );
                }
            ),
            MaterialButton(
                color: Color(0xffFFB11F),
                //  height: 50,
                // minWidth: MediaQuery.of(context).size.width*.9,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Page14()));
                },

                child:  Container(height: 50,width:MediaQuery.of(context).size.width*.85 , child: Center(child: Text("NEXT",style: TextStyle(fontSize: 20,color: Colors.black))))

            ),



          ],
        ),
      ),







      );




  }
}
