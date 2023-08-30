
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
       theme: ThemeData(primarySwatch: Colors.deepPurple),
       darkTheme:ThemeData(primarySwatch: Colors.blueGrey),
       color: Colors.blue,
       debugShowCheckedModeBanner: false,
       home:HomeActivity(),

   );
  }
}


class HomeActivity extends StatelessWidget{
  const HomeActivity({super.key});

  MySnackBar(message, context){
   return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message))
    );
  }

  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar:AppBar(title: Text("HRM App"),
      titleSpacing: 16,
      centerTitle: false,
      toolbarHeight: 56,
      elevation: 5,
      backgroundColor: Colors.deepPurple,
      actions: [
        IconButton(onPressed: (){MySnackBar("I am Search", context);}, icon:Icon(Icons.search)),
        IconButton(onPressed: (){MySnackBar("I am Mail", context);}, icon:Icon(Icons.mail)),
        IconButton(onPressed: (){MySnackBar("I am Share", context);}, icon:Icon(Icons.share)),
      ],


    ),
    floatingActionButton: FloatingActionButton(
      elevation: 10,
      child: Icon(Icons.add),
      backgroundColor: Colors.deepPurple,
      onPressed: (){
        MySnackBar("I am a floating action button", context);
      },

    ),
    bottomNavigationBar: BottomNavigationBar(
      currentIndex: 1,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        BottomNavigationBarItem(icon: Icon(Icons.phone),label: "Contact"),
      ],
      onTap:(int index) {
        if (index == 0) {
          MySnackBar("I am Home", context);
        }
        if (index == 1) {
          MySnackBar("I am Profile", context);
        }
        if (index == 2) {
          MySnackBar("I am Contact", context);
        }
      }
    ),
    drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.all(0),

                  child:UserAccountsDrawerHeader(
                    decoration: BoxDecoration(color: Colors.deepPurple),
                    accountName: Text("Murad",style: TextStyle(color:Colors.blue),),
                    accountEmail: Text('murad@gmail.com'),
                    currentAccountPicture:Image.network("https://w7.pngwing.com/pngs/57/178/png-transparent-flutter-logos-brands-icon.png") ,
                  )

              ),
              ListTile(title: Text("Support"),
                leading: Icon(Icons.support),
                onTap:(){MySnackBar("I am Support", context);} ,),

              ListTile(title: Text("Settings"),
                leading: Icon(Icons.settings),
                onTap:(){MySnackBar("I am Settings", context);} ,),

              ListTile(title: Text("FAQ"),
                leading: Icon(Icons.policy),
                onTap:(){MySnackBar("FAQ", context);} ,),

              ListTile(title: Text("Contact"),
                leading: Icon(Icons.phone),
               onTap:(){MySnackBar("Contact", context);} ,),
            ],
          ),

    ),
    body: Container(
      height: 160,
      width: 160,
      alignment: Alignment.topCenter,
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(10),
      child: Image.network("https://media.licdn.com/dms/image/D5603AQGJSZYQd9nDGQ/profile-displayphoto-shrink_800_800/0/1684514519090?e=2147483647&v=beta&t=14SC1l83nYV1mysBCI0dXZwvEp85HC0A1n8a62uDVVo"),
      decoration: BoxDecoration(
      color: Colors.deepPurple,
          border: Border.all(color: Colors.black, width: 5),


      ),

    )
    

    );
  }

}