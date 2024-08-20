import 'package:flutter/material.dart';

import 'widget/widget.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(),
          Expanded(
            child: Header(),
          )
        ],
      ),
    );
  }
}
