import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Demos2 extends StatefulWidget {
  const Demos2({Key? key}) : super(key: key);

  @override
  State<Demos2> createState() => _Demos2State();
}

class _Demos2State extends State<Demos2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTextWidget(),
              SizedBox(height: 20),
              CustomTextFieldAndButtonRow(),
              SizedBox(height: 20),
              CustomTextRow(),
              SizedBox(height: 20),
              customCardContainer(),
              SizedBox(height: 10),
              SizedBox(
                height: 90,
                child: Card(
                  color: Colors.grey.shade800,
                  child: Row(
                    children: [
                      const SizedBox(
                        height: 60,
                        child: CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage('assets/cem.jpg')),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Smith Johan',
                            style: Theme.of(context)
                                .textTheme
                                .headline5
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                          ),
                          Text(
                            _ProjectConstats.cardSecondText,
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                ?.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                            size: 36,
                          ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }

  Container customCardContainer() {
    return Container(
        height: 200,
        width: 200,
        child: const CustomCard(
          textBaslik: _ProjectConstats.cardFirstText,
          cardSecondText: _ProjectConstats.cardSecondText,
        ));
  }

  AppBar customAppBar() {
    return AppBar(
      centerTitle: false,
      leading: const CircleAvatar(
          radius: 50, backgroundImage: AssetImage('assets/cem.jpg')),
      title: Row(
        children: [
          Text(
            _ProjectConstats.appBarText,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.normal),
          ),
          const Text(' ${_ProjectConstats.appBarText2}',
              style: TextStyle(fontSize: 26)),
          const Spacer(),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.swap_vert_circle_sharp,
              size: 32,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.textBaslik,
    required this.cardSecondText,
  }) : super(key: key);

  final String textBaslik;
  final String cardSecondText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Card(
            color: Colors.black54,
            shadowColor: Colors.grey[900],
            child: SizedBox(
                height: 200, width: 200, child: Image.asset('assets/book.png')),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          textBaslik,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Text(
          cardSecondText,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: Colors.black54),
        ),
      ],
    );
  }
}

class CustomTextRow extends StatelessWidget {
  const CustomTextRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          _ProjectConstats.popular,
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          ' ${_ProjectConstats.courses}',
          style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontWeight: FontWeight.normal),
        ),
      ],
    );
  }
}

class CustomTextFieldAndButtonRow extends StatelessWidget {
  const CustomTextFieldAndButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            showCursor: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide:
                        const BorderSide(width: 0, style: BorderStyle.none)),
                prefixIcon: const Icon(
                  Icons.offline_bolt,
                  color: Colors.black,
                ),
                hintText: _ProjectConstats.hintText,
                hintStyle: const TextStyle(color: Colors.black87),
                fillColor: Colors.grey.shade200,
                filled: true),
          ),
        ),
        const SizedBox(width: 20),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blue.shade300),
            child: IconButton(onPressed: () {}, icon: const Icon(Icons.waves)))
      ],
    );
  }
}

class CustomTextWidget extends StatelessWidget {
  const CustomTextWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      _ProjectConstats.firstText,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
    );
  }
}

class _ProjectConstats {
  static const String appBarText = 'Hello,';
  static const String appBarText2 = 'Smith';
  static const String firstText = 'Find your favorite course here';
  static const String hintText = 'Search';
  static const String popular = 'Popular';
  static const String courses = 'Courses';
  static const String cardFirstText = 'Acoustic Guitar';
  static const String cardSecondText = '5 Courses';
}
