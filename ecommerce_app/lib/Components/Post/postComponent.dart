import 'package:flutter/material.dart';
import '../../../Constants/colorConstants.dart';
import '../../../Constants/textConstants.dart';

class PostComponent extends StatefulWidget {
  final String postImg;
  final String postTitle;
  final String postProfileImg;
  final String postProfileName;

  PostComponent({
    super.key,
    required this.postImg,
    required this.postTitle,
    required this.postProfileImg,
    required this.postProfileName,
  });

  @override
  State<PostComponent> createState() => _PostComponentState();
}

class _PostComponentState extends State<PostComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: kMainWhiteColor),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              topRight: Radius.circular(4),
            ),
            child: Image(
              image: NetworkImage(widget.postImg),
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(3),
            child: Column(
              children: [
                Text(
                  widget.postTitle,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: tPostInventoryTitleText,
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: NetworkImage(widget.postProfileImg),
                              fit: BoxFit.cover)),
                    ),
                    Text(
                      widget.postProfileName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: tPostInventoryTitleText6,
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        iconSize: 24,
                        onPressed: () {},
                        icon: Icon(Icons.ios_share),
                        color: kSecondaryButtonColor3,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
