import 'package:hive/hive.dart';

import '../../domain/entities/brew.dart';

class BrewAdapter extends TypeAdapter<Brew> {
  @override
  Brew read(BinaryReader reader) {
    final description = reader.readString();
    return Brew(description);
  }

  @override
  int get typeId => 0;

  @override
  void write(BinaryWriter writer, Brew obj) {
    writer.writeString(obj.description);
  }
}
