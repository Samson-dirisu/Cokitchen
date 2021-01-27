import 'package:Cokitchen/utilities/constants.dart';

class KitchenModel {
  final String title;
  final String description;
  final String logo;
  final String img;

  KitchenModel({this.description, this.logo, this.title, this.img});
}

List<KitchenModel> kitchenModel = [
  KitchenModel(
    title: "Jollof & Co.",
    description: "Delicious everyday Naija food \n items as low as #500",
    logo: "$assetImage/jollof-logo.png",
    img: "$assetImage/riceandchicken.png",
  ),
  KitchenModel(
    title: "Jollof & Co.",
    description: "Delicious everyday Naija food \n items as low as #500",
    logo: "$assetImage/jollof-logo.png",
    img: "$assetImage/riceandchicken.png",
  ),
  KitchenModel(
    title: "Jollof & Co.",
    description: "Delicious everyday Naija food \n items as low as #500",
    logo: "$assetImage/jollof-logo.png",
    img: "$assetImage/riceandchicken.png",
  ),
];
