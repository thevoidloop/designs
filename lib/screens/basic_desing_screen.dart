import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [_Image(), _Header(), _ButtonSection(), _Description()],
      ),
    );
  }
}

class _Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.3,
      // color: Colors.red,
      margin: const EdgeInsets.symmetric(horizontal: 25),
      child: const Text(
        'Eiusmod non qui id ullamco laborum ea mollit aute sint in. Minim enim do do esse voluptate dolor ad. Pariatur do amet quis proident in velit anim laborum eiusmod officia magna aute irure. Exercitation veniam est nostrud laboris. Ad esse nostrud ullamco veniam exercitation. Nulla velit qui tempor fugiat do labore ea nisi nulla voluptate reprehenderit. Ut nostrud laborum cupidatat ad nulla id dolore sit nulla culpa quis quis velit nostrud. Excepteur non minim nisi mollit nostrud dolor. Reprehenderit qui excepteur eiusmod dolor. In velit pariatur irure eiusmod aliquip ad est. Adipisicing nostrud minim elit non. Consequat aliquip eu in in incididunt aliquip.',
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      // color: Colors.red,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          _Button(
            icon: Icons.call,
            description: 'CALL',
          ),
          _Button(
            icon: Icons.location_on_rounded,
            description: 'ROUTE',
          ),
          _Button(
            icon: Icons.share,
            description: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class _Button extends StatelessWidget {
  const _Button({
    Key? key,
    required this.icon,
    required this.description,
  }) : super(key: key);

  final IconData icon;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 35,
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(color: Colors.blue, fontSize: 18),
        )
      ],
    );
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.08,
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(fontSize: 18, color: Colors.black45),
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.star, color: Colors.red),
          const Text('41', style: TextStyle(fontSize: 18))
        ],
      ),
    );
  }
}

class _Image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Image(
      image: const AssetImage('assets/landscape.jpeg'),
      height: size.height * 0.35,
      fit: BoxFit.cover,
    );
  }
}
