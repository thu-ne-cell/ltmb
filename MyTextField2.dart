import "package:flutter/material.dart";
class MyTextField2 extends StatefulWidget{
@override
  State<StatefulWidget> createState() => _MyTextFieldState();
}
class _MyTextFieldState extends State<MyTextField2>{
 final _textController = TextEditingController();
 String _inputuText = '';
  @override
  Widget build(BuildContext context) {
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
      body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 16.0),
      child: Center(
          child: Column(
              children: [
                SizedBox(height: 50),

                TextField(
controller: _textController,
                  decoration: InputDecoration(
                    labelText: "Nhap thong tin",
                    hintText: "Nhap thong tin cua ban",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: IconButton(
                        onPressed: (){
                          _textController.clear();
                        },
                        icon: Icon(Icons.clear)
                    )
                  ),
                  onChanged: (value){
                    setState(() {
                      _inputuText = value;
                    });
                  },
                ),
                SizedBox(height: 50,),
                Text('Ban da nhap: $_inputuText', style: TextStyle(fontSize: 24),),
              ]
          )
      ),
      ),
    );
  }

}