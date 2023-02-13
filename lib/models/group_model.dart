class GroupModel {
  final String? title;
  final String? numOfMembers;
  final String? image;

  GroupModel({this.title, this.numOfMembers, this.image});

  factory GroupModel.fromJson(Map<String, dynamic> json) {
    return GroupModel(
        title: json['title'],
        numOfMembers: json['numOfMembers'],
        image: json['image']);
  }
}
