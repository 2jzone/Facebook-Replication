import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_inkwell_button.dart';
import '../screens/newsfeed_screen.dart';
import '../constants.dart';
import 'customfont.dart';
import '../screens/detail_screen.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int numOfLikes;
  final String imageUrl;
  final String profileImageUrl;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    this.numOfLikes = 0,
    required this.date,
    this.imageUrl = '',
    this.profileImageUrl = '',
  });

  BuildContext get context => context;

  @override
  Widget build(BuildContext context) {
    // Conditional rendering based on the user's name
    if (userName == "John Doe") {
      return _buildJohnPost(context);
    } else if (userName == "Angelique Anne Valdez") {
      return _buildJanePost(context);
    } else if (userName == "Poser3") {
      return _buildPost3(context);
    } else if (userName == "Poser2") {
      return _buildPost2(context);
    } else if (userName == "Poser") {
      return _buildPost1(context);
    } else {
      return const SizedBox.shrink(); // Hide if not John or Jane
    }
  }

  Widget _buildPost1(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailScreen on tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              userName: userName,
              postContent: postContent, // Convert likes to integer
              imageUrl: ('assets/icons/jane.jpg'),
              profileImageUrl: 'assets/icons/john.jpg',
              date: '1/2/25',
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setSp(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Info Row with Avatar
              Row(
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setSp(15),
                    backgroundImage: AssetImage('assets/icons/john.jpg'),
                    backgroundColor: FB_DARK_PRIMARY,
                  ),
                  SizedBox(width: ScreenUtil().setSp(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: ScreenUtil().setSp(2)),
                      Text(
                        'October 21', // Replace with dynamic date if needed
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Post Content
              CustomFont(
                text: postContent,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Image Placeholder
              Container(
                height: ScreenUtil().setSp(200),
                width: double.infinity,
                child: Image.asset(
                  'assets/icons/jane.jpg', // Path to your local image
                  fit: BoxFit.cover, // Ensures the image fits well in the box
                ),
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Action Buttons (Like, Comment, Share)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildActionButton(Icons.thumb_up, '2M'),
                  _buildActionButton(Icons.comment, 'Comment'),
                  _buildActionButton(Icons.share, 'Share'),
                ],
              ),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Write a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Handle view comments action
                },
                child: Text(
                  'View comments',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 2, 31, 55),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPost2(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailScreen on tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              userName: userName,
              postContent: postContent, // Convert likes to integer
              imageUrl: ('assets/icons/john.jpg'),
              profileImageUrl: 'assets/icons/john.jpg',
              date: '1/2/25',
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setSp(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Info Row with Avatar and Date
              Row(
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setSp(15),
                    backgroundImage: AssetImage('assets/icons/john.jpg'),
                    backgroundColor: FB_DARK_PRIMARY,
                  ),
                  SizedBox(width: ScreenUtil().setSp(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: ScreenUtil().setSp(2)),
                      Text(
                        'October 11', // Replace with dynamic date if needed
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Post Content
              CustomFont(
                text: postContent,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Image Placeholder
              Container(
                height: ScreenUtil().setSp(200),
                width: double.infinity,
                child: Image.asset(
                  'assets/icons/john.jpg', // Path to your local image
                  fit: BoxFit.cover, // Ensures the image fits well in the box
                ),
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Action Buttons (Like, Comment, Share)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildActionButton(Icons.thumb_up, '5M'),
                  _buildActionButton(Icons.comment, 'Comment'),
                  _buildActionButton(Icons.share, 'Share'),
                ],
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Write a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Handle view comments action
                },
                child: Text(
                  'View comments',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 2, 31, 55),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPost3(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailScreen on tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              userName: userName,
              postContent: postContent, // Convert likes to integer
              imageUrl: (''),
              profileImageUrl: 'assets/icons/twc.jpg',
              date: '1/2/25',
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setSp(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Info Row with Avatar
              Row(
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setSp(15),
                    backgroundImage: AssetImage('assets/icons/twc.jpg'),
                    backgroundColor: FB_DARK_PRIMARY,
                  ),
                  SizedBox(width: ScreenUtil().setSp(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: ScreenUtil().setSp(2)),
                      Text(
                        'October 23', // Replace with dynamic date if needed
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Post Content
              CustomFont(
                text: postContent,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Action Buttons (Like, Comment, Share)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildActionButton(Icons.thumb_up, '100M'),
                  _buildActionButton(Icons.comment, 'Comment'),
                  _buildActionButton(Icons.share, 'Share'),
                ],
              ),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Write a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Handle view comments action
                },
                child: Text(
                  'View comments',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 2, 31, 55),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJohnPost(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailScreen on tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              userName: userName,
              postContent: postContent, // Convert likes to integer
              imageUrl: ('assets/icons/twc.jpg'),
              profileImageUrl: 'assets/icons/john.jpg',
              date: '1/2/25',
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setSp(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Info Row with Avatar
              Row(
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setSp(15),
                    backgroundImage: AssetImage('assets/icons/john.jpg'),
                    backgroundColor: FB_DARK_PRIMARY,
                  ),
                  SizedBox(width: ScreenUtil().setSp(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: ScreenUtil().setSp(2)),
                      Text(
                        'October 29', // Replace with dynamic date if needed
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Post Content
              CustomFont(
                text: postContent,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Image Placeholder
              Container(
                height: ScreenUtil().setSp(200),
                width: double.infinity,
                child: Image.asset(
                  'assets/icons/twc.jpg', // Path to your local image
                  fit: BoxFit.cover, // Ensures the image fits well in the box
                ),
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Action Buttons (Like, Comment, Share)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildActionButton(Icons.thumb_up, '1M'),
                  _buildActionButton(Icons.comment, 'Comment'),
                  _buildActionButton(Icons.share, 'Share'),
                ],
              ),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Write a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Handle view comments action
                },
                child: Text(
                  'View comments',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 2, 31, 55),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildJanePost(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to DetailScreen on tap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              userName: userName,
              postContent: postContent, // Convert likes to integer
              imageUrl: (''),
              profileImageUrl: 'assets/icons/chae.jpg',
              date: '1/2/25',
            ),
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Padding(
          padding: EdgeInsets.all(ScreenUtil().setSp(10)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // User Info Row with Avatar
              Row(
                children: [
                  CircleAvatar(
                    radius: ScreenUtil().setSp(15),
                    backgroundImage: AssetImage('assets/icons/chae.jpg'),
                    backgroundColor: FB_DARK_PRIMARY,
                  ),
                  SizedBox(width: ScreenUtil().setSp(10)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomFont(
                        text: userName,
                        fontSize: ScreenUtil().setSp(15),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: ScreenUtil().setSp(2)),
                      Text(
                        'October 29', // Replace with dynamic date if needed
                        style: TextStyle(
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Post Content
              CustomFont(
                text: postContent,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
              ),
              SizedBox(height: ScreenUtil().setSp(10)),
              // Action Buttons (Like, Comment, Share)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildActionButton(Icons.thumb_up, '2M'),
                  _buildActionButton(Icons.comment, 'Comment'),
                  _buildActionButton(Icons.share, 'Share'),
                ],
              ),

              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.account_circle),
                  hintText: 'Write a comment...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
              ),
              SizedBox(height: 16.0),
              GestureDetector(
                onTap: () {
                  // Handle view comments action
                },
                child: Text(
                  'View comments',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 2, 31, 55),
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, String label) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        icon,
        color: FB_DARK_PRIMARY,
        size: ScreenUtil().setSp(16),
      ),
      label: CustomFont(
        text: label,
        fontSize: ScreenUtil().setSp(12),
        color: FB_DARK_PRIMARY,
      ),
    );
  }
}