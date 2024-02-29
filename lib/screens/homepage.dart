import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Image.asset(
          'assets/instatext.png',
          width: 120,
          color: Colors.white,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: Image.asset(
              height: 25,
              'assets/heart.png',
              color: Colors.white,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 25),
            child: Image.asset(
              'assets/chat.png',
              height: 25,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      radius: 42,
                      backgroundColor: const Color.fromARGB(255, 230, 32, 160),
                      child: CircleAvatar(
                        radius: 40,
                        backgroundImage: Image.asset('images/angel.jpg').image,
                      ),
                    ),
                  );
                }),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 500,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      CircleAvatar(
                                        radius: 20,
                                        backgroundColor: const Color.fromARGB(
                                            255, 230, 32, 160),
                                        child: CircleAvatar(
                                          radius: 19,
                                          backgroundImage:
                                              Image.asset('images/angel.jpg')
                                                  .image,
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 7,
                                      ),
                                      const Text(
                                        "Angel Doe",
                                        style: TextStyle(
                                          fontWeight: FontWeight.w800,
                                          fontSize: 16,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              BottomCardIcon(
                                iconName: 'assets/heart.png',
                              ),
                              BottomCardIcon(iconName: 'assets/chat.png'),
                              BottomCardIcon(iconName: 'assets/send.png'),
                            ],
                          ),
                          BottomCardIcon(iconName: 'assets/saved.png'),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(
                          left: 15,
                        ),
                        child: const Text(
                          '4,245 likes',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Angel Doe Mchezaji kiungo wa zamani wa Manchester United ya Uingereza, Paul Pogba ameadhibiwa kutojihusisha na mpira kwa muda wa miaka minne hadi hapo mnamo mwaka 2028 ",
                              softWrap: true,
                              maxLines: null,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  );
                }),
          ),
        ],
      ),
    );
  }
}

class BottomCardIcon extends StatelessWidget {
  final String iconName;
  const BottomCardIcon({
    super.key,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(
        5,
      ),
      child: Image.asset(
        iconName,
        height: 27,
        color: Colors.white,
      ),
    );
  }
}
