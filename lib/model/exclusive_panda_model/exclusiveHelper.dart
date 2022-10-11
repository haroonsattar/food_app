import 'package:first_app/model/exclusive_panda_model/exclusive_item_model.dart';

class ExclusiveHelper {

  static var exclusiveListModel = [
    ExclusiveItemModel( name: 'Crème', deliveryPrice: 'Free Delivery', remainingTime: '15 min', image: "assets/cake.jpg", totalRating: '300', subtitle: 'Bakery', rating: '4.3'),
    ExclusiveItemModel( name: 'Curlys cooking', deliveryPrice: '50', remainingTime: '35 min', image: "assets/chicken.jpg", totalRating: '400', subtitle: 'Burgers', rating: '4.7'),
    ExclusiveItemModel( name: 'Yauatcha Soho', deliveryPrice: '600', remainingTime: '20 min', image: "assets/chinese.jpg", totalRating: '560', subtitle: 'Chinese', rating: '2.3'),

  ];

  static ExclusiveItemModel getStatusItem(int position) {
    return exclusiveListModel[position];
  }

  static var itemCount = exclusiveListModel.length;

}