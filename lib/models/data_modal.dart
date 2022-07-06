import 'dart:convert';

class PersonModal {
  final String id;
  final String avatar;
  final String company;
  final String department;
  final String gender;
  final String position;

//constructor
  PersonModal({
    required this.id,
    required this.avatar,
    required this.company,
    required this.department,
    required this.gender,
    required this.position,
  });

//i used this  function its type is PersonModal to change single or multiple data its useful for database especialy
//if we have new value left hand will be stored if not same data will be stored
  PersonModal copyWith({
    String? idd,
    String? avatarr,
    String? companyy,
    String? departmentt,
    String? genderr,
    String? positionn,
  }) {
    //right hand variables after ?? are class variables we dont need to use (this) keyword
    return PersonModal(
      id: idd ?? id,
      avatar: avatarr ?? avatar,
      company: companyy ?? company,
      department: departmentt ?? department,
      gender: genderr ?? gender,
      position: positionn ?? position,
    );
  }

//method to convert data to map
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      ' avatar': avatar,
      'company': company,
      'department': department,
      'gender': gender,
      'position': position,
    };
  }

//factory is a design pattern we have also more than 10 design factory
//personModal.fromMap() is named constructor
//create object for the class from map data
  factory PersonModal.fromMap(Map<String, dynamic> map) {
    return PersonModal(
      id: map['id'],
      avatar: map['avatar'],
      company: map['company'],
      department: map['department'],
      gender: map['id'],
      position: map['id'],
    );
  }

  //convert your data to json
  //i used toMap() method above cause i turned data to map then i will change to json
  //this methdd its type is String because encode() method return String type
  String tojson() {
    return json.encode(toMap());
  }

  //the data you want to read from an API is of type of json most of the times
  // to read it from json we use this named constructor
  factory PersonModal.fromJson(String source) {
    //this is named constructor defined above
    return PersonModal.fromMap(json.decode(source));
  }
}
