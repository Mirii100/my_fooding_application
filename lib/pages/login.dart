import 'package:flutter/material.dart';
import 'package:my_fooding_application/Widgets/widget_support.dart';
import 'package:my_fooding_application/pages/signup.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            height: MediaQuery.of(context).size.height/2,
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
                child: Image.asset("images/photo.png",width: MediaQuery.of(context).size.width/11,

                fit: BoxFit.cover,),
              ),
              SizedBox(height: 50,),
              Material(
                elevation:5 ,
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  padding: EdgeInsets.only(left: 20,right: 20,),
                  margin: EdgeInsets.only(),
                  height:MediaQuery.of(context).size.height/2,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(
                    color: Colors.white,borderRadius: BorderRadius.circular(20),



                  ),
                  child:
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(children: [
                      SizedBox(height: 30,),

                    Text("login",style: AppWidget.headerTextFieldStyle(),),
                      TextField(
                    decoration: InputDecoration(hintText: "Email",
                      hintStyle: AppWidget.semiBoldTextFieldStyle(),prefixIcon: Icon(Icons.email),),

                      ),

                      //password
                      SizedBox(height: 30,),

                      Text("password",style: AppWidget.headerTextFieldStyle(),),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(hintText: "password",
                          hintStyle: AppWidget.semiBoldTextFieldStyle(),prefixIcon: Icon(Icons.password_rounded),
                        ),

                      ),
                      SizedBox(height: 20,),


                      Container(
                        alignment: Alignment.topRight,
                          child: Text("forgot passord ?",
                            style: AppWidget.semiBoldTextFieldStyle(),),
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
                            child: Text('LOGIN',style: TextStyle(
                            color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold,

                                                ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 50,),

                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                        },
                        child: Text("don't have an account ? sigup",
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
