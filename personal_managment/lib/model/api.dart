class Api {
  Data? data;

  Api({this.data});

  Api.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? allSpent;
  List<Categories>? categories;

  Data({this.allSpent, this.categories});

  Data.fromJson(Map<String, dynamic> json) {
    allSpent = json['all_spent'];
    if (json['categories'] != null) {
      categories = <Categories>[];
      json['categories'].forEach((v) {
        categories!.add(new Categories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['all_spent'] = this.allSpent;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Categories {
  String? image;
  String? name;
  int? remind;
  int? total;
  List<ListDetails>? listDetails;

  Categories(
      {this.image, this.name, this.remind, this.total, this.listDetails});

  Categories.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    name = json['name'];
    remind = json['remind'];
    total = json['total'];
    if (json['list_details'] != null) {
      listDetails = <ListDetails>[];
      json['list_details'].forEach((v) {
        listDetails!.add(new ListDetails.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['name'] = this.name;
    data['remind'] = this.remind;
    data['total'] = this.total;
    if (this.listDetails != null) {
      data['list_details'] = this.listDetails!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ListDetails {
  String? name;
  double? price;

  ListDetails({this.name, this.price});

  ListDetails.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['price'] = this.price;
    return data;
  }
}