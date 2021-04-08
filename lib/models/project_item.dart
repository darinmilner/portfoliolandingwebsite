import 'package:flutter/material.dart';

class ProjectItem {
  final String image;
  final String title;
  final String url;
  final String description;
  final List<String> technologies;

  ProjectItem({
    @required this.image,
    @required this.title,
    @required this.url,
    @required this.description,
    @required this.technologies,
  });
}

final kProjectItems = [
  ProjectItem(
      image: "assets/todoapp.png",
      title: "Todo App",
      url: "http://www.github.com/darinmilner",
      description:
          "App for people to remember tasks and could also be used by companies to manage tasks.",
      technologies: ["Javascript", "Mongo DB", "ExpressJS", "Flutter"]),
  ProjectItem(
      image: "assets/ramadan.png",
      title: "Productive Ramadan",
      url: "https://productiveramadan.herokuapp.com",
      description: "Spp for helping track goals and progress during Ramadan.",
      technologies: ["Flutter", "Golang"]),
  // ProjectItem(
  //     image: "assets/halalapp.png",
  //     url: "http://www/github.com/darinmilner",
  //     title: "Halal Meal Planner",
  //     description: "An App for introducing ideas for halal meals.",
  //     technologies: [
  //       "Flutter",
  //     ]),
  ProjectItem(
      image: "assets/ecommerce.png",
      title: "Ecommerce Website",
      url: "https://nodeecommerce-portfolioproject.herokuapp.com/",
      description:
          "An app for posting products for sell and product information",
      technologies: ["ExpressJS", "MongoDB", "HTML", "CSS"]),
];
