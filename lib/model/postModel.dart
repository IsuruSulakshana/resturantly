class PostModel{
  String? logo;
  String? name;
  String? image;
  String? time;
  String? caption;
  String? likes;
  String? comments;
  bool liked;

  PostModel({this.logo, this.image, this.time,  this.caption, this.likes, this.comments, required this.liked,this.name});
}