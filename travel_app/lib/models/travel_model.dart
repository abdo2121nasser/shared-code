class TravelModel {
  List<Data>? data;

  TravelModel({this.data});

  TravelModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? image;
  String? categoryName;
  bool? categoryColorFlage;
  List<PlaceData>? placeData;

  Data(
      {this.image, this.categoryName, this.categoryColorFlage, this.placeData});

  Data.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    categoryName = json['categoryName'];
    categoryColorFlage = json['CategoryColorFlage'];
    if (json['placeData'] != null) {
      placeData = <PlaceData>[];
      json['placeData'].forEach((v) {
        placeData!.add(new PlaceData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['categoryName'] = this.categoryName;
    data['CategoryColorFlage'] = this.categoryColorFlage;
    if (this.placeData != null) {
      data['placeData'] = this.placeData!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class PlaceData {
  String? image;
  String? placeName;
  int? price;
  String? country;

  PlaceData({this.image, this.placeName, this.price, this.country});

  PlaceData.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    placeName = json['placeName'];
    price = json['price'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['placeName'] = this.placeName;
    data['price'] = this.price;
    data['country'] = this.country;
    return data;
  }
}
