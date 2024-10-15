import 'package:flutter/material.dart';
import 'package:my_fooding_application/Widgets/widget_support.dart';
import 'package:my_fooding_application/pages/details.dart';
import 'package:my_fooding_application/pages/login.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {


  bool iceCream=false,pizza=false,salad=false,burger=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  margin: EdgeInsets.only(
    top: 50,left: 10,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,

    children: [

      // making repetative code once we call a function  boldTextFieldStyle

  Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Expanded(
        child: Text("hello Alex" ,
          style: AppWidget.boldTextFieldStyle(),
        
        ),

      ),
      Expanded(
        child: Container(
          margin: EdgeInsets.only(right:20 ),
        
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(10),),
          child: Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,),
        ),
      ),

    ],
  ),
      SizedBox(height: 30,),
      Text("our delicate meals " ,
        style: AppWidget.headerTextFieldStyle(),

      ),

      Text("discover and get great  food  " ,
        style: AppWidget.lightTextFieldStyle(),

      ),
      SizedBox(height: 20,),

Expanded(
  child: Container(
    margin: EdgeInsets.only(right: 20),
      child: showItem()),
),
     SizedBox(height: 25,),
      SingleChildScrollView(
scrollDirection: Axis.horizontal,

        child: Row(
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                    builder: (context)=>Details())
                );
              },
              child: Container(

                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),

                  child: 
                  Expanded(
                    child: Container(

                      child: Column(
                    
                    children: [
                      Image.asset("images/image1.jpeg",width: 100,height: 100,fit: BoxFit.cover,),
                      SizedBox(height: 5,),
                      Text("food name : 'favourite meal1' ",style: AppWidget.semiBoldTextFieldStyle(), ),
                      SizedBox(height: 5,),
                      Text("freshly prepared  ",style: AppWidget.lightTextFieldStyle(), ),
                    
                      Text("price :\$25 ",
                      style:AppWidget.semiBoldTextFieldStyle() ,),
                    
                    
                    
                    ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                            ),
                            ),
                  ),
                ),
                margin: EdgeInsets.all(5),
              ),
            ),
SizedBox(width: 20,),

            Container(
              margin: EdgeInsets.all(4),
              
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),

                child: Container(

                  child: Column(

                    children: [

                      ClipRect(

                          child: Image.asset("images/image22.jpeg",width: 100,height: 100,fit: BoxFit.cover,),

                      ),


                      SizedBox(height: 5,),
                      Text("food name : 'favourite meal1' ",style: AppWidget.semiBoldTextFieldStyle(), ),
                      SizedBox(height: 5,),
                      Text("freshly prepared  ",style: AppWidget.lightTextFieldStyle(), ),

                      Text("price :\$25 ",
                        style:AppWidget.semiBoldTextFieldStyle() ,),
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ),
            ),
            SizedBox(width: 20,),
            Container(
              margin: EdgeInsets.all(5),
              child: Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20),
              
                child: Container(
              
                  child: Column(
              
                    children: [
                      ClipRect(
                          child: Image.asset("images/image22.jpeg",width: 100,height: 100,fit: BoxFit.cover,)),

                      SizedBox(height: 5,),
                      Text("food name : 'favourite meal1' ",style: AppWidget.semiBoldTextFieldStyle(), ),
                      SizedBox(height: 5,),
                      Text("freshly prepared  ",style: AppWidget.lightTextFieldStyle(), ),
              
                      Text("price :\$25 ",
                        style:AppWidget.semiBoldTextFieldStyle() ,),
              
              
              
                    ],
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      SizedBox(height: 30,),
      Container(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Image.asset("images/image22.jpeg",height: 120,width: 120,
          fit: BoxFit.cover,),
        Column(children: [
          SizedBox(width: 20,),

          Container(
            margin: EdgeInsets.only(right: 15),

            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),

              child: Container(
                padding: EdgeInsets.all(5),
                // sizing with the size of the gadget

                width: MediaQuery.of(context).size.width/2,
                  child: Text("myFoodname",style: AppWidget.semiBoldTextFieldStyle(),),
              ),
            ),
          ),
SizedBox(height: 5,),
          Container(
            // sizing with the size of the gadget

            width: MediaQuery.of(context).size.width/2,
            child: Text("My details of my food ",style: AppWidget.lightTextFieldStyle(),),
          ),
          SizedBox(height: 5,),
          Container(
            // sizing with the size of the gadget

            width: MediaQuery.of(context).size.width/2,
            child: Text("cost  :\$10 ",style: AppWidget.semiBoldTextFieldStyle(),),
          ),


        ],),
      ],),
      ),






],

  ),
  
),

    );
  }
 Widget showItem(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: (){
            iceCream=true;
            burger=false;
            pizza=false;
            salad=false;

            setState(() {

            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: iceCream?Colors.black:Colors.white,
                borderRadius: BorderRadius.circular(8),

              ),
              padding: EdgeInsets.all(10),

              child: Image.asset('images/download1.jpeg',
                height: 40,width: 40,fit: BoxFit.cover,
                color:iceCream?Colors.white :Colors.black,),

            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            pizza=true;
            burger=false;
            salad=false;
            iceCream=false;
            setState(() {

            });

          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: pizza?Colors.black:Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(10),

              child: Image.asset('images/download1.jpeg',
                height: 40,width: 40,fit: BoxFit.cover,
                color:pizza?Colors.white :Colors.black,),
            ),
          ),
        ),

        GestureDetector(
          onTap: (){
            salad=true;
            burger=false;
            pizza=false;

            iceCream=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: salad ?Colors.black:Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(10),

              child: Image.asset('images/image22.jpeg',
                color:salad?Colors.white :Colors.black,height: 40,width: 40,fit: BoxFit.cover,),
            ),
          ),
        ),

        GestureDetector(

          onTap: (){
            burger=true;
            pizza=false;
            salad=false;
            iceCream=false;
            setState(() {

            });
          },
          child: Material(
            elevation: 5,
            borderRadius: BorderRadius.circular(10),
            child: Container(
              decoration: BoxDecoration(
                color: burger?Colors.black:Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: EdgeInsets.all(10),

              child: Image.asset('images/image1.jpeg',
                color:burger?Colors.white :Colors.black,
                height: 40,
                width: 40,fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );

 }
}
