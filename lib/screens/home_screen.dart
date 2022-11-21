import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/constants/constants.dart';
import 'package:portfolio/data/data.dart';
import 'package:portfolio/screens/widgets/project_widget.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:bulleted_list/bulleted_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title:  Text(
                "My Portfolio",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, wordSpacing: 2.0),
               ),
        //   foregroundColor: Colors.black,
          backgroundColor: Colors.white70,
         ),


        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                kGradient1,
                kGradient2,
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(80.0, 30.0, 80.0, 30.0),
              child: Column(
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Container(
                  //   width: MediaQuery.of(context).size.width,
                  //   height: 200,
                  //   decoration: BoxDecoration(
                  //     gradient: LinearGradient(
                  //       begin: Alignment.topRight,
                  //       end: Alignment.bottomLeft,
                  //       colors: [
                  //         kGradient1,
                  //         kGradient2,
                  //       ],
                  //     ),
                  //   ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50.0, 8.0, 8.0, 8.0),
                        child: Column(
                          children: [
                            Text(
                              name,
                              style: kTitleText,
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              "$username",
                              style: kSubTitleText,
                            ),
                            SizedBox(height: 60),
                            Padding(
                                padding:
                                    EdgeInsets.fromLTRB(0.0, 0.0, 560.0, 20.0),
                                child:
                                    Text("About Me", style: kSectionTitleText)),

                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              aboutMeSummary,
                              style: TextStyle(
                                  color: Colors.white,
                                  wordSpacing: 2.0,
                                  fontSize: 15.0),
                              maxLines: 10,
                            ),

                            SizedBox(height: 60),
                            Padding(
                                padding:
                                EdgeInsets.fromLTRB(0.0, 0.0, 560.0, 20.0),
                                child:
                                Text("Education", style: kSectionTitleText)),

                            SizedBox(height: 10 ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                              child: Container(
                                height: 60,
                                width: 690,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0)),
                                  color: Colors.white70,
                                ),


                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0,8.0,0.0,0.0),
                                      child: Text(
                                        "Bharati Vidyapeeth's College of Engineering, New Delhi   (Aug. 2019-Jul. 2023)",
                                        style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,),
                                      ),
                                    ),

                                    SizedBox(height: 5.0),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0,0.0,0.0,8.0),
                                      child: Text(
                                          "Bachelor of Technology in Information Technology; CGPA:8.62"
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),


                            SizedBox(height: 10 ),

                            Padding(
                              padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                              child: Container(
                                height: 60,
                                width: 690,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(30.0), bottomRight: Radius.circular(30.0)),
                                  color: Colors.white70,
                                ),


                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0,8.0,0.0,0.0),
                                      child: Text(
                                        "DAV Public School, West Bengal   (2018)",
                                        style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0,),
                                      ),
                                    ),

                                    SizedBox(height: 5.0),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(8.0,0.0,0.0,8.0),
                                      child: Text(
                                          "12th C.B.S.E, PCM-CS; 90%",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                        SizedBox(height: 60),
                        Padding(
                          padding:
                          EdgeInsets.fromLTRB(0.0, 0.0, 560.0, 20.0),
                          child: Text("My Work", style: kSectionTitleText),
                        ),
                            SizedBox(height: 10.0),

                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(0.0, 0.0, 560.0, 20.0),
                              child: Text("1. Flutter", style: kSubTitleText),
                            ),

                            SizedBox(height: 10.0),

                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(0.0, 0.0, 510.0, 20.0),
                              child: Text("2. Case Studies", style: kSubTitleText),
                            ),

                            SizedBox(height: 10.0),

                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height:200,
                                    width: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all( Radius.circular(20.0)),
                                      color: Colors.white70,
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Product Design",
                                      style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0,),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(45.0,130.0,45.0,25.0),
                                          child: ElevatedButton(
                                              onPressed: () async {
                                                //Code to launch resume
                                                final Uri _url = Uri.parse(prodDesign);
                                                await launchUrl(_url);
                                              },
                                              child: Text(
                                                "View",
                                                style: kSubTitleText,
                                              )),
                                        ),
                                      ],
                                    ),
                                  ),

                                  SizedBox(width: 40),

                                  Container(
                                    height:200,
                                    width: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all( Radius.circular(20.0)),
                                      color: Colors.white70,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(45.0,130.0,45.0,25.0),
                                      child: ElevatedButton(
                                          onPressed: () async {
                                            //Code to launch resume
                                            final Uri _url = Uri.parse(prodCritique);
                                            await launchUrl(_url);
                                          },
                                          child: Text(
                                            "View",
                                            style: kSubTitleText,
                                          )),
                                    ),
                                  ),

                                  SizedBox(width: 40),

                                  Container(
                                    height:200,
                                    width: 220,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all( Radius.circular(20.0)),
                                      color: Colors.white70,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.fromLTRB(45.0,130.0,45.0,25.0),
                                      child: ElevatedButton(
                                          onPressed: () async {
                                            //Code to launch resume
                                            final Uri _url = Uri.parse(caseSolution);
                                            await launchUrl(_url);
                                          },
                                          child: Text(
                                            "View",
                                            style: kSubTitleText,
                                          )),
                                    ),
                                  ),

                                ],
                              ),
                            ),

                            SizedBox(height: 60),
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(0.0, 0.0, 560.0, 20.0),
                              child: Text("Internship", style: kSectionTitleText),
                            ),

                            SizedBox(height: 10.0),


                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[
                                  MyBullet1(),

                                  SizedBox(width:10.0),

                                  Text(
                                    "Cross-Platform Developer: Presear Softwares Pvt Ltd",
                                    style: TextStyle(
                                      color: Colors.white,
                                      wordSpacing: 2.0,
                                      fontSize: 15.0),
                                  ),

                                  SizedBox(width:150.0),

                                  Text(
                                    "July 2022 - Aug 2022",
                                    style: TextStyle(
                                        color: Colors.white,
                                        wordSpacing: 2.0,
                                        fontSize: 15.0),
                                  ),


                                ]
                              ),
                            ),

                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 20.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children:[
                                    MyBullet1(),

                                    SizedBox(width:10.0),

                                    Text(
                                      "Flutter Development Intern: RAAHEE: A mental health initiative",
                                      style: TextStyle(
                                          color: Colors.white,
                                          wordSpacing: 2.0,
                                          fontSize: 15.0),
                                    ),

                                    SizedBox(width:90.0),

                                    Text(
                                      "Nov 2021 – June 2022",
                                      style: TextStyle(
                                          color: Colors.white,
                                          wordSpacing: 2.0,
                                          fontSize: 15.0),
                                    ),


                                  ]
                              ),
                            ),


                            // SizedBox(height: 60),
                            // Padding(
                            //   padding:
                            //   EdgeInsets.fromLTRB(0.0, 0.0, 450.0, 20.0),
                            //   child: Text("Leadership and Volunteering Experience", style: kSectionTitleText),
                            // ),
                            //
                            // SizedBox(height: 10.0),


                            SizedBox(height: 60),
                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(130.0, 0.0, 330.0, 20.0),
                              child: Text("Leadership and Volunteering Experience", style: kSectionTitleText),
                            ),

                            SizedBox(height: 10.0),


                            Padding(
                              padding:
                              EdgeInsets.fromLTRB(0.0, 0.0, 60.0, 20.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children:[
                                  MyBullet1(),

                                  SizedBox(width:10.0),

                                  Text(
                                    "Cross-Platform Developer: Presear Softwares Pvt Ltd",
                                    style: TextStyle(
                                        color: Colors.white,
                                        wordSpacing: 2.0,
                                        fontSize: 15.0),
                                  ),
                                  ]
                              ),
                            ),

                                ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 130,
                              backgroundImage:
                                  AssetImage("images/my_photo4.jpeg"),
                            ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Row(children: [
                              Image(
                                image: AssetImage("symbols/location.png"),
                                height: 25.0,
                                width: 20.0,
                              ),
                              SizedBox(width: 20.0),
                              Text(
                                "Delhi, India",
                                style: TextStyle(
                                    color: Colors.white,
                                    wordSpacing: 2.0,
                                    fontSize: 15.0),
                              ),
                            ]),
                            SizedBox(height: 15),
                            Row(children: [
                              Image(
                                image: AssetImage("symbols/gmail-gif.gif"),
                                height: 25.0,
                                width: 20.0,
                              ),
                              SizedBox(width: 20.0),
                              Text.rich(
                                TextSpan(
                                    text: "shreyarng00@gmail.com",
                                    style: TextStyle(
                                        color: Colors.white,
                                        wordSpacing: 2.0,
                                        fontSize: 15.0,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        //Call to launch email
                                        final Uri emailLaunchUri = Uri(
                                          scheme: 'mailto',
                                          path: contactEmail,
                                        );
                                        await launchUrl(emailLaunchUri);
                                      }),
                              ),
                            ]),
                            SizedBox(height: 15),
                            Row(children: [
                              Image(
                                image: AssetImage("symbols/github2.png"),
                                height: 25.0,
                                width: 25.0,
                              ),
                              SizedBox(width: 20.0),
                              Text.rich(
                                TextSpan(
                                    text: "https://github.com/Shreya20-10",
                                    style: TextStyle(
                                        color: Colors.white,
                                        wordSpacing: 2.0,
                                        fontSize: 15.0,
                                        decoration: TextDecoration.underline),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        final Uri _gitUrl = Uri.parse(
                                            'https://github.com/Shreya20-10');
                                        if (!await launchUrl(_gitUrl)) {
                                          throw 'Could not launch $_gitUrl';
                                        }
                                      }),
                              ),
                            ]),
                            SizedBox(height: 15),
                            Row(children: [
                              Image(
                                image: AssetImage("symbols/linkedIn.png"),
                                height: 25.0,
                                width: 25.0,
                              ),
                              SizedBox(width: 20.0),
                              Text.rich(
                                TextSpan(
                                text:"www.linkedin.com/in/shreya-murarka20",
                                style: TextStyle(
                                    color: Colors.white,
                                    wordSpacing: 2.0,
                                    fontSize: 15.0,
                                    decoration: TextDecoration.underline,
                                ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () async {
                                        final Uri _linkedInUrl = Uri.parse(
                                            'https://www.linkedin.com/in/shreya-murarka20/ ');
                                        if (!await launchUrl(_linkedInUrl)) {
                                          throw 'Could not launch $_linkedInUrl';
                                        }
                                      }
                              ),
                              ),
                            ]),
                            SizedBox(height: 15),
                            ElevatedButton(
                                onPressed: () async {
                                  //Code to launch resume
                                  final Uri _url = Uri.parse(resumeLink);
                                  await launchUrl(_url);
                                },
                                child: Text(
                                  "View Resume",
                                  style: kSubTitleText,
                                )),

                            SizedBox(height: 60),

                            Text("SKILLS",style: kSectionTitleText),

                            SizedBox(height: 20),

                        Container(
                          height:300,
                          width: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all( Radius.circular(15.0)),
                            color: Colors.white70,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children:[
                                    MyBullet(),

                                    SizedBox(width:8.0),

                                    Text(
                                      'Languages',
                                      style: TextStyle(color: Colors.black,
                                        fontWeight: FontWeight.bold, fontSize: 16.0,),
                                    ),
                                  ]
                                ),

                                SizedBox(height:8.0),

                                Text(
                                  '     C++, Dart, SQL',
                                  textAlign: TextAlign.left,
                                ),

                                SizedBox(height:8.0),


                                Row(
                                    children:[
                                      MyBullet(),

                                      SizedBox(width:8.0),

                                      Text(
                                        'Tools/Technologies',
                                        style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold, fontSize: 16.0,),
                                      ),
                                    ]
                                ),

                                SizedBox(height:8.0),

                                Text(
                                  '''     Flutter, Firebase, HTML, CSS,
     GitHub, Postman,Android Studio''',
                                  //textAlign: TextAlign.left,
                                ),

                                SizedBox(height:8.0),


                                Row(
                                    children:[
                                      MyBullet(),

                                      SizedBox(width:8.0),

                                      Text(
                                        'Others',
                                        style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold, fontSize: 16.0,),
                                      ),
                                    ]
                                ),

                                SizedBox(height:8.0),

                                Text(
                                  '     Product Management ',
                                  //textAlign: TextAlign.left,
                                ),

                                SizedBox(height:8.0),


                                Row(
                                    children:[
                                      MyBullet(),

                                      SizedBox(width:8.0),

                                      Text(
                                      "Soft Skills",
                                        style: TextStyle(color: Colors.black,
                                          fontWeight: FontWeight.bold, fontSize: 16.0,),
                                      ),
                                    ]
                                ),

                                SizedBox(height:8.0),

                                Text(
                                  '''     Leadership, Team Management,
     Communication Skills, Problem 
     Solving''',
                                  //textAlign: TextAlign.left,
                                ),



                              ],
                            ),
                          ),
                        ),

                            // ListTile(
                            //   leading: new MyBullet(),
                            //   title: new Text('Languages :'),
                            // ),
                            //
                            // ListTile(
                            //   leading: new MyBullet(),
                            //   title: new Text('Tools/ Technologies :'),
                            // ),
                            //
                            // ListTile(
                            //   leading: new MyBullet(),
                            //   title: new Text('Others :'),
                            // ),
                            //
                            // ListTile(
                            //   leading: new MyBullet(),
                            //   title: new Text('Soft Skills :'),
                            // ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}


class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 8.0,
      width: 8.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}

class MyBullet1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 8.0,
      width: 8.0,
      decoration: new BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}




//Center(
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width * 0.8,
//           child: screenSize.width > 1000
//               ? GridView.builder(
//                   shrinkWrap: true,
//                   gridDelegate:
//                       const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 2, childAspectRatio: 3),
//                   itemCount: projectList.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ProjectWidget(
//                       projectData: projectList[index],
//                     );
//                   })
//               : GridView.builder(
//                   shrinkWrap: true,
//                   gridDelegate:
//                       const SliverGridDelegateWithFixedCrossAxisCount(
//                           crossAxisCount: 1, childAspectRatio: 2),
//                   itemCount: projectList.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     return ProjectWidget(
//                       projectData: projectList[index],
//                     );
//                   }),
//         ),
//       ),
//     ],
//   ),
// ),
//),