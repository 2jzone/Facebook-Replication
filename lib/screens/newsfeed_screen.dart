import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/post_card.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key, 
  });

  

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        PostCard(
          userName: 'Cyrus Robles',
          postContent: 'Kamusta',
          numOfLikes: 2000,
          date: 'October 11',
          imageUrl:
              'https://images.theconversation.com/files/168121/original/file-20170505-1693-ymh4bc.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=926&fit=clip',
          profileImageUrl:
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3l57g11YPDhF6aR0RazjHrnCCP6pjKyPewA&s',
        ),
        PostCard(
          userName: 'Roben Juanatas',
          postContent: 'Kicking off the holiday season with ICpEP-NCR',
          numOfLikes: 200,
          date: 'December 2',
          profileImageUrl: 
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2o-9LrQzbDgDthQCA6sWDeKWh1QbG5huolg&s',
        ),
        PostCard(
          userName: 'Cyrus Robles',
          postContent: 'Kamusta',
          date: 'October 11',
        ),
        CarouselSlider(
          options: CarouselOptions(
            enableInfiniteScroll: false,
            height: 450.h,
            padEnds: false,
          ),
          items: carouselItems(),
        ),
        SizedBox(
          height: 20.h,
        ),
        PostCard(
          userName: "Nayeon Im",
          postContent: "Passenger princess <333",
          date: "November 15",
          numOfLikes: 159,
          imageUrl: 'assets/images/nayeon.jpg',
          profileImageUrl: 'assets/images/me.jpg',
        ),
        PostCard(
          userName: "Dahyun Kim",
          postContent: "waaaaaaaaah",
          date: "November 14",
          numOfLikes: 10,
          imageUrl: 'assets/images/dahmo.jpg',
          profileImageUrl: 'assets/images/dubu.jpg',
        ),
        PostCard(
          userName: "Chaeyoung Son",
          postContent: "waahahaha",
          date: "November 13",
          numOfLikes: 90,
          imageUrl: 'assets/images/dahyunpost.jpg',
          profileImageUrl: 'assets/images/chae.jpg',
        ),
        PostCard(
          userName: "Jason Angeles",
          postContent: "loml",
          date: "November 12",
          numOfLikes: 150,
          imageUrl: 'assets/images/twice.jpg',
          profileImageUrl: 'assets/images/jason.jpg',
        ),
        PostCard(
          userName: "John Cena",
          postContent: "New Profile Pic!",
          date: "November 11",
          numOfLikes: 20,
          imageUrl: 'assets/images/john.jpg',
          profileImageUrl: 'assets/images/john.jpg',
        ),
        PostCard(
          userName: "John Cena",
          postContent: "family",
          date: "November 10",
          numOfLikes: 15,
          imageUrl: 'assets/images/twice.jpg',
          profileImageUrl: 'assets/images/john.jpg',
        ),
      ],
    );
  }

  List<Widget> carouselItems() {
  return [
    PostCard(
      userName: 'Cyrus Robles',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2T-s0ZmkAlsSqTLCfqSPtrWUY8OWu_TbCHat7SvkHjqutJS__',
      profileImageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3l57g11YPDhF6aR0RazjHrnCCP6pjKyPewA&s',
      postContent: 'Kamusta',
      date: 'October 11',
      isAds: true,
      adsMarket: 'Ikaw na ito!',
    ),
    PostCard(
      userName: 'Cyrus Robles',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2T-s0ZmkAlsSqTLCfqSPtrWUY8OWu_TbCHat7SvkHjqutJS__',
      profileImageUrl:
          '',
      postContent: 'Kamusta',
      date: 'October 11',
      isAds: true,
      adsMarket: 'Ikaw na ito!',
    ),
    PostCard(
      userName: 'Cyrus Robles',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2T-s0ZmkAlsSqTLCfqSPtrWUY8OWu_TbCHat7SvkHjqutJS__',
      profileImageUrl:
          '',
      postContent: 'Kamusta',
      date: 'October 11',
      isAds: true,
      adsMarket: 'Ikaw na ito!',
    ),
    PostCard(
      userName: 'Cyrus Robles',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2T-s0ZmkAlsSqTLCfqSPtrWUY8OWu_TbCHat7SvkHjqutJS__',
      profileImageUrl:
          '',
      postContent: 'Kamusta',
      date: 'October 11',
      isAds: true,
      adsMarket: 'Ikaw na ito!',
    ),
    PostCard(
      userName: 'Cyrus Robles',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2T-s0ZmkAlsSqTLCfqSPtrWUY8OWu_TbCHat7SvkHjqutJS__',
      profileImageUrl:
          '',
      postContent: 'Kamusta',
      date: 'October 11',
      isAds: true,
      adsMarket: 'Ikaw na ito!',
    ),
    PostCard(
      userName: 'Cyrus Robles',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2T-s0ZmkAlsSqTLCfqSPtrWUY8OWu_TbCHat7SvkHjqutJS__',
      profileImageUrl:
          '',
      postContent: 'Kamusta',
      date: 'October 11',
      isAds: true,
      adsMarket: 'Ikaw na ito!',
    ),
    PostCard(
      userName: 'Cyrus Robles',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2T-s0ZmkAlsSqTLCfqSPtrWUY8OWu_TbCHat7SvkHjqutJS__',
      profileImageUrl:
          '',
      postContent: 'Kamusta',
      date: 'October 11',
      isAds: true,
      adsMarket: 'Ikaw na ito!',
    ),
    PostCard(
      userName: 'Cyrus Robles',
      imageUrl:
          'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQ2T-s0ZmkAlsSqTLCfqSPtrWUY8OWu_TbCHat7SvkHjqutJS__',
      profileImageUrl:
          '',
      postContent: 'Kamusta',
      date: 'October 11',
      isAds: true,
      adsMarket: 'Ikaw na ito!',
    ),
  ];
}
}