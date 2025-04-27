import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            
      //  --------------- here starts appBar section --------------------
        appBar: AppBar(
          // -------------- style AppBar ---------------------
          iconTheme: IconThemeData(color: Color.fromARGB(255, 92, 0, 213)), // for every icon in side appBar
          backgroundColor: Color.fromARGB(255, 245, 237, 255), // AppBar color
          shadowColor: Color.fromARGB(95, 202, 170, 253), // shaddow color
          elevation: 10, // this for shadow size
          // -------------- end style AppBar -----------------

          

          // ----------------- this block for title in AppBar ----------------
          title: Center(
            child:  Text("Tuwaiq App",
              style: TextStyle(
                color: const Color.fromARGB(255, 92, 0, 213),
                fontSize: 30,
                ),
              ) 
            ),
            // ----------------- end title AppBar -----------------

            // -------------- this block for notification icon --------------
          actions: <Widget>[
            IconButton(onPressed: (){},
              icon: Icon(
                Icons.notifications, 
                ),
              )
            ],
            //  -------------- end notification icon -----------------
        ),  //AppBar
      //  --------------- here ends appBar section --------------------

      //  --------------- here starts Drawer section --------------------
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(accountName: Text("amr"), accountEmail: Text("amr@hotmail.com")),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("home"),
              ),//ListTitle
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("account"),
              ), //ListTitle
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("setting"),
              ), //ListTitle
              ListTile(
                leading: Icon(Icons.privacy_tip),
                title: Text("privcy"),
              ) //ListTitle
            ],
          ), //listView
        ),
      //  --------------- here ends drawer section --------------------

      //  --------------- here starts body section --------------------
        body: Padding(
          
          padding: const EdgeInsets.all(15.0), // to make all contetn not in edge, more comfrtable for eyes
          child: Column(
            children: [
              SizedBox(height: 40),// add space after AppBar
              // ------------------ Row for Image and Texts -----------------
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  ClipRRect(   // Image.network
                    child: Image.network(
                      'https://cdn.tuwaiq.edu.sa/landing/images/logo/logo-noname.png',
                      height: 180,
                      width: 180,
                    ),
                  ),
                  SizedBox(width: 16), // add space between img and text
                  
                  Expanded(   // Texts
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('you are in tuwaiq acadymy', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),  // add space between texts
                        Text('for every one has no limit', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),  // add space between texts
                        Text('join us now', style: TextStyle(fontSize: 16)),
                        SizedBox(height: 8),  // add space between texts
                        Icon(Icons.camera_alt, size: 30),
                      ],
                    ),
                  ),
                ],
              ),
              // -------------------- end row (img and texts) ----------------
              
              SizedBox(height: 30), // add space after row(img and texts)
              
              Text( // large text in the bottom
                'Tuwaiq Academy is an educational institution based in Riyadh. The Saudi Federation for Cybersecurity, Programming, and Drones announced its establishment in August 2019 and is headquartered at Princess Nourah bint Abdulrahman University.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.left, // to make text start from left
              ),
              SizedBox(height: 40),  // add space between text and botton
              // ----------------- botton -------------------------
              ElevatedButton(
                onPressed: null,  // bocouse botton has no function
                style: ElevatedButton.styleFrom( // to styling the booton
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // radiusing the botton
                  ),
                ),
                child: Padding( // text inside botton
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  child: Text('Change Image', style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0))),
                ),
              ),
              // --------------- end botton -----------------------
            ],
          ),
        ),
      //  --------------- here ends body section --------------------
    ); //scaffold
  }
}