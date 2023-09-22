import 'package:one_hundred_nine/core/util/app_images/app_images.dart';

Map<String,dynamic> myData={
  "data":[
    {
      "name":"BMW",
      "image":AppImages.carImage,
      "isManual":false,
      "num_of_seat":3,
      "distance":800,
      "type":"Octane",
      "time":"5"
    },
    {
      "name":"Audi",
      "image":AppImages.carImage,
      "isManual":true,
      "num_of_seat":4,
      "distance":500,
      "type":"Octane",
      "time":"5"
    }
  ]
};

class CarsModel {
  List<Data>? data;

  CarsModel({this.data});

  CarsModel.fromJson(Map<String, dynamic> json) {
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
  String? name;
  String? image;
  bool? isManual;
  int? numOfSeat;
  int? distance;
  String? type;
  String? time;

  Data(
      {this.name,
        this.image,
        this.isManual,
        this.numOfSeat,
        this.distance,
        this.type,
        this.time});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    isManual = json['isManual'];
    numOfSeat = json['num_of_seat'];
    distance = json['distance'];
    type = json['type'];
    time = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['image'] = this.image;
    data['isManual'] = this.isManual;
    data['num_of_seat'] = this.numOfSeat;
    data['distance'] = this.distance;
    data['type'] = this.type;
    data['time'] = this.time;
    return data;
  }
}