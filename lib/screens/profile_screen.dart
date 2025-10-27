import 'package:facebook_replication/screens/newsfeed_screen.dart';
import 'package:facebook_replication/widgets/post_card.dart';
import '../constants.dart';
import '../widgets/custom_button.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../widgets/customfont.dart';
import 'package:facebook_replication/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/photos_tab.dart';
import '../widgets/newsfeed.dart';

class ProfileScreen extends StatelessWidget {
  String profilename;
  ProfileScreen({super.key, required this.profilename});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: DecorationImage(
                        image: CachedNetworkImageProvider(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjfSKxnBWOE5eqjcSLRr2lv7045NkcucW_xg&s',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -50,
                    left: ScreenUtil().setWidth(20),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.grey[300],
                          child: ClipOval(
                            child: CachedNetworkImage(
                              imageUrl:
                                  'https://i.imgflip.com/8kjj7g.jpg?a482832', // Replace with actual profile image URL
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                              placeholder: (context, url) =>
                                  const CircularProgressIndicator(),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error, size: 50),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          right: 8,
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.grey[300],
                            child: const Icon(
                              Icons.camera_alt,
                              size: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setHeight(55)),
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: ScreenUtil().setWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomFont(
                      text: profilename,
                      fontWeight: FontWeight.bold,
                      fontSize: ScreenUtil().setSp(20),
                      color: Colors.black,
                    ),
                    SizedBox(height: ScreenUtil().setHeight(5)),
                    Row(
                      children: [
                        CustomFont(
                          text: '9M',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomFont(
                          text: 'followers',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        Icon(
                          Icons.circle,
                          size: ScreenUtil().setSp(5),
                          color: Colors.grey,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(5)),
                        CustomFont(
                          text: '1',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomFont(
                          text: 'following',
                          fontSize: ScreenUtil().setSp(15),
                          color: Colors.grey,
                          fontWeight: FontWeight.w100,
                        ),
                      ],
                    ),
                    SizedBox(height: ScreenUtil().setHeight(10)),
                    Row(
                      children: [
                        CustomButton(
                          buttonName: 'Follow',
                          onPressed: () {},
                        ),
                        SizedBox(width: ScreenUtil().setWidth(10)),
                        CustomButton(
                          buttonName: 'Message',
                          onPressed: () {},
                          buttonType: 'outlined',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: ScreenUtil().setHeight(10)),
              TabBar(
                indicatorColor: FB_DARK_PRIMARY,
                tabs: [
                  Tab(
                    child: CustomFont(
                      text: 'Post',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'About',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                  Tab(
                    child: CustomFont(
                      text: 'Photos',
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: ScreenUtil().setHeight(500),
                child: TabBarView(
                  children: [
                    SizedBox(
                      height: ScreenUtil().setHeight(2000),
                      child: ListView(
                        children: [
                          PostCard(
                            userName: profilename,
                            postContent: 'Ano ulam nyo?',
                            numOfLikes: 200,
                            date: 'October 20',
                            profileImageUrl:
                                'https://i.imgflip.com/8kjj7g.jpg?a482832',
                          ),
                          PostCard(
                            userName: profilename,
                            postContent: 'Luka my pookie',
                            numOfLikes: 2129,
                            date: 'August 1',
                            imageUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ50B8T7aW1_nXoqhsDikwe6gbTd-ckOhdNwA&s',
                            profileImageUrl:
                                'https://i.imgflip.com/8kjj7g.jpg?a482832',
                          ),
                          PostCard(
                            userName: profilename,
                            postContent: 'TACO TUESDAAAAY',
                            numOfLikes: 200,
                            date: 'June 13',
                            profileImageUrl:
                                'https://i.imgflip.com/8kjj7g.jpg?a482832',
                          ),
                        ],
                      ),
                    ),
                    about(),
                    photos(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class about extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(ScreenUtil().setWidth(20)),
      child: Container(
        padding: EdgeInsets.all(ScreenUtil().setWidth(15)),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutItem(title: "Work/Education", value: "Student"),
            AboutItem(title: "Place From", value: "Cavite"),
            AboutItem(title: "Birthday", value: "June 1, 1990"),
            AboutItem(title: "Status", value: "Single"),
            AboutItem(title: "Contact", value: "+639123456789"),
          ],
        ),
      ),
    );
  }
}

class AboutItem extends StatelessWidget {
  final String title;
  final String value;

  const AboutItem({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(10)),
      child: Row(
        children: [
          CustomFont(
            text: "$title: ",
            fontWeight: FontWeight.bold,
            fontSize: ScreenUtil().setSp(15),
            color: FB_DARK_PRIMARY,
          ),
          Expanded(
            child: CustomFont(
              text: value,
              fontSize: ScreenUtil().setSp(15),
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          ),
        ],
      ),
    );
  }
}
