import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Dashboard/detailsScreen.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';
class ResturantsScreen extends StatefulWidget {
  final  name, remaing,Time, delivery,Price, image, total, rating,subTitle;
  const ResturantsScreen({Key? key,
    required this.name,required this.remaing,
    required this.Time,required this.delivery,
    required this.Price,required this.image,
    required this.total,required this.rating,
    required this.subTitle,
   }) : super(key: key);

  @override
  State<ResturantsScreen> createState() => _ResturantsScreenState();
}

class _ResturantsScreenState extends State<ResturantsScreen> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.width*1;
    return Padding(
      padding: const EdgeInsets.only(right:10),
      child: InkWell(
        onTap:(){
          Navigator.push(context,MaterialPageRoute(builder:(context)=>DetailScreen(name:widget.name,image:widget.image)));
        },
        child: Container(
          height:height*.3,
          width:width*.6,
          child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
            children:[
              Stack(
                children:[
                  ClipRRect(
                    child: Image(
                      fit:BoxFit.contain,
                        height:height*.2,image:AssetImage(widget.image)),
                    borderRadius:BorderRadius.circular(10)
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:15,),
                    child: Container(
                      decoration:BoxDecoration(color:MyColors.primaryColor,
                      borderRadius:BorderRadius.only(
                        topRight:Radius.circular(20),
                        bottomLeft:Radius.circular(20)
                      )),
                      child:Padding(
                        padding: const EdgeInsets.only(top:7,left:5,right:10,bottom:7),
                        child: Text('Flash 20% off',style:TextStyle(color:Colors.white,fontSize:10,fontWeight:FontWeight.bold,)),
                      )
                    ),
                  ),
                  Positioned(
                    bottom:0,
                    left:10,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:20),
                      child: Container(
                        decoration:BoxDecoration(color:Color(0xfffffcff),
                        borderRadius:BorderRadius.circular(20.0)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal:10,vertical:5),
                            child: Text(widget.Time,style:TextStyle(color:blackColor,fontSize:12,fontWeight:FontWeight.bold,)),
                          )),
                    ),
                  )
                ]
              ),
              SizedBox(height:5,),
              Row(
                children:[
                  Text(widget.name,style:TextStyle(color:Colors.black,fontSize:14,fontWeight:FontWeight.bold,)),

                Row(children: [
                  RatingBarIndicator(
                      rating:2.75,
                      itemCount:1,
                      itemSize:18,
                      itemBuilder: (context ,index)=>Icon(Icons.star,color:Colors.amber)),Text(""+widget.rating,style:TextStyle(color:Colors.black,fontSize:14,fontWeight:FontWeight.bold,)),
            Text("("+widget.total+")",style:TextStyle(color:Colors.black,fontSize:14,fontWeight:FontWeight.bold,)), ]
                )],),
              SizedBox(height:6),
              Text(r"$"+widget.subTitle)
            ]
          )
        ),
      ),
    );
  }
}
