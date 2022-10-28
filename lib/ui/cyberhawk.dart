import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:untitled2/flutter%20block/flutter_bloc.dart';
import 'package:untitled2/ui/Page9.dart';
import 'package:untitled2/ui/signin%20page.dart';


class Cyber extends StatefulWidget {
  const Cyber({Key? key}) : super(key: key);

  @override
  State<Cyber> createState() => _CyberState();
}

class _CyberState extends State<Cyber> {
  var name=TextEditingController();
  var password=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        elevation: 100,
        title: Column(
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

        backgroundColor: Colors.transparent,

      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text("LOGIN",style:TextStyle(fontSize: 40)),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(

                    controller: name,
                    style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffEEA02C)),
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.person),

                      labelText: "name",
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
              controller: password,
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

            Row(
              children: [
                MaterialButton( onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Sign()));
                },
                  child: Text(
                      "can't sign in ?"
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: 2,
            ),
            MaterialButton(
                color: Color(0xffFFB11F),
                //  height: 50,
                // minWidth: MediaQuery.of(context).size.width*.9,
                onPressed: () {
    BlocProvider.of<LoginBloc>(
    context
    ).add(VerifyPassword(name: name.text,password: password.text));
    },
    // color:Color(0xffFFB11F),
    child:BlocConsumer<LoginBloc,LoginStates>(
    listener:((context,state){
      if(state is LoginError) {
        Fluttertoast.showToast(msg: state.error.toString());
      }
      else if(state is LoginSuccess){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>Page9()));
                }
                //child:  Container(height: 50,width:MediaQuery.of(context).size.width*.85 , child: Center(child: Text("LOGIN",style: TextStyle(fontSize: 20,color: Colors.black))))
    }
    
    ), builder: (context, state) {
    if (state is Loading) {
    return CircularProgressIndicator();
    } else {
    return const Text(
    "Login",
    style: TextStyle(fontSize: 17.5),
    );
    }
    }),
            ),


          ],

        ),
      ),
    );
  }
}
