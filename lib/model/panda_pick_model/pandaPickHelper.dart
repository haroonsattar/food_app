import 'package:first_app/model/panda_pick_model/pandaPickItemModel.dart';

class PandaPickHelper {

  static var statusList = [
    PandaPickItemModel( name: 'Papa Johns', deliveryPrice: '90', remaingTime: '30 min', image: "assets/pizza.jpg", ratting: '4.8', subTitle: 'New York', totalRating: '1.2k'),
    PandaPickItemModel( name: 'Honest Burgers', deliveryPrice: '50', remaingTime: '25 min', image : "assets/burger.jpg", ratting: '4.2' , subTitle : 'Burgers', totalRating: '230'),
    PandaPickItemModel( name: 'Yipin China', deliveryPrice: '600', remaingTime: '20 min', image : "assets/noodles.jpg", ratting: '2.5' , subTitle :"Pakistani", totalRating: '400'),

  ];

  static PandaPickItemModel getStatusItem(int position) {
    return statusList[position];
  }

  static var itemCount = statusList.length;

}