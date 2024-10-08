import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widget/widget.dart';

class ChatBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    DeviceScreenType deviceScreenType =
        getDeviceType(MediaQuery.of(context).size);

    final scaffoldKey = GlobalKey<ScaffoldState>();

    openDrawer() {
      scaffoldKey.currentState!.openDrawer(); //adicionei o !
    }

    return Scaffold(
        key: scaffoldKey,
        drawer: Container(
          width: 100,
          child: Drawer(
            child: Sidebar(),
          ),
        ),
        body: ScreenTypeLayout.builder(
            desktop: (BuildContext context) => Row(
                  children: [
                    Sidebar(),
                    CustomDivider(),
                    Expanded(
                      child: Column(
                        children: [
                          Header(
                            deviceScreenType: deviceScreenType,
                            openDrawer: openDrawer,
                          ),
                          Divider(),
                          Expanded(
                            child: Row(
                              children: [
                                Container(
                                  width: 400,
                                  child: ChatMember(
                                      deviceScreenType: deviceScreenType),
                                ),
                                CustomDivider(),
                                Expanded(child: MessageBox()),
                                CustomDivider(),
                                if (MediaQuery.of(context).size.width > 1347)
                                  Container(
                                    width: 400,
                                    child: MoreDetails(),
                                  ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
            tablet: (BuildContext context) => Row(
                  children: [
                    Sidebar(),
                    CustomDivider(),
                    Expanded(
                        child: Column(
                      children: [
                        Header(
                          deviceScreenType: deviceScreenType,
                          openDrawer: openDrawer,
                        ),
                        Divider(),
                        Expanded(
                          child: ChatMember(deviceScreenType: deviceScreenType),
                        ),
                      ],
                    )),
                  ],
                ),
            mobile: (BuildContext context) => Column(
                  children: [
                    Header(
                      deviceScreenType: deviceScreenType,
                      openDrawer: openDrawer,
                    ),
                    Expanded(
                      child: ChatMember(
                        deviceScreenType: deviceScreenType,
                      ),
                    ),
                  ],
                )));
  }
}
