class Galery {
  String? caption;
  String? thumbnail;
  String? image;

  Galery({required this.caption, required this.thumbnail, required this.image});

  Galery.fromJson(Map<String, dynamic> json) {
    caption = json['caption'];
    thumbnail = json['thumbnail'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['caption'] = caption;
    data['thumbnail'] = thumbnail;
    data['image'] = image;
    return data;
  }
}
