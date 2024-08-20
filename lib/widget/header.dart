import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            height: 100,
            width: double.infinity,
            child: Row(
              children: [
                Icon(
                  Icons.message,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(width: 20),
                Text(
                  'Messaging',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Container(
                  constraints: BoxConstraints(maxWidth: 120),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Search',
                        suffixIcon: Icon(Icons.search)),
                  ),
                ),
                SizedBox(width: 20),
                Stack(
                  children: [
                    Icon(Icons.notifications, size: 30),
                    Positioned(
                      top: 4,
                      right: 1,
                      child: Container(
                        height: 17,
                        width: 17,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: Text(
                          "1",
                          style: TextStyle(
                            fontSize: 9,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://github.com/patsferrer.png",
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
