import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  List listOfAvatar = [
    "https://www.befunky.com/images/prismic/5ddfea42-7377-4bef-9ac4-f3bd407d52ab_landing-photo-to-cartoon-img5.jpeg?auto=avif,webp&format=jpg&width=863",
    "https://thumbs.dreamstime.com/b/foreign-tourist-photographer-taking-pictures-kathmandu-taking-kathmandu-nepal-sep-foreign-tourist-photographer-taking-photos-127178547.jpg",
    "https://api.time.com/wp-content/uploads/2019/08/better-smartphone-photos.jpg?quality=85&w=1024"
  ];

  List listOfName = [
    "Aziz",
    "Laziz",
    "Ali",
  ];
  List listOfuserName = [
    "@jacob_32",
    "@cam_will",
    "@j_Bell",
  ];

  List listofprice = [
    'from \$25.99 ',
    'from \$30.00 ',
    'from \$1.77 ',
  ];
  List listofbackphoto = [
    "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80",
    'https://www.befunky.com/images/prismic/5ddfea42-7377-4bef-9ac4-f3bd407d52ab_landing-photo-to-cartoon-img5.jpeg?auto=avif,webp&format=jpg&width=863',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa1pNzfnQgeABOdREljz2rAoIwly9tG9JOxQ&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: const Color(0xffF8FAFC),
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hi, Alice Smith! 👋",
                    style: TextStyle(
                        color: Color(0xff1F262C),
                        fontSize: 24,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 8, bottom: 0),
                    child: Text(
                      "Let’s see the updates, new interactions of followed creators on your feed.",
                      style: TextStyle(
                        color: Color(0xff62687B),
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: listOfAvatar.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(16),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  width: 36,
                                  height: 36,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(color: Colors.black),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                          listOfAvatar[index],
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(child: Text(listOfName[index])),
                                    Container(
                                      margin: const EdgeInsets.only(left: 20),
                                      child: Text("${listOfuserName[index]}"),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(16)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "${listofbackphoto[index]}"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            const Text("🎨 Arts & Entertainment"),
                            const Text(
                              "Video Games: The most interesting video games",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w700),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${listofprice[index]}"),
                                Container(
                                  margin: const EdgeInsets.only(top: 10),
                                  width: 100,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    color: const Color.fromARGB(0, 0, 0, 0),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Details',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
