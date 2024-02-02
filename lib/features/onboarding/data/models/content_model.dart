class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
      title: 'Welcome',
      image: 'assets/images/Astronaut suit-pana (1) 1.png',
      discription: "Are you ready to explore the space?"
  ),
  UnbordingContent(
      title: 'Explore',
      image: 'assets/images/Alien science-bro 1.png',
      discription: "Explore celestial bodies above you!"
  ),
  UnbordingContent(
      title: 'Tracking',
      image: 'assets/images/To the stars-cuate 1.png',
      discription: "Know rare actions and track them!"
  ),
  UnbordingContent(
      title: 'Virtual-Reality',
      image: 'assets/images/Virtual reality-bro 1.png',
      discription: "Get a whole space flight journey!"
  ),
];