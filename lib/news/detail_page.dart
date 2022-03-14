import 'package:crick11/utility/utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsDetailPage extends StatelessWidget {
  String subtitle;
  String description;
  String imageUrl;
  String title;
  String time;
  NewsDetailPage(
      {Key? key,
      required this.subtitle,
      required this.description,
      required this.imageUrl,
      required this.title,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double appHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Stack(
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: appHeight * 0.290,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30)),
                          child: Hero(
                            tag: "news_image",
                            child: Image.network(imageUrl,
                                fit: BoxFit.cover, width: 1000.0),
                          ),
                        )),
                    Container(
                      margin: const EdgeInsets.only(
                          left: 15, right: 15, bottom: 20),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 15.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(title,
                                  textAlign: TextAlign.start,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: MyColors.textStyleH3Black),
                              Text(time,
                                  textAlign: TextAlign.start,
                                  maxLines: 1,

                                  style: MyColors.textStyleH3Black),
                            ],
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(subtitle,
                              maxLines: 2,
                              textAlign: TextAlign.start,
                              style: MyColors.textStyleH1Black),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Text(description,
                              textAlign: TextAlign.start,
                              style: MyColors.textStyleH3Black),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 15,
                right: 10,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.cancel,
                    color: Colors.white.withOpacity(0.95),
                    size: 30,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
