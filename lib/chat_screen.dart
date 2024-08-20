import 'package:flutter/material.dart';

import 'widget/widget.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Sidebar(),
          CustomDivider(),
          Expanded(
            child: Column(
              children: [
                Header(),
                Divider(),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        width: 400,
                        child: ChatMember(),
                      ),
                      CustomDivider(),
                      Expanded(child: Container()),
                      CustomDivider(),
                      Container(width: 400),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).dividerColor,
      width: 1,
    );
  }
}
