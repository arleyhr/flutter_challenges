import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:restaurant_details_review/models/menu_item.dart';

final Color mainColor = Color.fromRGBO(214, 65, 0, 1);
final Color lightGreyColor = Color.fromRGBO(217, 217, 217, 1);
final Color greyColor = Color.fromRGBO(244, 244, 244, 1);


class RestaurantDetailsReview extends StatefulWidget {
  RestaurantDetailsReview({Key? key}) : super(key: key);

  _RestaurantDetailsReviewState createState() => _RestaurantDetailsReviewState();
}

class _RestaurantDetailsReviewState extends State<RestaurantDetailsReview> {
  String _getImage (image) => 'https://github.com/arleyhr/flutter_challenges/blob/develop/restaurant_details_review/lib/assets/$image?raw=true';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        leading: Icon(Icons.menu, size: 30),
        actions: <Widget>[
          Icon(Icons.search, size: 30),
          SizedBox(width: 10.0)
        ],
        title: Text('Food Details Review', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300)),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          RestaurantDetail(image: _getImage('dinner.png')),
          NavBar(),
          MenuGridView(getImage: _getImage),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: RawMaterialButton(
              fillColor: mainColor,
              padding: EdgeInsets.symmetric(vertical: 15),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {},
              child: Text('VIEW ALL', style: TextStyle(color: Colors.white, fontSize: 16)),
            ),
          )
        ],
      ),
    );
  }
}

class RestaurantDetail extends StatelessWidget {
  final String? image;
  RestaurantDetail({ Key? key, this.image }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(top: 40, bottom: 40, left: 20, right: 20),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: lightGreyColor, width: 2),
                borderRadius: BorderRadius.circular(10)
              ),
              padding: EdgeInsets.all(5),
              child: Image.network(image!, width: 65),
              height: 80,
              width: 80,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('PeGast Marceau', style: TextStyle(color: Colors.black, fontSize: 20)),
                SizedBox(height: 5),
                Text('48 Avenue Marceau, 75008 PARIS', style: TextStyle(color: Colors.grey, fontSize: 12)),
                SizedBox(height: 15),
                Row(
                  children: <Widget>[
                    Icon(Icons.star, color: mainColor, size: 16),
                    Icon(Icons.star, color: mainColor, size: 16),
                    Icon(Icons.star, color: mainColor, size: 16),
                    Icon(Icons.star, color: mainColor, size: 16),
                    Icon(Icons.star, color: lightGreyColor, size: 16)
                  ],
                )
              ],
            ),
            Icon(Icons.more_vert, color: lightGreyColor)
          ],
        ),
      );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: greyColor,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            height: 60,
            width: 80,
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 2),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: mainColor
                )
              )
            ),
            child: Text('Menu', style: TextStyle(color: mainColor, fontWeight: FontWeight.w600)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: lightGreyColor,
                  width: 2
                ),
                right: BorderSide(
                  color: lightGreyColor,
                  width: 2
                )
              )
            ),
            child: Text('Reviews (951)', style: TextStyle(fontWeight: FontWeight.w600)),
          ),
          Container(
            child: Text('Informations', style: TextStyle(color: lightGreyColor)),
          ),
        ],
      ),
    );
  }
}

class MenuGridView extends StatefulWidget {
  final Function? getImage;

  MenuGridView({ Key? key, this.getImage }) : super(key: key);

  @override
  _MenuGridViewState createState() => _MenuGridViewState();
}

class _MenuGridViewState extends State<MenuGridView> {
  int? selectedItem = 2;

  _selectItem(item) {
    setState(() {
      selectedItem = item;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: menuItems.length + 1, // + 1 extra button
      shrinkWrap: true,
      padding: EdgeInsets.only(top: 30, bottom: 30, left: 20, right: 20),
      controller: ScrollController(keepScrollOffset: false),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
      ),
      itemBuilder: (context, i) {
        final bool isExtraButtonIndex = menuItems.length == i;

        if(isExtraButtonIndex) {
          return DottedBorder(
            dashPattern: [8, 5],
            borderType: BorderType.RRect,
            radius: Radius.circular(10),
            strokeWidth: 2,
            color: Colors.grey,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                alignment: Alignment.center,
                child: Image.network(widget.getImage!('plus.png'), width: 30,),
              ),
            )
            );
        }

        final MenuItem item = menuItems[i];
        final bool isSelected = item.id == selectedItem;

        return GestureDetector(
          onTap: () => _selectItem(item.id),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: isSelected ? mainColor : lightGreyColor, width: 2),
              borderRadius: BorderRadius.circular(10),
              boxShadow: !isSelected ? null : [
                BoxShadow(
                  blurRadius: 10,
                  color: lightGreyColor,
                  offset: Offset.zero
                ),
                BoxShadow(
                  blurRadius: 5,
                  color: lightGreyColor,
                  offset: Offset.zero
                ),
              ]
            ),
            padding: EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: Image.network(item.image!, width: 30),
                  margin: EdgeInsets.only(bottom: 5),
                  height: 35,
                ),
                Text(item.name!, style: TextStyle(
                  color: isSelected ? Colors.black : Colors.grey,
                  fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal
                ))
              ],
            ),
          ),
        );
      },
    );
  }
}
