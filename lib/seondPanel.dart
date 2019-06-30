import 'package:flutter/material.dart';


class SecondPanels extends StatefulWidget {

  final AnimationController controller;
  SecondPanels({this.controller});

  @override
  _SecondPanelsState createState() => _SecondPanelsState();
}

class _SecondPanelsState extends State<SecondPanels> {

  List<String> images = [
    "https://scontent-lga3-1.cdninstagram.com/vp/4eb8856f3d5423030f6815f5825a89fe/5DBAFFA8/t51.2885-15/e35/64898960_903432586661213_3228971311189612228_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://static.mijnwebwinkel.nl/winkel/muurtotleven/image/cache/full/40a209c8af3e0abe5096326d92cf5f6a4890a443.jpg",
    "https://scontent-lga3-1.cdninstagram.com/vp/2a83a4dd74bd51a028e7bb265224ecb5/5DC26D5C/t51.2885-15/e35/61617225_197201711262350_7600744968871881993_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/e344c66a7dcb63ce9bea68d115794c99/5DC3975F/t51.2885-15/e35/65209792_177801973247683_5700444363579090326_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/8502b11b3a03ba076d41f28116171071/5DA7F443/t51.2885-15/e35/s1080x1080/65221822_154574085679519_4519640284689108692_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/1c318ebfc558851a97197787c53e81c8/5DA38EC9/t51.2885-15/e35/64581263_467100783854159_8374000692577049738_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/03699c1a9df405c28873b5f89b4f3dfd/5DA651FA/t51.2885-15/e35/64604467_1293860670795458_9176731794449519181_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/7720ae6c18ce7783bee75a2c3a8fd7e9/5DAE9A05/t51.2885-15/e35/62577558_1292136220967430_2842374465650517068_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/bd2786b33a5fc77e8e3f0fbd75ad060e/5DC1EBAA/t51.2885-15/fr/e15/s1080x1080/65083027_416002345661601_9119686544039986404_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/edba6520c9142fc7f9be2978bf7adef7/5DB95C84/t51.2885-15/e35/64589683_119399022649034_6553174539738083193_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/4eb8856f3d5423030f6815f5825a89fe/5DBAFFA8/t51.2885-15/e35/64898960_903432586661213_3228971311189612228_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://static.mijnwebwinkel.nl/winkel/muurtotleven/image/cache/full/40a209c8af3e0abe5096326d92cf5f6a4890a443.jpg",
    "https://scontent-lga3-1.cdninstagram.com/vp/2a83a4dd74bd51a028e7bb265224ecb5/5DC26D5C/t51.2885-15/e35/61617225_197201711262350_7600744968871881993_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/e344c66a7dcb63ce9bea68d115794c99/5DC3975F/t51.2885-15/e35/65209792_177801973247683_5700444363579090326_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/8502b11b3a03ba076d41f28116171071/5DA7F443/t51.2885-15/e35/s1080x1080/65221822_154574085679519_4519640284689108692_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/1c318ebfc558851a97197787c53e81c8/5DA38EC9/t51.2885-15/e35/64581263_467100783854159_8374000692577049738_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/03699c1a9df405c28873b5f89b4f3dfd/5DA651FA/t51.2885-15/e35/64604467_1293860670795458_9176731794449519181_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/7720ae6c18ce7783bee75a2c3a8fd7e9/5DAE9A05/t51.2885-15/e35/62577558_1292136220967430_2842374465650517068_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/bd2786b33a5fc77e8e3f0fbd75ad060e/5DC1EBAA/t51.2885-15/fr/e15/s1080x1080/65083027_416002345661601_9119686544039986404_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/edba6520c9142fc7f9be2978bf7adef7/5DB95C84/t51.2885-15/e35/64589683_119399022649034_6553174539738083193_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/4eb8856f3d5423030f6815f5825a89fe/5DBAFFA8/t51.2885-15/e35/64898960_903432586661213_3228971311189612228_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://static.mijnwebwinkel.nl/winkel/muurtotleven/image/cache/full/40a209c8af3e0abe5096326d92cf5f6a4890a443.jpg",
    "https://scontent-lga3-1.cdninstagram.com/vp/2a83a4dd74bd51a028e7bb265224ecb5/5DC26D5C/t51.2885-15/e35/61617225_197201711262350_7600744968871881993_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/e344c66a7dcb63ce9bea68d115794c99/5DC3975F/t51.2885-15/e35/65209792_177801973247683_5700444363579090326_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/8502b11b3a03ba076d41f28116171071/5DA7F443/t51.2885-15/e35/s1080x1080/65221822_154574085679519_4519640284689108692_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/1c318ebfc558851a97197787c53e81c8/5DA38EC9/t51.2885-15/e35/64581263_467100783854159_8374000692577049738_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/03699c1a9df405c28873b5f89b4f3dfd/5DA651FA/t51.2885-15/e35/64604467_1293860670795458_9176731794449519181_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/7720ae6c18ce7783bee75a2c3a8fd7e9/5DAE9A05/t51.2885-15/e35/62577558_1292136220967430_2842374465650517068_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/bd2786b33a5fc77e8e3f0fbd75ad060e/5DC1EBAA/t51.2885-15/fr/e15/s1080x1080/65083027_416002345661601_9119686544039986404_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/edba6520c9142fc7f9be2978bf7adef7/5DB95C84/t51.2885-15/e35/64589683_119399022649034_6553174539738083193_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/4eb8856f3d5423030f6815f5825a89fe/5DBAFFA8/t51.2885-15/e35/64898960_903432586661213_3228971311189612228_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://static.mijnwebwinkel.nl/winkel/muurtotleven/image/cache/full/40a209c8af3e0abe5096326d92cf5f6a4890a443.jpg",
    "https://scontent-lga3-1.cdninstagram.com/vp/2a83a4dd74bd51a028e7bb265224ecb5/5DC26D5C/t51.2885-15/e35/61617225_197201711262350_7600744968871881993_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/e344c66a7dcb63ce9bea68d115794c99/5DC3975F/t51.2885-15/e35/65209792_177801973247683_5700444363579090326_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/8502b11b3a03ba076d41f28116171071/5DA7F443/t51.2885-15/e35/s1080x1080/65221822_154574085679519_4519640284689108692_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/1c318ebfc558851a97197787c53e81c8/5DA38EC9/t51.2885-15/e35/64581263_467100783854159_8374000692577049738_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/03699c1a9df405c28873b5f89b4f3dfd/5DA651FA/t51.2885-15/e35/64604467_1293860670795458_9176731794449519181_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/7720ae6c18ce7783bee75a2c3a8fd7e9/5DAE9A05/t51.2885-15/e35/62577558_1292136220967430_2842374465650517068_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/bd2786b33a5fc77e8e3f0fbd75ad060e/5DC1EBAA/t51.2885-15/fr/e15/s1080x1080/65083027_416002345661601_9119686544039986404_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/edba6520c9142fc7f9be2978bf7adef7/5DB95C84/t51.2885-15/e35/64589683_119399022649034_6553174539738083193_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/4eb8856f3d5423030f6815f5825a89fe/5DBAFFA8/t51.2885-15/e35/64898960_903432586661213_3228971311189612228_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://static.mijnwebwinkel.nl/winkel/muurtotleven/image/cache/full/40a209c8af3e0abe5096326d92cf5f6a4890a443.jpg",
    "https://scontent-lga3-1.cdninstagram.com/vp/2a83a4dd74bd51a028e7bb265224ecb5/5DC26D5C/t51.2885-15/e35/61617225_197201711262350_7600744968871881993_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/e344c66a7dcb63ce9bea68d115794c99/5DC3975F/t51.2885-15/e35/65209792_177801973247683_5700444363579090326_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/8502b11b3a03ba076d41f28116171071/5DA7F443/t51.2885-15/e35/s1080x1080/65221822_154574085679519_4519640284689108692_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/1c318ebfc558851a97197787c53e81c8/5DA38EC9/t51.2885-15/e35/64581263_467100783854159_8374000692577049738_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/03699c1a9df405c28873b5f89b4f3dfd/5DA651FA/t51.2885-15/e35/64604467_1293860670795458_9176731794449519181_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/7720ae6c18ce7783bee75a2c3a8fd7e9/5DAE9A05/t51.2885-15/e35/62577558_1292136220967430_2842374465650517068_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/bd2786b33a5fc77e8e3f0fbd75ad060e/5DC1EBAA/t51.2885-15/fr/e15/s1080x1080/65083027_416002345661601_9119686544039986404_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/edba6520c9142fc7f9be2978bf7adef7/5DB95C84/t51.2885-15/e35/64589683_119399022649034_6553174539738083193_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/4eb8856f3d5423030f6815f5825a89fe/5DBAFFA8/t51.2885-15/e35/64898960_903432586661213_3228971311189612228_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://static.mijnwebwinkel.nl/winkel/muurtotleven/image/cache/full/40a209c8af3e0abe5096326d92cf5f6a4890a443.jpg",
    "https://scontent-lga3-1.cdninstagram.com/vp/2a83a4dd74bd51a028e7bb265224ecb5/5DC26D5C/t51.2885-15/e35/61617225_197201711262350_7600744968871881993_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-lga3-1.cdninstagram.com/vp/e344c66a7dcb63ce9bea68d115794c99/5DC3975F/t51.2885-15/e35/65209792_177801973247683_5700444363579090326_n.jpg?_nc_ht=scontent-lga3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/8502b11b3a03ba076d41f28116171071/5DA7F443/t51.2885-15/e35/s1080x1080/65221822_154574085679519_4519640284689108692_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/1c318ebfc558851a97197787c53e81c8/5DA38EC9/t51.2885-15/e35/64581263_467100783854159_8374000692577049738_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/03699c1a9df405c28873b5f89b4f3dfd/5DA651FA/t51.2885-15/e35/64604467_1293860670795458_9176731794449519181_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/7720ae6c18ce7783bee75a2c3a8fd7e9/5DAE9A05/t51.2885-15/e35/62577558_1292136220967430_2842374465650517068_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",
    "https://scontent-iad3-1.cdninstagram.com/vp/bd2786b33a5fc77e8e3f0fbd75ad060e/5DC1EBAA/t51.2885-15/fr/e15/s1080x1080/65083027_416002345661601_9119686544039986404_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com",
    "https://scontent-yyz1-1.cdninstagram.com/vp/edba6520c9142fc7f9be2978bf7adef7/5DB95C84/t51.2885-15/e35/64589683_119399022649034_6553174539738083193_n.jpg?_nc_ht=scontent-yyz1-1.cdninstagram.com",

  ];

  static const header_height = 32.0;

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints){
    final height = constraints.biggest.height;
    final backPanelHeight = height - header_height;
    final frontPanelHeight = -header_height;

    return new RelativeRectTween(
      begin: new RelativeRect.fromLTRB(0.0, backPanelHeight, 0.0, frontPanelHeight),
      end: new RelativeRect.fromLTRB(0.0, 0.0, 0.0, 0.0),
      
    ).animate(new CurvedAnimation(
        parent: widget.controller,
        curve: Curves.linear));
  }

  Widget bothPanels(BuildContext context, BoxConstraints constraints){

    final ThemeData theme = Theme.of(context);
    return new Container(
      child: new Stack(
        children: <Widget>[
          new Container(
            color: theme.primaryColor,
            child: new Center(
              child: new Text("Back Panel",style: new TextStyle(
                fontSize: 30.0,
                color: Colors.white
              ),),
            ),
          ),

          new PositionedTransition(
            rect: getPanelAnimation(constraints),
            child: new Material(
              elevation: 12.0,
              borderRadius: new BorderRadius.only(
                topLeft: new Radius.circular(45.0)
              ),
              child: Column(
                children: <Widget>[
                   new Container(
                     height: header_height,
                     margin: EdgeInsets.only(bottom: 20.0),
                    // padding: EdgeInsets.only(top: 5),
                     child: new Center(
                       child: new Text("Wallpapers",
                         style: Theme.of(context).textTheme.headline,
                       ),
                     ),
                   ),

                  new Expanded(
                      child: GridView(
                        physics: BouncingScrollPhysics(), // if you want IOS bouncing effect, otherwise remove this line
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),//change the number as you want
                        children: images.map((url){
                          return Card(child: Image.network(url));
                        }).toList(),
                      ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new LayoutBuilder(builder: bothPanels);
  }
}
