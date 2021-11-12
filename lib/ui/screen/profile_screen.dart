import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:profilepage/ui/core/style.dart';
import 'package:profilepage/ui/core/user_card_ui.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: bwdPrimaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 10.0, left: 10.0, top: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border:
                    Border.all(style: BorderStyle.solid, color: bwdIconsColor),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage('assets/image/user1.png'),
                      radius: 30.0,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Mubarak Shuib',
                          style: bwdTextHeader,
                        ),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text(
                          'Mubarakshuib23@gmail.com',
                          style: bwdTextTitle,
                        ),
                        Text(
                          'University of Abuja',
                          style: bwdTextTitle,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(vertical: 15.0, horizontal: 5.0),
              child: const Text(
                'General',
                style: bwdTextHeader,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    UserCardUI(
                      cardText: 'Edit Profile',
                      cardIcon: Icons.person,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    UserCardUI(
                      cardText: 'Badges',
                      cardIcon: Icons.badge,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    UserCardUI(
                        cardText: 'Study Goals',
                        cardIcon: Icons.add_circle_outline),
                    const SizedBox(
                      height: 20.0,
                    ),
                    UserCardUI(
                      cardText: 'Focus Mode',
                      cardIcon: Icons.notifications_off,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    UserCardUI(
                      cardText: 'School Schedule',
                      cardIcon: Icons.next_plan,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    UserCardUI(
                      cardText: 'Invite Friends',
                      cardIcon: Icons.people,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
