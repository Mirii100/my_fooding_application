import 'package:flutter/material.dart';
import 'package:my_fooding_application/Widgets/widget_support.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: Container(
  margin: EdgeInsets.only(
    top: 50.0,left: 20,right: 20,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back_ios_new_outlined,
          color:Colors.black ,

        ),
      ),
      Image.asset("images/image1.jpg",width: MediaQuery.of(context).size.width,
     height: MediaQuery.of(context).size.height/2,fit: BoxFit.fill,
      ),
SizedBox(height: 15,),


      Row(

        children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text("foodName",style: AppWidget.semiBoldTextFieldStyle(),),
            Text("cost",style: AppWidget.boldTextFieldStyle(),),
          ],
        ),
Spacer(),
        GestureDetector(
          onTap: (){

            if(a>1){
              --a;
            }

            setState(() {

            });
          },
          child: Container
          (
            decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10),
            ),
            child:Icon(Icons.remove,color: Colors.white,) ,
          ),
        ),
SizedBox(width: 18,),
Text(a.toString(),style: AppWidget.semiBoldTextFieldStyle(),),
          SizedBox(width: 18,),
          GestureDetector(
            onTap: (){
              ++a;
              setState(() {

              });
            },
            child: Container
              (
              decoration: BoxDecoration(color: Colors.black,borderRadius: BorderRadius.circular(10),
              ),
              child:Icon(Icons.add,
                color: Colors.white,) ,
            ),
          ),
        ],
      ),
SizedBox(height: 20,),
Text("food details here ",
  style:AppWidget.lightTextFieldStyle(),
maxLines: 3,),
      SizedBox(height: 28,),

      Row(children: [
        Text("delivery time : ",style: AppWidget.lightTextFieldStyle(),),
        SizedBox(width: 5,),
        Icon(Icons.alarm,color: Colors.black54,),
        SizedBox(width: 5,),
        Text("minutes : ",style: AppWidget.semiBoldTextFieldStyle(),),
      ],
      ),
      Spacer(),

      Padding(
        padding: const EdgeInsets.only(bottom: 40,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
          Text("total price ",style: AppWidget.semiBoldTextFieldStyle(),),
          Text("\$ 10 ",style: AppWidget.boldTextFieldStyle(),),
        ],),
          Container(
            width: MediaQuery.of(context).size.width/2,

            padding: EdgeInsets.all(6),
            decoration:BoxDecoration(
              color: Colors.black,
            ) ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
              Text("add to cart ",style: TextStyle(
                color: Colors.white, fontSize: 19,
              ),),
              SizedBox(width: 30,),
              Container(
                padding: EdgeInsets.all(6),
                decoration: BoxDecoration(
                  color: Colors.grey,borderRadius: BorderRadius.circular(8),

                ),
                child: Icon(Icons.shopping_cart_outlined,color: Colors.white,
                ),
              ),
            ],),
          ),
        ]
          ,),
      )
    ],
    
  ),
),
    );
  }
}
