import 'package:flutter/material.dart';
import 'package:widgets/components/globalappbar_component.dart';
import 'package:widgets/components/newsfeedcomponent.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {

  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "timeposted": "3 hours ago",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "timeposted": "48 minutes ago",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "timeposted": "5 hours ago",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
    {
      "usename": "Mike Serra",
      "timeposted": "12 minutes ago",
      "status": "On Work in the Laboratory",
      "likes": "55",
      "comments": "14",
      "shares": "6" 
    },
    {
      "username": "Hipocrates",
      "timeposted": "460 BC",
      "status": "Currently studying Mobile Application",
      "likes": "88",
      "comments": "55",
      "shares": "12",
    },
    {
      "username": "Jose Rizal",
      "timeposted": "Colonial Era",
      "status": "Resting in Peace",
      "likes": "196k",
      "comments": "55k",
      "shares": "14k",
    },
    {
      "username": "Manuel L. Quezon",
      "timeposted": "1878",
      "status": "Died long time ago",
      "likes": "55k",
      "comments": "24k",
      "shares": "5k",
    },
    {
      "username": "Jason Todd",
      "timeposted": "3 minutes ago",
      "status": "Fighting Gotham Thugs",
      "likes": "66k",
      "comments": "357",
      "shares": "88",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalappbarComponent(),

      body: ListView.builder(
        padding: const EdgeInsets.all(10),

        itemCount: newsfeed.length,

        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
            username: post["username"],
            timeposted: post["timeposted"],
            status: post["status"],
            numberoflikes: post["likes"],
            numberofcomments: post["comments"],
            numberofshares: post["shares"],
          );
        },
      ),
    );
  }
}