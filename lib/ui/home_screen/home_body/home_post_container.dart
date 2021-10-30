import 'package:flutter/material.dart';
import 'package:gdg_website_demo1/constants/colors.dart';
import 'package:gdg_website_demo1/model/post_model.dart';

class HomePostContainer extends StatelessWidget {
  const HomePostContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Wrap(
        spacing: 40,
        children: List.generate(
            posts.length,
            (index) => HomePostItem(
                  post: posts[index],
                )),
      ),
    );
  }
}

class HomePostItem extends StatelessWidget {
  const HomePostItem({Key key, this.post}) : super(key: key);
  final PostModel post;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                post.image,
                fit: BoxFit.fill,
                height: 370,
                width: 370,
              )),
          SizedBox(height: 10),
          Text(
            post.title,
            style: TextStyle(
                color: kButtonColor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
          SizedBox(height: 10),
          Text(
            post.description,
            style: TextStyle(color: Colors.black45, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
