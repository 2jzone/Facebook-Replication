import 'package:facebook_replication/widgets/customfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notification extends StatelessWidget{
  const Notification(
    {super.key,
    required this.name,
    required this.post,
    required this.description,
    required this.avatarImage});

  final String name;
  final String post;
  final String description;
  final String avatarImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          CircleAvatar(
                  radius: ScreenUtil().setSp(20),
                  backgroundImage: AssetImage(avatarImage),
                ),
          SizedBox(
            width: ScreenUtil().setWidth(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomFont(
                text: name,
                fontSize: ScreenUtil().setSp(20),
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
              ),
              CustomFont(
                text: 'Posted: $post',
                fontSize: ScreenUtil().setSp(13),
                color: Colors.black,
                fontStyle: FontStyle.normal,
              ),
              CustomFont(
                text: description,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}