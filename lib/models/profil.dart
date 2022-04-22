class Profil {
  int? id;
  String? username;
  String? fullname;
  String? email;
  String? phone;
  String? avatar;

  Profil(
      {required this.id,
      required this.username,
      required this.fullname,
      required this.email,
      required this.phone,
      required this.avatar});

  Profil.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    fullname = json['fullname'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['username'] = username;
    data['fullname'] = fullname;
    data['email'] = email;
    data['phone'] = phone;
    data['avatar'] = avatar;
    return data;
  }
}
