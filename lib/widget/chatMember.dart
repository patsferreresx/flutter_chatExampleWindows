import 'package:chat_teste/widget/messageBox.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ChatMember extends StatelessWidget {
  final DeviceScreenType deviceScreenType;

  const ChatMember({super.key, required this.deviceScreenType});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
      child: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Chats",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                          ),
                        ),
                        Spacer(),
                        IconButton(icon: Icon(Icons.search), onPressed: () {}),
                        SizedBox(width: 20),
                        IconButton(
                            icon: Icon(
                              Icons.add,
                              color: Theme.of(context).primaryColor,
                            ),
                            onPressed: () {}),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.blue.withOpacity(.1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text("Open",
                              style: TextStyle(color: Colors.blue)),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.blue.withOpacity(.1),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "Done",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            border: Border.all(
                                color: Theme.of(context).iconTheme.color ??
                                    const Color(0xFF9BA6BB),
                                width: .5),
                          ),
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            "Open",
                            style: TextStyle(
                                color: Theme.of(context).iconTheme.color),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      children: List.generate(
                        members.length,
                        (index) => MemberCard(
                          member: members[index],
                          deviceScreenType: deviceScreenType,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Icon(Icons.feedback),
              SizedBox(width: 10),
              Text(
                "Submit Feedback",
                style: TextStyle(color: Theme.of(context).iconTheme.color),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MemberCard extends StatelessWidget {
  final Member member;
  final bool showJob;
  final Widget? trailing;
  final DeviceScreenType? deviceScreenType;

  const MemberCard(
      {super.key,
      this.deviceScreenType,
      this.showJob = false,
      required this.member,
      this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          if (deviceScreenType == DeviceScreenType.mobile ||
              deviceScreenType == DeviceScreenType.tablet) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Scaffold(
                    body: MessageBox(),
                    appBar: AppBar(
                      backgroundColor:
                          Theme.of(context).scaffoldBackgroundColor,
                      elevation: 0,
                      title: Text(
                        "Messaging",
                        style: TextStyle(color: Colors.black),
                      ),
                      iconTheme: IconThemeData(
                          color: Theme.of(context).iconTheme.color),
                    ),
                  );
                },
              ),
            );
          }
        },
        title: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Text(
            member.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(member.image),
            ),
          ),
        ),
        trailing: trailing ?? Text("2h"),
        subtitle: showJob ? Text(member.job) : Text(member.lastMessage),
      ),
    );
  }
}

class Member {
  final String image;
  final String title;
  final String lastMessage;
  final String job;

  Member(this.image, this.title, this.lastMessage, this.job);
}

List<Member> members = [
  Member("https://github.com/airaarima.png", "Aira Arima",
      "Gurias, tô saindo aqui", "UX Design & Full Stack"),
  Member("https://github.com/karinasantana-esx.png", "Karina Santana",
      "you: Manda meu pix", "Full Stack"),
  Member(
      "https://i.pinimg.com/originals/ff/80/3b/ff803b914dc9d8a4d1ec9010675a02b1.jpg",
      "Pirulito",
      "TE-O-RI-CA-MEN-TE funciona!",
      "TechLead"),
  Member(
      "https://s2.glbimg.com/TEO1m7Y0mgAP02X4cjhkKfFEAbI=/smart/s.glbimg.com/es/ge/f/original/2016/09/07/messi.jpg",
      "Irineu Júnior",
      "Você não sabe, nem eu!",
      "Freelancer"),
];
