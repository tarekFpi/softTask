class UserResponse {
  UserResponse({
      List<UserData>? data,}){
    _data = data;
}

  UserResponse.fromJson(dynamic json) {
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(UserData.fromJson(v));
      });
    }
  }
  List<UserData>? _data;

  List<UserData>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class UserData {
  UserData({
      String? date, 
      String? name, 
      String? category, 
      String? location,}){
    _date = date;
    _name = name;
    _category = category;
    _location = location;
}

  UserData.fromJson(dynamic json) {
    _date = json['date'];
    _name = json['name'];
    _category = json['category'];
    _location = json['location'];
  }
  String? _date;
  String? _name;
  String? _category;
  String? _location;

  String? get date => _date;
  String? get name => _name;
  String? get category => _category;
  String? get location => _location;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['date'] = _date;
    map['name'] = _name;
    map['category'] = _category;
    map['location'] = _location;
    return map;
  }

}