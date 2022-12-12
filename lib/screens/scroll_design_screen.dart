import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  final boxDecoration = const BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0.5,
          0.5,
        ],
        colors: [
          Color(0xff74e9cc),
          Color(0xff50c2dc),
        ]),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: boxDecoration,
        child: PageView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          children: [_Page1(), _Page2()],
        ),
      ),
    );
  }
}

class _Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: const Color(0xff50c2dc),
      child: Center(
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: const Color(0xff0098fa),
              shape: const StadiumBorder()),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
            child: Text(
              'Bienvenidos',
              style: TextStyle(
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [_Background(), _Text()],
    );
  }
}

class _Text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 60, color: Colors.white, fontWeight: FontWeight.bold);

    return Container(
      margin: const EdgeInsets.only(top: 100),
      width: double.infinity,
      // color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Text('11°', style: textStyle),
          Text('Miercoles', style: textStyle),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.white,
            size: 200,
          )
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
        height: size.height,
        color: const Color(0xff50c2dc),
        alignment: Alignment.topCenter,
        child: const Image(image: AssetImage('assets/scroll.png')));
  }
}
