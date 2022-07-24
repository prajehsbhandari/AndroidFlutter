import 'package:good_benefit/model/favourite.dart';
import 'package:hive/hive.dart';

class Boxes {
  static Box<FavouriteM> getFavourite() => Hive.box<FavouriteM>('favourite');
}
