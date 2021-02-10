import 'package:meta/meta.dart';
import 'model.dart';

class Story {
  User user;
  String imageUrl;
  bool isViewed;
  Story({
    @required this.imageUrl,
    @required this.user,
    this.isViewed = false,
  });
}
