import 'package:flutter/material.dart';
import 'package:flutter_baslasin/main.dart';

class Demos3 extends StatelessWidget {
  const Demos3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: BlueConstans._blueColor,
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedIconTheme:
              Theme.of(context).iconTheme.copyWith(color: Colors.black),
          unselectedIconTheme:
              Theme.of(context).iconTheme.copyWith(color: Colors.black),
          showUnselectedLabels: true,
          showSelectedLabels: true,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.task), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.currency_exchange), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Home'),
          ]),
      appBar: customBlueAppBar(),
      body: Padding(
        padding: BlueConstans._appBarpadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            jeniferText(context),
            morningText(context),
            const SizedBox(height: 15),
            customSearchTextField(),
            const SizedBox(height: 15),
            customCard(context),
            const SizedBox(height: 15),
            customOnGoingTab(context),
            const SizedBox(height: 15),
            Row(
              children: [
                customBlueBigCard(context),
                const Spacer(),
                customBlueBigCard(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Card customBlueBigCard(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            cardFirstRow(context),
            const SizedBox(height: 5),
            cardSecondRow(context),
            const SizedBox(height: 15),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 20,
                ),
                const Text(
                  BlueConstans._cardProgress,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Container(
                  width: 120,
                ),
                const Text(BlueConstans._cardPercentage,
                    style: TextStyle(color: Colors.white)),
              ],
            ),
          ],
        ),
        width: 170,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: BlueConstans._blueColor,
        ),
      ),
    );
  }

  Row cardSecondRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Icon(
          Icons.commute_sharp,
          color: Colors.white,
          size: 32,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              BlueConstans._cardRow,
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  ?.copyWith(color: Colors.white),
            ),
            Text(
              BlueConstans._cardRow2,
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(color: Colors.white, fontSize: 8),
            ),
          ],
        )
      ],
    );
  }

  Row cardFirstRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          'May 30, 2022',
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: Colors.white),
        ),
        const Icon(
          Icons.bolt_outlined,
          color: Colors.white,
        )
      ],
    );
  }

  Row customOnGoingTab(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          BlueConstans._ongoingProjects,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: BlueConstans._blueColor),
        ),
        Text(
          BlueConstans._viewAll,
          style: Theme.of(context)
              .textTheme
              .button
              ?.copyWith(color: BlueConstans()._greyColor),
        ),
      ],
    );
  }

  SizedBox customCard(BuildContext context) {
    return SizedBox(
      height: 120,
      width: 500,
      child: Card(
        color: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: const BorderSide(
                color: Color.fromARGB(255, 5, 26, 43), width: 2)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(BlueConstans._welcomeMessage,
                    style: Theme.of(context)
                        .textTheme
                        .headline6
                        ?.copyWith(color: BlueConstans._blueColor)),
                const SizedBox(height: 5),
                const Text(BlueConstans._welcomeMessage2),
              ],
            ),
            const Icon(
              Icons.computer,
              size: 96,
            )
          ],
        ),
      ),
    );
  }

  TextField customSearchTextField() {
    return TextField(
      decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          fillColor: Colors.grey[200],
          filled: true,
          label: const Text(
            BlueConstans._textFieldlabel,
            style: TextStyle(color: BlueConstans._blueColor),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(20))),
    );
  }

  Text morningText(BuildContext context) {
    return Text(
      BlueConstans._secondText,
      style: Theme.of(context)
          .textTheme
          .headline6
          ?.copyWith(color: BlueConstans()._greyColor),
    );
  }

  Text jeniferText(BuildContext context) {
    return Text(
      BlueConstans._firstText,
      style: Theme.of(context)
          .textTheme
          .headline4
          ?.copyWith(color: BlueConstans._blueColor),
    );
  }

  AppBar customBlueAppBar() {
    return AppBar(
      leading: const Icon(Icons.apps_outlined),
      title: const Text(BlueConstans._appbarTitle),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 18.0),
          child: Icon(Icons.timer_sharp),
        ),
      ],
    );
  }
}

class BlueConstans {
  static const _appbarTitle = 'Home';
  static const _firstText = 'Hi Jenifer!';
  static const _secondText = 'Good Morning';
  static const _textFieldlabel = 'Search';
  static const _appBarpadding = EdgeInsets.symmetric(horizontal: 18);
  static const _welcomeMessage = 'Welcome!';
  static const _welcomeMessage2 = "Let's schedule your\nprojects";
  static const _ongoingProjects = 'Ongoing Projects';
  static const _viewAll = 'view all';
  static const _cardRow = 'Mobile App';
  static const _cardRow2 = 'E-Commerce';
  static const _cardProgress = 'Progress';
  static const _cardPercentage = '90%';

  static const _blueColor = Color.fromARGB(255, 7, 42, 71);
  final _greyColor = Colors.grey.shade500;
}
