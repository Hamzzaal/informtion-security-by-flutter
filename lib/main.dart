import 'package:flutter/material.dart';
import 'page2.dart';
import 'login.dart';
import 'p_4.dart';
import 'p_3.dart';
// import 'cyber.dart';
// import 'p_1.dart';
void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
        //appBar: AppBar(title: Text('Home'),backgroundColor: Color.fromARGB(255, 134, 226, 97),),
    );
  }}


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 152, 187, 216),
        title: Text('الأمن السيبراني',style: TextStyle(
        color: Colors.black),),
          centerTitle: true,
          ),
        
        body:  
         Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset(
              'images/d.jpg',
              height: 200.0,
            ),
            SizedBox(height: 32.0),
            Text(
              'مرحبًا بكم في عالم الأمن السيبراني',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              'هذا التطبيق يهدف إلى توعية المستخدمين حول أمان البيانات والتحذير من التهديدات السيبرانية.',
              style: TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 32.0),
            ElevatedButton(
              onPressed: () {
                 
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CyberSecurity()) );
                
                
                // يمكنك هنا تحويل المستخدم إلى صفحة أخرى مثل صفحة تسجيل الدخول
                // أو صفحة المقالات المتعلقة بالأمن السيبراني وغيرها
              },
              child: Text('ابدأ'),
            ),
          ],
        ),
      ),

        drawer: Drawer(   
          width: MediaQuery.of(context).size.width /4+20,
      backgroundColor:Color.fromRGBO(252, 250, 244, 0.493),
       child: 
          ListView(
            children: [
              // Column(  
              // children: [         
                  UserAccountsDrawerHeader(
                    currentAccountPicture: CircleAvatar(
                      radius: 50,
                  backgroundImage: AssetImage("images/d.jpg"),),
                      accountName:Text('Hamzah'),

                      accountEmail:Text('Hamzah@gmail.com'),
                      decoration:BoxDecoration(
                        color: Colors.green,
                         image: DecorationImage(
                          
                          image:AssetImage("images/sy.jpg"),fit: BoxFit.cover),

                      ),
                      ),
                  Divider(color: Colors.black,height: 20,thickness: 2.0,),
                  
                  ListTile(
                //iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text("الصفحة الرئيسة"),
                leading: Icon(Icons.home),
                
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CyberSecurity(),
                  ));
                }
              ),
                Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
          
          
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text('الدخول'),
                leading: Icon(Icons.login),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()) );
                }
                
              ),
               Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
          
          
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text('الدفاعات السيبرانية '),
                leading: Icon(Icons.no_meals),
                onTap: (){
                   
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CyberSecurity1()));
                  
                } 
                
              ),
               Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
          
          
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                
                title: Text('اختبار الاختراق ',),
                leading: Icon(Icons.manage_history),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CyberP3()) );
                }
              ),
                Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
          
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text('الاستنتاج'),
                leading: Icon(Icons.app_registration_sharp),
                onTap: (){
                   
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CyberP4()));
                  
                } 
              ),
                Divider(color: Color.fromARGB(255, 252, 254, 255),height: 20,thickness: 2.0,),
              ListTile(
                iconColor: Color.fromARGB(201, 5, 2, 39),
                title: Text('الخروج'),
                leading: Icon(Icons.logout),
                onTap: (){
                    
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) =>  MyHomePage()));
                },
              ),
              ],)
          ) ,
      );
       }}
       

