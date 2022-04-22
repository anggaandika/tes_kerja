class Place {
  Header? header;
  List<Content>? content;

  Place({this.header, this.content});

  Place.fromJson(Map<String, dynamic> json) {
    header = json['header'] != null ? Header.fromJson(json['header']) : null;
    if (json['content'] != null) {
      content = <Content>[];
      json['content'].forEach((v) {
        content!.add(Content.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (header != null) {
      data['header'] = header!.toJson();
    }
    if (content != null) {
      data['content'] = content!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Header {
  String? title;
  String? subtitle;

  Header({this.title, this.subtitle});

  Header.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    subtitle = json['subtitle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['subtitle'] = subtitle;
    return data;
  }
}

class Content {
  int? id;
  String? title;
  String? content = "";
  String? type;
  String? image;
  List<String>? media;

  Content(
      {this.id, this.title, this.content, this.type, this.image, this.media});

  Content.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    content = json['content'];
    type = json['type'];
    image = json['image'];
    media = json['media'].cast<String>();
  }

  Map<String, dynamic> toJson([List<Content>? content]) {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['content'] = content;
    data['type'] = type;
    data['image'] = image;
    data['media'] = media;
    return data;
  }
}
