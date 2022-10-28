import 'package:flutter/material.dart';

import 'package:untitled2/ui/page13.dart';

class Page9 extends StatefulWidget {
  const Page9({Key? key}) : super(key: key);

  @override
  State<Page9> createState() => _Page9State();
}

class _Page9State extends State<Page9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              subtitle: Text("ggh"),
              title: const Text('Item 1'),
              trailing: Text("4"),
              leading: Text("gjhf"),
              onTap: () {
                print("h");
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              subtitle: Text("hjj"),
              trailing: Text("6"),
              leading: Text("bbdnb"),
              title: const Text('Item 2'),
              onTap: () {
                print("kk");
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xff13131D),
        title: Text(
          "CYBERHAWK",
          style: TextStyle(fontSize: 30),
        ),
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(40),

          child:Container(

            child: Row(
          children: [
            Icon(
              Icons.sync,
              color: Color(0xffFFBA00),
            ),
            Text(
              "offline sync",
              style: TextStyle(
                  color: Color(0xffFFBA00),
                  backgroundColor: Color(0xff13131D)),
            ),
          ],
            ),
            color: Color(0xff13131D))),
            ],
          ),


      body: SingleChildScrollView(


        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.40,
                  width: 2,
                ),
                Text("WE HANDLE YOUR \n REPORTINGS",
                    style: TextStyle(
                      fontSize: 30,
                    )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.010,
              width: 4,
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),

              child: Column(
                children: [
                  MaterialButton(
                      color: Color(0xffFFB11F),
                      //  height: 50,
                      // minWidth: MediaQuery.of(context).size.width*.9,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page13()));
                      },
                      child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * .85,
                          child: Center(
                              child: Text("REPORT CRIME",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black))))),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.08,
                    width: 2,
                  ),
                  Row(
                    children: [
                      Text(
                        "Recommended",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.06,
                    width: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xff3A3A4D),
                              Color.fromARGB(255, 31, 31, 41)
                            ]
                          )
                        ),
                        width: MediaQuery.of(context).size.width *.28,
                        height: 120.0,
                        child: Image.asset('assets/report.png',
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.11,
                        width: 20,
                      ),

                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff3A3A4D),
                                  Color.fromARGB(255, 31, 31, 41)
                                ]
                            )
                        ),
                        width: MediaQuery.of(context).size.width *.28,
                        height: 120.0,
                        child: Image.asset('assets/smartphone.png',
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.10,
                        width: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xff3A3A4D),
                                  Color.fromARGB(255, 31, 31, 41)
                                ]
                            )
                        ),
                        width: MediaQuery.of(context).size.width *.28,
                        height: 120.0,
                        child: Image.asset('assets/data.png',
                        ),
                      ),
                    ],
                  ),




                  Row(
                    children: [
                      Text("Recent Reports"),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                    width: 4,
                  ),

    ListView.builder(
    shrinkWrap: true,
    itemCount:2,
    itemBuilder: (BuildContext context,int index){
    return Container(
    height:60 ,
    width:30 ,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.start,

      children: [
        CircleAvatar(
        backgroundImage: AssetImage('assets/blue.jpg'),
        radius:20,

        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.01,
          width: 10,
        ),

        Column(

          children: [
            Row(
              children: [
                 Container(
                     child: Text("Online Reporting")
                 ),



                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: 20,
                ),


                Container(
                    child: Text("Instagram")
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                  width: 30,
                ),
                Text("Suspect"),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.02,
                      width: 10,
                    ),




                  ],

                ),


              ],

              
            )
          ],
        ),


        SizedBox(
          height: MediaQuery.of(context).size.height * 0.20,
          width: 10,
        ),

      ],
    ),

    );
    },
    ),


    ]
              ),
            ),
            //
          ],

        ),

        //   SizedBox(
        // height: MediaQuery.of(context).size.height * 0.01,
        // width: 2,
        //   ),

        //   SizedBox(
        // height: MediaQuery.of(context).size.height * 0.20,
        // width: 11,
        //   ),
        //      SizedBox(
        // height: MediaQuery.of(context).size.height * 0.04,
        // width: 11,
        //   ),

        // Text("Recommended"),

      ),
      backgroundColor: Color(0xff13131D),

    );

  }
}
