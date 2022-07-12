// // Generated by https://quicktype.io
// // To parse this JSON data, do
// //
// //     final property = propertyFromJson(jsonString);

// import 'dart:convert';

// Property propertyFromJson(String str) => Property.fromJson(json.decode(str));

// String propertyToJson(Property data) => json.encode(data.toJson());

// class Property {
//     Property({
//         this.status,
//         this.message,
//         this.data,
//     });

//     bool status;
//     String message;
//     List<Datum> data;

//     factory Property.fromJson(Map<String, dynamic> json) => Property(
//         status: json["status"],
//         message: json["message"],
//         data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
//     );

//     Map<String, dynamic> toJson() => {
//         "status": status,
//         "message": message,
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//     };
// }

// class Datum {
//     Datum({
//         this.slug,
//         this.propertyName,
//         this.propertyImage,
//         this.propertyCategory,
//         this.propertyPrice,
//         this.state,
//         this.lga,
//         this.street,
//         this.noBedrooms,
//         this.noBathrooms,
//         this.garageSize,
//         this.ammentities,
//         this.youtubeLink,
//         this.description,
//         this.dataAdded,
//         this.userData,
//     });

//     String slug;
//     String propertyName;
//     String propertyImage;
//     PropertyCategory propertyCategory;
//     String propertyPrice;
//     State state;
//     String lga;
//     String street;
//     String noBedrooms;
//     String noBathrooms;
//     String garageSize;
//     dynamic ammentities;
//     String youtubeLink;
//     String description;
//     String dataAdded;
//     UserData userData;

//     factory Datum.fromJson(Map<String, dynamic> json) => Datum(
//         slug: json["slug"],
//         propertyName: json["property_name"],
//         propertyImage: json["property_image"],
//         propertyCategory: propertyCategoryValues.map[json["property_category"]],
//         propertyPrice: json["property_price"],
//         state: stateValues.map[json["state"]],
//         lga: json["lga"],
//         street: json["street"],
//         noBedrooms: json["no_bedrooms"],
//         noBathrooms: json["no_bathrooms"],
//         garageSize: json["garage_size"],
//         ammentities: json["ammentities"],
//         youtubeLink: json["youtube_link"],
//         description: json["description"],
//         dataAdded: json["data_added"],
//         userData: UserData.fromJson(json["user_data"]),
//     );

//     Map<String, dynamic> toJson() => {
//         "slug": slug,
//         "property_name": propertyName,
//         "property_image": propertyImage,
//         "property_category": propertyCategoryValues.reverse[propertyCategory],
//         "property_price": propertyPrice,
//         "state": stateValues.reverse[state],
//         "lga": lga,
//         "street": street,
//         "no_bedrooms": noBedrooms,
//         "no_bathrooms": noBathrooms,
//         "garage_size": garageSize,
//         "ammentities": ammentities,
//         "youtube_link": youtubeLink,
//         "description": description,
//         "data_added": dataAdded,
//         "user_data": userData.toJson(),
//     };
// }

// enum Ammentity { AMMENITIES_N_A, GENERATOR, LIGHT, GENERATO }

// final ammentityValues = EnumValues({
//     "Ammenities N/A": Ammentity.AMMENITIES_N_A,
//     "generato": Ammentity.GENERATO,
//     "generator": Ammentity.GENERATOR,
//     "light": Ammentity.LIGHT
// });

// enum PropertyCategory { SALE, RENT }

// final propertyCategoryValues = EnumValues({
//     "rent": PropertyCategory.RENT,
//     "sale": PropertyCategory.SALE
// });

// enum State { EBONYI, ENUGU, LAGOS, ABUJA, PORT_HARCOURT }

// final stateValues = EnumValues({
//     "Abuja": State.ABUJA,
//     "ebonyi": State.EBONYI,
//     "Enugu": State.ENUGU,
//     "Lagos": State.LAGOS,
//     "Port-Harcourt": State.PORT_HARCOURT
// });

// class UserData {
//     UserData({
//         this.photo,
//         this.username,
//     });

//     Photo photo;
//     Username username;

//     factory UserData.fromJson(Map<String, dynamic> json) => UserData(
//         photo: photoValues.map[json["photo"]],
//         username: usernameValues.map[json["username"]],
//     );

//     Map<String, dynamic> toJson() => {
//         "photo": photoValues.reverse[photo],
//         "username": usernameValues.reverse[username],
//     };
// }

// enum Photo { THE_08083664431, EMPTY, THE_08110048369, THE_090456784657 }

// final photoValues = EnumValues({
//     "": Photo.EMPTY,
//     "08083664431": Photo.THE_08083664431,
//     "08110048369": Photo.THE_08110048369,
//     "090456784657": Photo.THE_090456784657
// });

// enum Username { LEGASON, EPHRAIM1234, SUAREZ190, SANTOS1224, SANTOS1221 }

// final usernameValues = EnumValues({
//     "ephraim1234": Username.EPHRAIM1234,
//     "Legason": Username.LEGASON,
//     "santos1221": Username.SANTOS1221,
//     "santos1224": Username.SANTOS1224,
//     "suarez190": Username.SUAREZ190
// });

// class EnumValues<T> {
//     Map<String, T> map;
//     Map<T, String> reverseMap;

//     EnumValues(this.map);

//     Map<T, String> get reverse {
//         if (reverseMap == null) {
//             reverseMap = map.map((k, v) => new MapEntry(v, k));
//         }
//         return reverseMap;
//     }
// }
