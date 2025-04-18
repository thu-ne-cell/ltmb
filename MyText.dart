import "package:flutter/material.dart";

class MyText extends StatelessWidget {
  const MyText({super.key});
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

      body: Center(child: Column(
       children: [
         const SizedBox(height: 50,),
         //Test co ban
         const Text("Huynh Thi Thanh Truc"),
         const SizedBox(height: 20,),
         const Text("Xin chao cac ban dang hoc lap trinh Flutter",
         textAlign: TextAlign.center,
         style: TextStyle(
           fontSize: 30,
           fontWeight: FontWeight.bold,
           color: Colors.blue,
           letterSpacing: 1.5,
         ),
         ),
       ]
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
