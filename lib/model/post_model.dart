import 'package:flutter/material.dart';

class PostModel {
  final String image, title, description;
  final int id;

  PostModel({
    this.id,
    this.image,
    this.title,
    this.description,
  });
}

List<PostModel> posts = [
  PostModel(
    id: 1,
    title: "Devfest 2021",
    description: "CHF54.5",
    image: "assets/images/devfest.jpg",
  ),
  PostModel(
    id: 2,
    title: "Google IO extend",
    description: "CHF53.1",
    image: "assets/images/io.jpg",
  ),
  PostModel(
    id: 3,
    title: "IWD Women TechMakers",
    description: "CHF55.6",
    image: "assets/images/iwd.jpg",
  ),

];
