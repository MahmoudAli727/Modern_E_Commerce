import 'package:hive/hive.dart';

part 'model.g.dart';

@HiveType(typeId: 0)
class NewArraival extends HiveObject {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? imagePath;
  @HiveField(2)
  String? price;
  @HiveField(3)
  String? category;
  @HiveField(4)
  String? subCategory;
  @HiveField(5)
  String? description;
  @HiveField(6)
  List<String>? listOfSize;
  @HiveField(7)
  List<String>? listOfImages;
  @HiveField(8)
  String? pId;

  NewArraival({
    this.name,
    this.imagePath,
    this.price,
    this.category,
    this.subCategory,
    this.description,
    this.listOfSize,
    this.listOfImages,
    this.pId,
  });
}
