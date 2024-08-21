import 'package:chat_teste/color.dart';
import 'package:flutter/material.dart';

class MessageBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Scouting Group",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(height: 50),
                    Text(
                      "Welcome to Stream line scouting chat",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "We can now freely collaborate regarding our current demand\n"
                      "Any question about the documentation or the project\n"
                      "please feel free to get in contact us\n",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 30),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Tuesday, April 7th at 1:21PM",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).iconTheme.color),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(),
                          SizedBox(width: 10),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                _buildMessage(
                                    "Oi.. sou o ChatUs, como você se 100te hoxe? Turu pom?"),
                                _buildMessage(
                                    "Estou te mandando isso pq estou vendo que vc tá vendo live de Valorant faz 2h"),
                                _buildMessage(
                                    "Vai trabalhar vagabol akakaka com todo respeitum rs"),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                _buildMessage(
                                  "Opa lindãum, esqueci a aba aberta sem querer heehe ",
                                  isSend: true,
                                ),
                                _buildMessage(
                                  "não tô vendo nada D: é youtube de código",
                                  isSend: true,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 10),
                          CircleAvatar(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            child: Row(
              children: [
                IconButton(icon: Icon(Icons.attach_file), onPressed: () {}),
                Expanded(
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Write message...",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.send_rounded,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Container _buildMessage(String message, {bool isSend = false}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: isSend
            ? KColor.primaryColor
            : (Colors.grey[300] ?? Colors.grey).withOpacity(.4),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Text(
        message,
        style: TextStyle(color: isSend ? Colors.white : null),
      ),
    );
  }
}
