import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Locations for the Boys';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(
                  image: 'images/lakev.jpeg'
              ),
              TitleSection(
                  name: 'Lake Victoria',
                  location: 'Kisumu, Kenya',
              ),
              ButtonSection(),
              TextSection(
                  description:
                    'Nairobi National Park is located in Kenya, just 7 kilometers south of the center of Nairobi, the capital city. It is the world\'s only wildlife capital, where you can find an abundance of wildlife against the city\'s skyscrapers in the background. '

                    'Location: Nairobi National Park is conveniently located near the city of Nairobi, making it easily accessible for both locals and tourists. '

                    'Overall, Nairobi National Park offers a unique and convenient way to experience Kenya\'s wildlife and natural beauty without venturing far from the city.'
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget{
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(50),
        child: Row(
          children: [
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      name,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ),
                    Text(
                      location,
                      style: TextStyle(
                        color: Colors.orange[200]
                      ),
                    )
                  ],
                ),
            ),
            Icon(
                Icons.star,
                color: Colors.red[200],
            ),
            const Text('82'),
          ],
        ),
    );
  }
}

class ImageSection extends StatelessWidget{
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context){
    return Image.asset(
        image,
        width: 800,
        height: 240,
        fit: BoxFit.cover,
    );
  }
}

class ButtonSection extends StatelessWidget{
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ButtonWithText(
                color: color,
                icon: Icons.call,
                label: 'CALL',
            ),
            ButtonWithText(
                color: color,
                icon: Icons.person_2,
                label: 'Profile',
            ),
            ButtonWithText(
                color: color,
                icon: Icons.book,
                label: 'Research',
            ),
          ],
      ),
    );
  }
}

class TextSection extends StatelessWidget{
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context){
    return Padding(
        padding: const EdgeInsets.all(32),
        child: Text(
          description,
          softWrap: true,
        ),
    );
  }
}

class ButtonWithText extends StatelessWidget{
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
            padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}