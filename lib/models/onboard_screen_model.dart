class OnBoardModel {
  final String title, disc, imagePath;

  OnBoardModel(
      {required this.title, required this.disc, required this.imagePath});
}

final List<OnBoardModel> onBoardData = [
  OnBoardModel(
      title: 'Welcome',
      disc: 'ClickChic is a store of products \nmade from natural materials.',
      imagePath: 'assets/images/bg-1.jpg'),
  OnBoardModel(
      title: 'Values',
      disc:
          'We support artisans and local brands \nthat care about the environment.',
      imagePath: 'assets/images/bg-2.jpg'),
  OnBoardModel(
      title: 'Thank you!',
      disc: 'And we are happy to share \nthese values with you.',
      imagePath: 'assets/images/bg-3.jpg'),
];
