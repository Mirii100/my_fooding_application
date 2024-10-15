import 'package:flutter/material.dart';
import 'package:my_fooding_application/pages/login.dart';

import '../Widgets/widget_support.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Stack(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2,
            decoration: BoxDecoration(
              //used for more colors
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end:Alignment.bottomRight,

                  colors:
                  [
                    Color(0xFFff5c30),Color(0xFFe74b1a),
                  ]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:MediaQuery.of(context).size.height/3 ),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,

            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),

            ),
            child: Text("data"),
          ),

          Container(
            margin: EdgeInsets.only(top: 50,left: 20,right: 20),
            child: Column( children: [
              Center(
                child: Image.asset("images/photo.png",width: MediaQuery.of(context).size.width/12,

                  fit: BoxFit.cover,),
              ),
              SizedBox(height: 50,),
              Material(
                elevation:5 ,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,),
                  margin: EdgeInsets.only(),
                  height:MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(20),



                  ),
                  child:
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,

                    child: Column(children: [
                      SizedBox(height: 30,),

                      Text("sigh Up",style: AppWidget.headerTextFieldStyle(),),
                      TextField(
                        decoration: InputDecoration(hintText: "Email",
                          hintStyle: AppWidget.semiBoldTextFieldStyle(),
                          prefixIcon: Icon(Icons.email),),

                      ),

                      //password
                      SizedBox(height: 30,),

                      Text("password",style: AppWidget.headerTextFieldStyle(),),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "password",
                          hintStyle: AppWidget.semiBoldTextFieldStyle(),
                          prefixIcon: Icon(Icons.password_rounded),
                        ),

                      ),
                      SizedBox(height: 20,),

                      Text("name",style: AppWidget.headerTextFieldStyle(),),
                      TextField(
                        decoration: InputDecoration(hintText: "Alex",hintStyle: AppWidget.semiBoldTextFieldStyle(),prefixIcon: Icon(Icons.email),),

                      ),

                      SizedBox(height: 20,),

                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 200,
                          padding: EdgeInsets.symmetric(vertical: 10),

                          decoration: BoxDecoration(color: Color(0xffff5722),borderRadius: BorderRadius.circular(20),
                          ),
                          child:
                          Center(
                            child: Text('SIGNUP',style: TextStyle(
                              color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,

                            ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),


                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child: Text
                          ("already have an account ? Login",
                          style:AppWidget.semiBoldTextFieldStyle() ,),
                      ),
                    ],
                    ),
                  ),
                ),
              ),

            ],

            ),
          ),
        ],) ,
      ),
    );
  }
}
