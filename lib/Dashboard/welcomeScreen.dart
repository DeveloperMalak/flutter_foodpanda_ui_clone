import 'package:ecommerce_ui/Models/panda_pick_model/pandapickHelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Models/panda_pick_model/pandapickitemModel.dart';
import '../components/resturants.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';
import 'homescreen.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
//lets start form here
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height*1;
    final width=MediaQuery.of(context).size.height*1;
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
          title:Text('New York City'),
        bottom:PreferredSize(
          preferredSize: Size.fromHeight(40),
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal:15,vertical:15),
            child: Row(
              children:[
                Expanded(
                  child:CupertinoTextField(
                  padding:EdgeInsets.symmetric(vertical:13,horizontal:10),
                    placeholder:'search for shop & Resturants',
                    prefix:Icon(Icons.search,color:Color(0xff7b7b7b)),
                    decoration:BoxDecoration(
                      color:Color(0xfff7f7f7),
                      borderRadius:BorderRadius.circular(50.0)
                    ),
                    style:TextStyle(fontSize: 12,fontFamily: Regular,
                    color:Color(0xff707070))
                  ),

                )
              ]
            ),
          )
        ),
        actions:[
          Padding(
            padding: EdgeInsets.symmetric(horizontal:20),
            child: Icon(Icons.shopping_bag_outlined),
          )
        ]

      ),

      drawer:Drawer(

        child:ListView(
            padding:EdgeInsets.zero,
          children:[
DrawerHeader(decoration:BoxDecoration(color:MyColors.primaryColor,),
  child:CircleAvatar(
    backgroundImage:NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0KehqXBrMLd32HsfjDoaq098WeNA0b3g_2A&s')
  )
),
            ListTile(
              title:Text('Settings',style:TextStyle(color:Colors.black,
              fontFamily:Medium)),
              leading:Icon(Icons.settings_outlined)
            ),
            ListTile(
                title:Text('help center 2',style:TextStyle(color:Colors.black,
                    fontFamily:Medium)),
                leading:Icon(Icons.help_outline)
            ),
            ListTile(
                title:Text('More',style:TextStyle(color:Colors.black,
                    fontFamily:Medium)),
                leading:Icon(Icons.more_horiz)
            ),
            ListTile(
                title:Text('login/signup',style:TextStyle(color:Colors.black,
                    fontFamily:Medium)),
                leading:Icon(Icons.login_outlined)
            )
          ]
        )
      ),
      body:SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.symmetric(vertical:15,horizontal:15),
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children:[
              ClipRRect(
                borderRadius:BorderRadius.circular(10),
                child: InkWell(
                  onTap:(){
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>HomeScreen()));
                  },
                  child: Container(
                    height:height*.18,
                    width:double.infinity,
                    decoration:BoxDecoration(
                      color:MyColors.primaryColor,
                      borderRadius:BorderRadius.circular(10),
                    ),
                    child:Stack(
                      alignment:Alignment.bottomLeft,
                      children:[
                        Image(fit:BoxFit.fitWidth,
                            width:double.infinity,
                            image:NetworkImage('https://cdn.pixabay.com/photo/2015/12/09/17/11/vegetables-1085063_960_720.jpg')
                        ),
                        Column(
                          mainAxisAlignment:MainAxisAlignment.start,
                          crossAxisAlignment:CrossAxisAlignment.start,
                          mainAxisSize:MainAxisSize.min,
                            children:[
                            Text('Food Delivery',style:TextStyle(color:Colors.white,fontSize:18,fontWeight:FontWeight.bold,))
                          ,Text('Order form your favourite \n resturants and home cheps',style:TextStyle(color:Colors.white,fontSize:16,fontWeight:FontWeight.w500,height:1,fontFamily: Medium))
                          ]
                        )
                      ]
                    )
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical:10),
                child: Row(
                  children:[
                       Expanded(
                         flex:1,
                         child:Container(
                           height:height *.25,
                           decoration:BoxDecoration(
                             color:Color(0xfffed271),
                             borderRadius:BorderRadius.circular(10)
                           ),
                           child:Padding(
                             padding:  EdgeInsets.all(10.0),
                             child: Stack(
                               alignment:Alignment.center,
                               children:[
                                 CircleAvatar(
                                   radius:50,
                                   backgroundImage: AssetImage(
                                     'assets/pandamart.jpg'
                                   ),
                                 ),
                                 Positioned(
                                   bottom:15,left:0,
                                     child: Text('pandamart',style:TextStyle(color:blackColor,fontWeight:FontWeight.w800,))),
                                 Positioned(
                                   bottom:0,
                                   left:0,
                                   child:Text('panda20 for 20% off',style:TextStyle(color:blackColor,fontWeight:FontWeight.w500,fontFamily:Medium,fontSize:14))
                                 )
                               ]
                             ),
                           )
                         )
                       ),
                    SizedBox(width:8),
                   Expanded(
                       child:Column(
                         children: [
                           Container(
                             height:height*.15,
                             width:double.infinity,
                             decoration:BoxDecoration(color:Color(0xffef9fc4),
                                 borderRadius:BorderRadius.circular(10),
                                 image:DecorationImage(
                                     fit:BoxFit.fill,
                                     image:AssetImage('assets/food.jpg')
                                 )),
                             child:Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: Column(
                                   mainAxisAlignment:MainAxisAlignment.end,
                                   crossAxisAlignment:CrossAxisAlignment.start,
                                   children:[
                                     Text('picup',style:TextStyle(color:Colors.black,fontSize:23,fontWeight:FontWeight.bold,)),
                                     Text('upto 50% off',style:TextStyle(color:Colors.black))
                                   ]
                               ),
                             )
                         ),
                           SizedBox(height:5),
                           Container(
                               height:height*.1,
                               width:double.infinity,
                               decoration:BoxDecoration(color:Color(0xffef9fc4),
                                   borderRadius:BorderRadius.circular(10),
                                   ),
                               child:Padding(
                                 padding: const EdgeInsets.all(10.0),
                                 child: Column(
                                     mainAxisAlignment:MainAxisAlignment.end,
                                     crossAxisAlignment:CrossAxisAlignment.start,
                                     children:[
                                       Text('Shops',style:TextStyle(color:Colors.black,fontSize:23,fontWeight:FontWeight.bold,)),
                                       Text('everyday assential',style:TextStyle(color:Colors.black,fontSize:10))
                                     ]
                                 ),
                               )
                           ),

                         ],
                       )
                   )
                  ]
                ),
              ),
              Text('your daily deals',style:TextStyle(color:blackColor,fontSize:15, )),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:10),
                child: Container(
                  height:height*.278,
                  child:ListView.builder(
                      scrollDirection:Axis.horizontal,
                      itemCount:PandaPickHelper.itemCount,
                      itemBuilder: (context,index){
                      PandaPickItemModel model=PandaPickHelper.getStatusItem(index);
                          return ResturantsScreen(
                              name:model.name,
                              remaing:model.totalRating,
                              Time:model.remaingTime,
                              delivery:model.deliveryPrice,
                              Price:model.totalRating,
                              image:model.image,
                              total:model.totalRating,
                              rating:model.ratting,
                              subTitle:model.subTitle
                           );
                      })
                ),
              )
            ]
          ),
        )
      )
    );
  }
}
