import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../helpers/container_with_title.dart';
import '../../utils/colors/color.dart';
import '../../utils/constant/widget_constant.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  List<IconData> buttonIcons = [
    Icons.add,
    Icons.search,
    Icons.notifications,
  ];
  List<String> buttonTitle = ["Add Listing", "Search", "Notification"];

  List<String> categoryTitle = [
    "Electronics",
    "Appliances",
    "Mobile",
  ];

  List<String> categoryImages = [
    "assets/images/electronic.jpeg",
    "assets/images/appliances.jpeg",
    "assets/images/mobile.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black12,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    for (int i = 0; i < buttonIcons.length; i++)
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              print(buttonTitle[i]);
                            },
                            child: Container(
                              width: 60,
                              height: 60,
                              margin: const EdgeInsets.symmetric(horizontal: 9),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border: Border.all(
                                      color: MyColor.teal, width: 2)),
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Icon(
                                  buttonIcons[i],
                                  color: MyColor.white,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            buttonTitle[i],
                            style: const TextStyle(
                                color: MyColor.white, fontSize: 12),
                          )
                        ],
                      ),
                    for (int i = 0; i < categoryImages.length; i++)
                      Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            margin: const EdgeInsets.symmetric(horizontal: 9),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border:
                                    Border.all(color: MyColor.teal, width: 2)),
                            child: Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(categoryImages[i]),
                                    fit: BoxFit.cover,
                                  ),
                                  color: MyColor.white,
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                            ),
                          ),
                          ConstantWidgets.heightSpaceH8,
                          Text(
                            categoryTitle[i],
                            style: const TextStyle(
                                color: MyColor.white, fontSize: 12),
                          )
                        ],
                      ),
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.5,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          const Spacer(),
                          const Row(
                            children: [
                              Text(
                                "Macbook Air 2013",
                                style: TextStyle(
                                    fontSize: 14, color: MyColor.white),
                              ),
                            ],
                          ),
                          ConstantWidgets.heightSpaceH4,
                          const Row(
                            children: [
                              Text(
                                "AED 1,200",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: MyColor.orange,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          ConstantWidgets.heightSpaceH4,
                          const Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit... #Lorem #ipsum #amet",
                            style: TextStyle(
                              fontSize: 12,
                              color: MyColor.white,
                            ),
                          ),
                          ConstantWidgets.heightSpaceH8,
                          Row(
                            children: [
                              Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(categoryImages[2]),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(100),
                                ),
                              ),
                              ConstantWidgets.widthSpaceH4,
                              const Text(
                                "Dubai, United Arab Emirates",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: MyColor.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          ConstantWidgets.heightSpaceH8,
                          Row(
                            children: [
                              Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: const LinearGradient(
                                      colors: [
                                        MyColor.blue,
                                        MyColor.teal,
                                      ],
                                      begin: FractionalOffset(0.0, 0.1),
                                      end: FractionalOffset(1.0, 0.0),
                                      stops: [0.0, 1.0],
                                      tileMode: TileMode.clamp),
                                ),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateColor.transparent,
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ))),
                                    onPressed: () {},
                                    child: const Text(
                                      "Visit Website",
                                      style: TextStyle(color: Colors.white),
                                    )),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 5,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          const Spacer(),
                          const ContainerWithText(
                            iconData: Icons.nine_k,
                            title: 'Offer',
                          ),
                          ConstantWidgets.heightSpaceH10,
                          const ContainerWithText(
                            iconData: Icons.favorite,
                            title: '4.5k',
                          ),
                          ConstantWidgets.heightSpaceH10,
                          const ContainerWithText(
                            iconData: Icons.chat_bubble,
                            title: '12.4k',
                          ),
                          ConstantWidgets.heightSpaceH10,
                          const ContainerWithText(
                            iconData: Icons.share,
                            title: '77',
                          ),
                          ConstantWidgets.heightSpaceH10,
                          GestureDetector(
                            onTap: () {
                              print("buttonTitle[i]");
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(categoryImages[2]),
                                  fit: BoxFit.cover,
                                ),
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
