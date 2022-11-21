import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient1 = Colors.black;
Color kGradient2 = Colors.black87;

String imagePath = "images/my_photo4.jpeg";

//String data to modify
String name = "Shreya Murarka";
String username = "Flutter Developer";

//Link to resume on Google Drive
String resumeLink =
    "https://drive.google.com/file/d/1Ix5Nmncrm-GNrbqb1wwlpNvZVnoh8qGz/view?usp=sharing";

String prodDesign = "https://docs.google.com/presentation/d/14PH8ZsDw6V5DIgYKvWeY4J-iVaPr1QRU2hEnzyCLzI4/edit?usp=share_link";

String prodCritique = "https://drive.google.com/file/d/1hZc3jGvSkPGXvSNzWI29ARLiUHCSE76p/view?usp=share_link";

String caseSolution = "https://drive.google.com/file/d/1GhpHaf0NqnVFR69EZDOHfDrl23oj60Qu/view?usp=share_link";

//Contact Email
String contactEmail = "shreyarng00@gmail.com";

String aboutWorkExperience = '''
Hello I am a freelancer

He has previously been a speaker at the Flutter Global Summit'21, Flutter Vikings and events across colleges, universities (like VIT Chennai, Vellore, MIT-ADT), and clubs (IEEE APSIT, SFIT, GirlScript, GeeksforGeeks Student Chapter, Google CrowdSource, and more) here in India. 
''';

String aboutMeSummary = '''I am Shreya Murarka, a final year B.Tech student.
Science and technology is something that has always made me curious to learn and explore more.
My current interest lies in product development using Flutter and related tech stacks. I aspire to
be a full stack application developer and build something valuable for the society.I am open to 
work on some great projects and develop amazing products.
I define myself as a learner, open to challenges, having good communication and problem 
solving skills.

My skills don't limit my domain as I am always eager to learn new skills and gain different 
work experiences.'''
;

String location = "Dharamshala, India";
String website = "adityathakur.in";
String portfolio = "adityathakurxd";
String email = "mail@adityathakur.in";

List<Project> projectList = [
  Project(
      name: "Shades",
      description:
          "Winner IEEE Mandi 'Go Online' Challenge at Electrothon, NIT Hamirpur.",
      link: "https://github.com/adityathakurxd/shades"),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Fiasco",
      description:
          "Fiasco is one stop solution to help you manage Family expenses in one place!",
      link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Flutter Portfolio",
      description: "A template for Portfolio",
      link: "https://github.com/adityathakurxd/flutter-portfolio")
];
