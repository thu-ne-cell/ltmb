import "package:flutter/material.dart";

class MyColumnAndRow extends StatelessWidget {
  const MyColumnAndRow({super.key});
  @override
  Widget build(BuildContext context) {
    //Trả về Scaffold - widget cung cấp bố cục Material Déign cơ bản
    // Màn Hình
    return Scaffold(
    // Tiêu đề của ứng dụng
      appBar: AppBar(
      title: Text("App_02"),
        backgroundColor: Colors.yellow,
        // Do nang / do bong cua Appbar
        elevation: 4,
        actions: [
          IconButton(
              onPressed: (){print("b1");}
          ,icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: (){print("b2");}
            ,icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: (){print("b3");}
            ,icon: Icon(Icons.more_vert),
          ),
        ],
      ),

      body: Center(child: Center(
        child: Column(
          children: [
            Row(
              children: [
                const SizedBox(height: 50,),
                const Icon(Icons.accessible_forward_outlined),
                const Icon(Icons.ac_unit),
                const Icon(Icons.accessibility_new_rounded),
              ],
            ),
            Row(
              children: [
                Text("Text1............"),
                Text("Text2............"),
                Text("Text3............"),
                Text("Text4............"),
              ],
            )
          ],
        ),
      )),

      floatingActionButton: FloatingActionButton(
          onPressed: () {print("pressed");},
      child: const Icon(Icons.add_ic_call),
    ),
bottomNavigationBar: BottomNavigationBar(items: [
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "Trang chu"),
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "Tim kiem"),
  BottomNavigationBarItem(icon: Icon(Icons.home),label: "Ca nhan"),
]),
    );
  }
}
