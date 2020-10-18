import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Settings(),
    );
  }
}

class Settings extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.grey.shade300,
        title: Text('Settings',style: TextStyle(color: Colors.black),),
      ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
            Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              margin: const EdgeInsets.all(8.0),
              color: Colors.green,
              child: ListTile(
                onTap: (){
                //open edit profile
                },

            title: Text("John Doe",style: TextStyle(color:Colors.white),),
            leading: CircleAvatar(
                  child: ClipOval(
                  child: Image.network(
                    'https://cdn.imgbin.com/2/4/15/imgbin-computer-icons-portable-network-graphics-avatar-icon-design-avatar-DsZ54Du30hTrKfxBG5PbwvzgE.jpg',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
            ),
              trailing: Icon(Icons.edit,color: Colors.white,),
          ),
        ),
        const SizedBox(height: 10.0),
        Card(
        elevation: 4.0,
        margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
  child: Column(
      children: <Widget>[
        ListTile(
            leading: Icon(Icons.lock_outline, color: Colors.green,),
            title: Text("Change Password"),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){
              //open change password
            },
        ),
        buildDivider(),
        ListTile(
          leading: Icon(Icons.account_circle_outlined, color: Colors.green,),
          title: Text("Change Username"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            //open change location
          },
        ),
        buildDivider(),
        ListTile(
          leading: Icon(Icons.email_outlined, color: Colors.green,),
          title: Text("Change Email"),
          trailing: Icon(Icons.keyboard_arrow_right),
          onTap: (){
            //open change location
          },
        ),
       ],
      ),
      ),
          const SizedBox(height: 20.0),
          Text("Notification Settings", style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade300,
          ),),
              SwitchListTile(
                dense: true,
                activeColor: Colors.green,
                contentPadding: const EdgeInsets.all(0),
                value: true,
                title: Text("Turn On Notifications"),
                onChanged: (val){},
              ),
              SwitchListTile(
                dense: true,
                activeColor: Colors.green,
                contentPadding: const EdgeInsets.all(0),
                value: false,
                title: Text("Notification Sounds"),
                onChanged: (val){},
              ),
              SwitchListTile(
                dense: true,
                activeColor: Colors.green,
                contentPadding: const EdgeInsets.all(0),
                value: true,
                title: Text("Notification Alerts"),
                onChanged: (val){},
              ),
              SwitchListTile(
                dense: true,
                activeColor: Colors.green,
                contentPadding: const EdgeInsets.all(0),
                value: true,
                title: Text("Notify Me About App Updates"),
                onChanged: (val){},
              ),
        ],
    )
    )
    );
  }

  Container buildDivider() {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        width: double.infinity,
        height: 1.0,
        color: Colors.grey.shade400,
      );
  }
}
