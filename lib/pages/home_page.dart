import 'package:chat_ui/models/dragable_sheet_img_model.dart';
import 'package:chat_ui/screens/home_screen.dart';
import 'package:draggable_bottom_sheet/draggable_bottom_sheet.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          body: DraggableBottomSheet(
            minExtent: 90,
            useSafeArea: false,
            curve: Curves.easeIn,
            previewWidget: _previewWidget(),
            expandedWidget: _expandedWidget(),
            backgroundWidget: const HomeScreen(),
            maxExtent: MediaQuery.of(context).size.height * 0.8,
            onDragging: (pos) {},
          ),
        );
      }),
    );
  }

  Widget _previewWidget() {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: const BoxDecoration(
        color: Color(0xffcccccc),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          const Icon(Icons.keyboard_arrow_up_rounded,
              size: 30, color: Colors.black),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: lists.map((img) {
                return Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(right: 13),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: img.image);
              }).toList())
        ],
      ),
    );
  }

  Widget _expandedWidget() {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: <Widget>[
          const Icon(Icons.keyboard_arrow_down, size: 30, color: Colors.white),
          Expanded(
            child: GridView.builder(
                itemCount: lists.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (context, index) {
                  ListModel listItems = lists[index];
                  return GestureDetector(
                    onTap: () {
                      listItems.onTap(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: listItems.image)),
                  );
                }),
          )
        ],
      ),
    );
  }
}
