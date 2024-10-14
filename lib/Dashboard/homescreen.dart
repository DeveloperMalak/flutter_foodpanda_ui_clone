import 'package:ecommerce_ui/components/resturants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
// import 'package:instagram_clone/compnents/restuarent.dart';
// import 'package:instagram_clone/constats/color.dart';
// import 'package:instagram_clone/constats/constants.dart';
// import 'package:instagram_clone/dashboard/detail_screen.dart';
// import 'package:instagram_clone/model/exclusive_panda_model/exclusiveHelper.dart';
// import 'package:instagram_clone/model/exclusive_panda_model/exclusive_item_model.dart';
// import 'package:instagram_clone/model/panda_pick_model/pandaPickHelper.dart';
// import 'package:instagram_clone/model/panda_pick_model/pandaPickItemModel.dart';

import '../Models/exclusive_panda_model/exclusive_helper.dart';
import '../Models/exclusive_panda_model/exclusive_item_model.dart';
import '../Models/panda_pick_model/pandapickHelper.dart';
import '../Models/panda_pick_model/pandapickitemModel.dart';
import '../constants/colors.dart';
import '../constants/constants.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'Search for restaurant,cuisones, and dishes');
  }

  @override
  Widget build(BuildContext context) {
    final height  = MediaQuery.of(context).size.height * 1 ;
    final width  = MediaQuery.of(context).size.width * 1 ;

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15 , vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Panda Pick' , style: TextStyle(color: Color(0xff323232) , fontSize: 15, fontFamily: Bold),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .278,
                  child: ListView.builder(
                      itemCount: PandaPickHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        PandaPickItemModel model = PandaPickHelper.getStatusItem(index);
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
                      }),
                ),
              ),
              Text('Panda exclusives' , style: TextStyle(color: Color(0xff323232) , fontSize: 15, fontFamily: Bold),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  height: MediaQuery.of(context).size.height * .278,
                  child: ListView.builder(
                      itemCount: ExclusiveHelper.itemCount,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index){
                        ExclusiveItemModel model = ExclusiveHelper.getStatusItem(index);
                        return ResturantsScreen(
                            name:model.name,
                            remaing:model.totalRating,
                            Time:model.remaingTime,
                            delivery:model.deliveryPrice,
                            Price:model.totalRating,
                            image:model.image,
                            total:model.totalRating,
                            rating:model.rating,
                            subTitle:model.subTitle
                        );
                      }),
                ),
              ),
              Text('All Restuarent' , style: TextStyle(color: Color(0xff323232) , fontSize: 15, fontFamily: Bold),),

              Container(
                height: height * .3,
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListView.builder(
                    itemCount: ExclusiveHelper.itemCount,
                    scrollDirection: Axis.horizontal,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      ExclusiveItemModel model = ExclusiveHelper.getStatusItem(index);
                      return ResturantsScreen(
                          name:model.name,
                          remaing:model.totalRating,
                          Time:model.remaingTime,
                          delivery:model.deliveryPrice,
                          Price:model.totalRating,
                          image:model.image,
                          total:model.totalRating,
                          rating:model.rating,
                          subTitle:model.subTitle
                      );
                    }),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}