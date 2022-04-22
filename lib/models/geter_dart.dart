class GetRespon {
  int success;
  String massage;
  Map<String, dynamic> data;

  GetRespon({required this.success, required this.massage, required this.data});

  factory GetRespon.fromJson(Map<String, dynamic> json) {
    var dat = {};
    dat.addAll(json['data']);
    return GetRespon(
      success: json['status_code'],
      data: json['data'],
      massage: json['message'],
    );
  }
}

class GetResponList {
  int success;
  String massage;
  List data;

  GetResponList(
      {required this.success, required this.massage, required this.data});

  factory GetResponList.fromJson(Map<String, dynamic> json) {
    return GetResponList(
      success: json['status_code'],
      data: json['data'],
      massage: json['message'],
    );
  }
}
