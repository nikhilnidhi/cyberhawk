import 'package:flutter/material.dart';
import 'package:untitled2/ui/Page.dart';

class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}

class _SignState extends State<Sign> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:  Column(
        children: [
        Row(
        children: [
          Image.asset(
          'assets/hawwk.png',

        ),
      Text("CYBERHAWK",style: TextStyle(fontSize: 30)),
      ],

    ),

    ],

    ),

        ),

     body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

      Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(3.0),
            child: TextField(


              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffEEA02C)),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),

                labelText: "phone",
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: MediaQuery.of(context).size.height * 0.03,
        width: 3,
      ),

      TextField(

        style: TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold),
        decoration: const InputDecoration(
          prefixIcon: Icon(Icons.lock),

          labelText: "Password",
          border: OutlineInputBorder(),
        ),
      ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
                width: 3,
              ),
    TextField(

    style: TextStyle(
    fontSize: 20,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold),
    decoration: const InputDecoration(
    prefixIcon: Icon(Icons.lock),

    labelText: "role",
    border: OutlineInputBorder(),
    ),
    ),
               SizedBox(
                 height: 10,

               ),
               MaterialButton(onPressed:(){ Navigator.push(context,
     MaterialPageRoute(builder: (context) => Page1()));
   },
               ),

]
    ),

    ),

    );
  }
}
