class SliderModel {
  final String id;
  final String categoryID;
  final String photo;
  final String nameManufacturer;
  final String linkPhoto;
  SliderModel({
    required this.id,
    required this.categoryID,
    required this.photo,
    required this.nameManufacturer,
    required this.linkPhoto,
  });

  factory SliderModel.fromJson(Map<String, dynamic> json) {
    return SliderModel(
      id: json["id"],
      categoryID: json["categoryID"],
      photo: json["photo"],
      nameManufacturer: json["nameManufacturer"],
      linkPhoto: json["linkPhoto"],
    );
  }
  static List<SliderModel> listModels(List jsonMap) {
    return List<SliderModel>.from(
      jsonMap.map((item) => SliderModel.fromJson(item)),
    );
  }

  static get Error => SliderModel(
      id: '', categoryID: '', photo: '', nameManufacturer: '', linkPhoto: '');
}
