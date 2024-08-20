import 'package:flutter/material.dart';

class ChatMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text("Open", style: TextStyle(color: Colors.blue)),
              ),
              SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.blue.withOpacity(.1),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text(
                  "Open",
                  style: TextStyle(color: Theme.of(context).iconTheme.color),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Column(
            children: List.generate(
              members.length,
              (index) => Container(
                margin: EdgeInsets.only(bottom: 20),
                child: ListTile(
                  onTap: () {},
                  title: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      members[index].title,
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
                        image: NetworkImage(members[index].image),
                      ),
                    ),
                  ),
                  trailing: Text("2h"),
                  subtitle: Text(members[index].lastMessage),
                ),
              ),
            ),
          ),
          Spacer(),
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

class Member {
  final String image;
  final String title;
  final String lastMessage;

  Member(this.image, this.title, this.lastMessage);
}

List<Member> members = [
  Member("https://github.com/airaarima.png", "Aira Arima",
      "Gurias, tô saindo aqui"),
  Member("https://github.com/karinasantana-esx.png", "Karina Santana",
      "you: Manda meu pix"),
  Member(
      "https://i.pinimg.com/originals/ff/80/3b/ff803b914dc9d8a4d1ec9010675a02b1.jpg",
      "Pirulito",
      "TE-O-RI-CA-MEN-TE funciona!"),
  Member(
      "https://s2.glbimg.com/TEO1m7Y0mgAP02X4cjhkKfFEAbI=/smart/s.glbimg.com/es/ge/f/original/2016/09/07/messi.jpg",
      "Irineu Júnior",
      "Você não sabe, nem eu!"),
];
