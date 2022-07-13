import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: customAppBar(context),
      body: Center(
        child: Column(
          children: [
            ProjectTextFiled(),
            Spacer(),
            ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 15,
              itemBuilder: (context, index) {
                return Card(
                  child: SizedBox(
                    width: 50,
                    child: Container(
                      color: Colors.red,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar customAppBar(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    ProjectConstans.appBarTitleUp,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: Colors.grey),
                  ),
                  Icon(
                    Icons.back_hand,
                    color: Colors.amber.shade200,
                  )
                ],
              ),
              Text(
                ProjectConstans.appBarTitleDown,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 238, 195, 157)),
              child: IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    'assets/bell.png',
                    color: Colors.white,
                    height: 20,
                  )),
            ),
          )
        ],
      ),
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: Colors.lime.shade200,
        child: SizedBox(
            height: 45, width: 45, child: Image.asset('assets/man.png')),
      ),
    );
  }
}

class ProjectTextFiled extends StatelessWidget {
  const ProjectTextFiled({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 30.0),
      child: TextField(
        scrollPadding: EdgeInsets.all(100),
        decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 20),
            border: InputBorder.none,
            //focusedBorder: OutlineInputBorder(),
            filled: true,
            fillColor: Colors.white,
            focusColor: Colors.white,
            prefixIcon: Icon(
              Icons.search,
              color: Color.fromARGB(255, 214, 139, 77),
            ),
            //enabledBorder: OutlineInputBorder(),
            hintText: ProjectConstans.textLabel,
            hintStyle: TextStyle(color: Colors.grey),
            suffixIcon: Icon(Icons.format_align_justify, color: Colors.grey)),
      ),
    );
  }
}

class ProjectConstans {
  static const String appBarTitleUp = 'Welcome Back';
  static const String appBarTitleDown = 'Ronald Richards';
  static const String textLabel = 'Discover a city';
}
