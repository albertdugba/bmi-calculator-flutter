class ImageModel {
  final String imageURL;
  final int comments;
  final String user;
  final int likes;

  ImageModel({this.imageURL, this.comments, this.user, this.likes});
}

List<ImageModel> imageData = [
  ImageModel(imageURL: 'ajshd', comments: 2, user: 'Bianca', likes: 2)
];
