import 'package:flutter/material.dart';  
  
void main() {runApp(MyApp());}  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
        home: Scaffold(appBar: AppBar(  
          title: Text("Flutter GridView Demo"),  
        ),  
            body: GridView.count(  
                crossAxisCount: 3,  
                crossAxisSpacing: 4.0,  
                mainAxisSpacing: 8.0,  
                children: List.generate(choices.length, (index) {  
                  return Center(  
                    child: SelectCard(choice: choices[index]),  
                  );  
                }  
                )  
            )  
        )  
    );  
  }  
}  
  
class Choice {  
  const Choice({this.title, this.icon});  
  final String? title;  
  final IconData? icon;  
}  
  
const List<Choice> choices = const <Choice>[  
  const Choice(title: ''),  
  const Choice(title: ''),  
  const Choice(title: ''),  
  const Choice(title: ''),  
  const Choice(title: ''),  
  const Choice(title: ''),  
  const Choice(title: ''),  
  const Choice(title: ''),  
  const Choice(title: ''),  

];  
  
class SelectCard extends StatelessWidget {  
  const SelectCard({Key? key, required this.choice}) : super(key: key);  
  final Choice choice;  
  
  @override  
  Widget build(BuildContext context) {  
    final TextStyle? textStyle = Theme.of(context).textTheme.displaySmall;  
    return Card(  
        color: Color.fromARGB(255, 221, 218, 214),  
        child: Center(child: Column(  
            crossAxisAlignment: CrossAxisAlignment.center,  
            children: <Widget>[  
              Expanded(child: Icon(choice.icon, size:10.0, color: textStyle?.color)),  
              Text(choice.title!, style: textStyle),  
            ]  
          
        ),  
        )  
    );  
  }  
}  