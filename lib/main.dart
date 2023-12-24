import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Locations for Vacation';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(appTitle),
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              ImageSection(image: 'images/lakev.jpeg'),
              TitleSection(
                name: 'Lake Victoria',
                location: 'Kisumu, Kenya',
              ),
              ButtonSection(),
              TextSection(
                  description:
                      'Lake Victoria, located in East Africa, is the world\'s largest tropical lake by surface area, spanning 26,828 square miles. '
                      'This vast water body is renowned for its rich biodiversity and offers visitors a myriad of activities to explore and enjoy. '
                      'Fishing enthusiasts can partake in exciting expeditions, aiming for prized catches like the Nile perch. '
                      'For a more leisurely experience, serene boat cruises allow travelers to admire the scenic beauty and tranquil ambiance of the lake. '
                      'Bustling fishing villages along the shores provide cultural immersion, showcasing local traditions and vibrant markets. '
                      'Nature lovers can engage in birdwatching, spotting various avian species that inhabit the lake\'s lush surroundings. '
                      'Furthermore, cultural tours offer insights into the region\'s heritage, allowing visitors to connect with local communities and traditions. '
                      'In essence, Lake Victoria captivates with its natural splendor and diverse array of experiences, making it a must-visit destination for travelers.'
                      ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
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
                  style: TextStyle(color: Colors.orange[200]),
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

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: 800,
      height: 240,
      fit: BoxFit.cover,
    );
  }
}

class ButtonSection extends StatelessWidget {
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

class TextSection extends StatelessWidget {
  const TextSection({
    super.key,
    required this.description,
  });

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(
        description,
        softWrap: true,
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText(
      {super.key,
      required this.color,
      required this.icon,
      required this.label});

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
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
