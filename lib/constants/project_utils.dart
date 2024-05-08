class Projectutils{
  final String title;
  final String subtitle;
  final String image;
  final String? androidlink;
  final String? ioslink;
  final String? weblink;


Projectutils({
  required this.title,
  required this.subtitle,
  required this.image,
  required this.androidlink,
  required this.ioslink,
  required this.weblink
});
}

List<Projectutils> workprojects = [
  Projectutils(
    title: "Instagram Colne", 
    subtitle: "Developed an Instagram-inspired app, leveraging my expertise in mobile app development and social media interfaces.", 
    image: "images/projects/insta.webp", 
    androidlink: "androidlink", 
    ioslink: "ioslink", 
    weblink: "weblink"
  ),

   Projectutils(
    title: "Quiz app", 
    subtitle: "Developed an engaging quiz application, where learning meets fun, aiming to spark curiosity and knowledge retention.", 
    image: "images/projects/quiz.jpeg", 
    androidlink: "androidlink", 
    ioslink: "ioslink", 
    weblink: "weblink"
  ),
  
     Projectutils(
    title: "Instagram Colne", 
    subtitle: "Developed an Instagram-inspired app, leveraging my expertise in mobile app development and social media interfaces.", 
    image: "images/projects/insta_clone.jpeg", 
    androidlink: "androidlink", 
    ioslink: "ioslink", 
    weblink: "weblink"
  ),

];