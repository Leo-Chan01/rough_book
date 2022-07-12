import 'dart:convert';

Property propertyFromJson(String str) => Property.fromJson(json.decode(str));

String propertyToJson(Property data) => json.encode(data.toJson());

class Property {
  bool? status;
  String? message;
  List<Datum>? data;

  Property({
    this.status,
    this.message,
    this.data,
  });

  factory Property.fromJson(Map<String, dynamic> json) => Property(
        status: json["status"],
        message: json["message"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "message": message,
        "data": List<dynamic>.from(data!.map((x) => x.toJson())),
      };
}

class Datum {
  String? slug;
  String? propertyName;
  String? propertyImage;
  String? propertyCategory;
  String? propertyPrice;
  String? state;
  String? lga;
  String? street;
  String? noBedrooms;
  String? noBathrooms;
  String? garageSize;
  List<dynamic>? ammentities;
  String? youtubeLink;
  String? description;
  String? dataAdded;
  UserData? userData;

  Datum({
    this.slug,
    this.propertyName,
    this.propertyImage,
    this.propertyCategory,
    this.propertyPrice,
    this.state,
    this.lga,
    this.street,
    this.noBedrooms,
    this.noBathrooms,
    this.garageSize,
    this.ammentities,
    this.youtubeLink,
    this.description,
    this.dataAdded,
    this.userData,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        slug: json["slug"],
        propertyName: json["property_name"],
        propertyImage: json["property_image"],
        propertyCategory: json["property_category"],
        propertyPrice: json["property_price"],
        state: json["state"],
        lga: json["lga"],
        street: json["street"],
        noBedrooms: json["no_bedrooms"],
        noBathrooms: json["no_bathrooms"],
        garageSize: json["garage_size"],
        ammentities: json["ammentities"],
        youtubeLink: json["youtube_link"],
        description: json["description"],
        dataAdded: json["data_added"],
        userData: UserData.fromJson(json["user_data"]),
      );

  Map<String, dynamic> toJson() => {
        "slug": slug,
        "property_name": propertyName,
        "property_image": propertyImage,
        "property_category": propertyCategory,
        "property_price": propertyPrice,
        "state": state,
        "lga": lga,
        "street": street,
        "no_bedrooms": noBedrooms,
        "no_bathrooms": noBathrooms,
        "garage_size": garageSize,
        "ammentities": ammentities,
        "youtube_link": youtubeLink,
        "description": description,
        "data_added": dataAdded,
        "user_data": userData?.toJson(),
      };
}

class UserData {
  String? photo;
  String? username;

  UserData({
    this.photo,
    this.username,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        photo: json["photo"],
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "photo": username,
        "username": username,
      };
}
