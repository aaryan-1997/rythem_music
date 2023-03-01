import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Text(
          "Mode",
          style: TextStyle(fontSize: 35),
        ),
      ),
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Greet(),
                  const Date(),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const SearchField(),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How do you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        size: 30,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      EmoticonCard(
                        emoticonFace: '😔',
                        mood: 'Badly',
                      ),
                      EmoticonCard(
                        emoticonFace: '😊',
                        mood: 'Fine',
                      ),
                      EmoticonCard(
                        emoticonFace: '😁',
                        mood: 'Well',
                      ),
                      EmoticonCard(
                        emoticonFace: '😃',
                        mood: 'Excellent',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.blueAccent,
                      blurRadius: 10,
                      //offset: Offset.infinite,
                    ),
                  ],
                  color: Colors.grey.shade100,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                      35.0,
                    ),
                    topRight: Radius.circular(
                      35.0,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BottomSheetHeaderTitle(
                        titleText: 'Exercises',
                      ),
                      Expanded(
                        child: ListView(
                          //how to use ListView.builder in this?
                          children: const [
                            ExerciseTile(
                              exercise: 'Speaking Skills',
                              subExercise: '16 Exercises',
                              icon: Icons.favorite,
                              color: Colors.orange,
                            ),
                            ExerciseTile(
                              exercise: 'Reading Speed',
                              subExercise: '8 Exercises',
                              icon: Icons.person,
                              color: Colors.pink,
                            ),
                            ExerciseTile(
                              exercise: 'Speaking Skills',
                              subExercise: '16 Exercises',
                              icon: Icons.umbrella,
                              color: Colors.red,
                            ),
                            ExerciseTile(
                              exercise: 'Speaking Skills',
                              subExercise: '16 Exercises',
                              icon: Icons.book,
                              color: Colors.yellow,
                            ),
                            ExerciseTile(
                              exercise: 'Speaking Skills',
                              subExercise: '16 Exercises',
                              icon: Icons.music_note,
                              color: Colors.pink,
                            ),
                            ExerciseTile(
                              exercise: 'Speaking Skills',
                              subExercise: '16 Exercises',
                              icon: Icons.mobile_friendly,
                              color: Colors.green,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Date extends StatelessWidget {
  const Date({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      DateTime.now().toString(),
      style: TextStyle(
        color: Colors.blue[200],
        fontSize: 17.0,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}

class Greet extends StatelessWidget {
  const Greet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const[
        Text(
          'Hi, Jared! {state.mood}',
        ),
         NotificationIcon()
      ],
    );
  }
}

class NotificationIcon extends StatelessWidget {
  const NotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        15.0,
      ),
      decoration: BoxDecoration(
          color: Colors.blue[600],
          borderRadius: const BorderRadius.all(Radius.circular(
            12.0,
          ))),
      child: const Icon(
        Icons.notifications,
        size: 28.0,
        color: Colors.white,
      ),
    );
  }
}

class BottomSheetHeaderTitle extends StatelessWidget {
  final String titleText;
  const BottomSheetHeaderTitle({
    super.key,
    required this.titleText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          titleText,
          style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        const Icon(
          Icons.more_horiz,
          size: 30,
        )
      ],
    );
  }
}

class ExerciseTile extends StatelessWidget {
  const ExerciseTile({
    super.key,
    required this.exercise,
    required this.subExercise,
    required this.icon,
    required this.color,
  });

  final String exercise;
  final String subExercise;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            20,
          ),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        10,
                      ),
                      color: color,
                    ),
                    child: Icon(
                      icon,
                      size: 40.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        exercise,
                        style: const TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.black45,
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Text(
                        subExercise,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey[400],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Icon(
                Icons.more_horiz,
                size: 30,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class EmoticonCard extends StatelessWidget {
  const EmoticonCard(
      {super.key, required this.emoticonFace, required this.mood});

  final String emoticonFace;
  final String mood;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 10,
              left: 17,
              right: 17,
              bottom: 10,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: Colors.blue[600],
            ),
            child: Text(
              emoticonFace,
              style: const TextStyle(
                fontSize: 50.0,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            mood,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 19.0,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            10.0,
          ),
        ),
        color: Colors.blue[600],
      ),
      padding: const EdgeInsets.all(
        20.0,
      ),
      child: Row(
        children: const [
          Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            'Search',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
