import 'model.dart';
import 'package:meta/meta.dart';

class Post {
  User user;
  String caption;
  String imageUrl;
  int likes;
  String timeAgo;
  int comments;
  int shares;
  Post({
    @required this.caption,
    @required this.user,
    @required this.comments,
    @required this.imageUrl,
    @required this.likes,
    @required this.timeAgo,
    @required this.shares,
  });
}
