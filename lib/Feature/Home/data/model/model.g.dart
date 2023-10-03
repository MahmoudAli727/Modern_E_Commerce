// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewArraivalAdapter extends TypeAdapter<NewArraival> {
  @override
  final int typeId = 0;

  @override
  NewArraival read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewArraival(
      name: fields[0] as String?,
      imagePath: fields[1] as String?,
      price: fields[2] as String?,
      category: fields[3] as String?,
      subCategory: fields[4] as String?,
      description: fields[5] as String?,
      listOfSize: (fields[6] as List?)?.cast<String>(),
      listOfImages: (fields[7] as List?)?.cast<String>(),
      pId: fields[8] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NewArraival obj) {
    writer
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.imagePath)
      ..writeByte(2)
      ..write(obj.price)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.subCategory)
      ..writeByte(5)
      ..write(obj.description)
      ..writeByte(6)
      ..write(obj.listOfSize)
      ..writeByte(7)
      ..write(obj.listOfImages)
      ..writeByte(8)
      ..write(obj.pId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewArraivalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
