import 'package:backdrop/seondPanel.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    theme: new ThemeData(
      primarySwatch: Colors.red,
    ),
    home: new BackdropPage(),
  ));
}

class BackdropPage extends StatefulWidget {
  @override
  _BackdropPageState createState() => _BackdropPageState();
}

class _BackdropPageState extends State<BackdropPage> with SingleTickerProviderStateMixin{

  AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new AnimationController(
        vsync: this,
       duration: new Duration(milliseconds: 100),
      value: 1.0
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  bool get isPanelVisible{
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed || status == AnimationStatus.forward;
  }


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        title: new Text("Backdrop"),
        leading: new IconButton(
            icon: new AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: controller.view
            ),
          onPressed: () {
              controller.fling(velocity: isPanelVisible?-1.0:1.0);
          },
        ),
      ),
      body: new SecondPanels(
        controller: controller,
      ),
    );
  }
}

