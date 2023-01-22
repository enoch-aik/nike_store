//All image assets
import 'package:nike_store/app/models/shoe.dart';
import 'package:nike_store/src/widgets/nav_icons.dart';

const String logo = 'assets/images/nike_logo.png';
const String greenShoe = 'assets/images/shoe1.png';
const String yellowShoe = 'assets/images/shoe2.png';
const String redBlueShoe = 'assets/images/shoe3.png';
const String blueShoe = 'assets/images/shoe4.png';
const String redShoe = 'assets/images/shoe5.png';
const String fullRedShoe = 'assets/images/shoe6.png';
const String whiteRedShoe = 'assets/images/shoe7.png';

//All svg assets
const String cartIcon = 'assets/svg/cart.svg';
const String drawerIcon = 'assets/svg/drawer.svg';

//all shoes
List<Shoe> allShoes = [
  Shoe(name: 'Air Max 97', price: 20.99, imageUrl: yellowShoe),
  Shoe(name: 'React Presto', price: 25.99, imageUrl: redBlueShoe),
  Shoe(name: 'React Presto', price: 25.99, imageUrl: blueShoe),
  Shoe(name: 'Air Max 270', price: 25.99, imageUrl: whiteRedShoe),
];

List navIcons = [
  BottomNavIcons.home,
  BottomNavIcons.bookmark,
  BottomNavIcons.notification,
  BottomNavIcons.user,
];
