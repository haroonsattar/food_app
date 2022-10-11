import 'package:first_app/components/restaurant.dart';
import 'package:first_app/constants/color.dart';
import 'package:first_app/constants/constants.dart';
import 'package:first_app/dashboard/home_screen.dart';
import 'package:first_app/model/panda_pick_model/pandaPickHelper.dart';
import 'package:first_app/model/panda_pick_model/pandaPickItemModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      appBar: AppBar(title: Text('London'),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Row(
          children:  [
         Expanded(child: CupertinoTextField(
           padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
           placeholder: 'Search for shop & resturants',
           prefix: Padding(
             padding: EdgeInsets.only(left: 12),
             child: Icon(Icons.search , color: Color(0xff7b7b7b),),
           ),
           style: TextStyle(color: Color(0xff707070),
           fontSize: 12, fontFamily: Regular),
           decoration: BoxDecoration(
             color: Color(0xfff7f7f7),
             borderRadius: BorderRadius.circular(50.0)
           ),
         ))
          ],
        ),
      ),
      actions: const [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Icon(Icons.shopping_bag_outlined),
        )
      ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
          const  DrawerHeader (
                decoration: BoxDecoration(
                  color: MyColors.primaryColor
                ),
                child: CircleAvatar( radius: 24,
              backgroundImage: NetworkImage('https://scontent.fisb1-2.fna.fbcdn.net/v/t1.6435-9/82493923_2611061922448894_4082044416854851584_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=174925&_nc_eui2=AeHStJ6_MPJbq1YugVs4iQh6B8o-jfKdh9YHyj6N8p2H1nNb2Fu8pmBevlvrTJ8zyGZ-2IJC424q0fmahyBK8USy&_nc_ohc=qBfk9CfjVS4AX_W31LI&_nc_ht=scontent.fisb1-2.fna&oh=00_AT9PNgtuK9-yvlmNVdIVdvIXjIvp2HD_YEURmwwhzWhC8g&oe=634CD492'),
            )),
            ListTile(
              title: Text('Settings', style: TextStyle(fontFamily: Medium , color: Colors.black),),
              leading: Icon(Icons.settings_outlined),
            ),
            ListTile(
              title: Text('Help', style: TextStyle(fontFamily: Medium , color: Colors.black),),
              leading: Icon(Icons.help_outline),
            ),
            ListTile(
              title: Text('More', style: TextStyle(fontFamily: Medium , color: Colors.black),),
              leading: Icon(Icons.more_horiz),
            ),
            ListTile(
              title: Text('Sign up or Log in', style: TextStyle(fontFamily: Medium , color: Colors.black),),
              leading: Icon(Icons.login_outlined),
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
            child: Container(
              height: height * .18,
              width: double.infinity,
              decoration: BoxDecoration(
                color: MyColors.primaryColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Image(
                      fit: BoxFit.fitWidth,
                      width: double.infinity,
                      image: NetworkImage('https://wallpaperaccess.com/full/2567134.jpg')
                  ),
                  Padding(padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('Food delivery' ,
                          style: TextStyle(color: Colors.white , fontFamily: Bold, fontSize: 18),),
              Text('Order from your favourite\nResturant and Home Chefs' ,
                style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500,height: 1, fontFamily: Medium, fontSize: 14 )),

                    ],
                  ),
                  )
                ],
              ),
            ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                children: [
                  Expanded(
                    flex: 1,
                      child:  Container(
                        height: height * .25,
                        decoration: BoxDecoration(
                           color: Color(0xfffed271),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Padding(
                       padding: const EdgeInsets.all(10.0),
                    child: Stack(
                      alignment: Alignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: AssetImage('assets/pandamart.jpg'),
                        ),
                      Positioned(
                          bottom: 15,
                          left: 0,
                          child:   Text('Mart' , style: TextStyle(color: blackColor , fontFamily: Bold , fontSize: 18),)
                      ),
                        Positioned(
                            bottom: 0,
                            left: 0,
                            child:   Text('Mart20 for 20% off' , style: TextStyle(color: blackColor , fontWeight: FontWeight.w500, fontFamily: Medium , fontSize: 14),)
                        ),
                      ],
                    ),
                        ),
                    )
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                      child: Column(
                        children: [
                          Container(
                        height: height * .15,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0xffef9fc4),
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                              image: AssetImage('assets/food.jpg')
                          )
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Lift-up' , style: TextStyle(color: Colors.white , fontFamily: Bold, fontSize: 18),),
                            Text('Upto 50% off' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500 ,height:1 , fontFamily: Medium, fontSize: 14  )),
                          ],
                        ),
                      ),
                  ),
                          SizedBox(height: 5,),
                          Container(
                            height: height * .1,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Color(0xff85bfff),
                                borderRadius: BorderRadius.circular(10),

                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Shops' , style: TextStyle(color: blackColor , fontFamily: Bold, fontSize: 18),),
                                  Text('Everyday needs' , style: TextStyle(color: blackColor , fontWeight: FontWeight.w500 ,height:1 , fontFamily: Medium, fontSize: 14  )),
                                ],
                              ),
                            ),
                          ),
                        ],
                  ),
                  ),
                ],
            )
            ),
            Text('Mouth-Watering Deals' , style: TextStyle(color: blackColor , fontSize: 15 , fontFamily: Bold),),
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 10),
           child: Container(
           height: height * .278,
           child: ListView.builder(
               itemCount: PandaPickHelper.itemCount,
               scrollDirection: Axis.horizontal,
               itemBuilder: (context, index){
                 PandaPickItemModel model = PandaPickHelper.getStatusItem(index);
                 return RestaurentScreen(
                   name: model.name,
                   image:model.image ,
                   remainingTime: model.remaingTime,
                   totalRating: model.totalRating,
                   subTitle: model.subTitle,
                   rating: model.ratting,
                   deliveryTime: model.remaingTime, deliveryPrice: model.deliveryPrice,
             );
           }),
         ),
         ),
          ],
        ),
      ),
      ),
    );
  }
}
