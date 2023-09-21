import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أهمية الأمن السيبراني',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        
      ),
        
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أهمية الأمن السيبراني'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'تعريف الأمن السيبراني',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''

الأمن السيبراني هو مجموعة من 
 الإجراءات والتقنيات التي تهدف إلى حماية الأنظمة والشبكات والبيانات من الهجمات الإلكترونية.
يهدف الأمن السيبراني إلى الحفاظ على سرية وسلامة وسلامة المعلومات
''',
  
              style: TextStyle(fontSize: 16),
            ),
            Text(
              'أهمية الأمن السيبراني',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
الأمن السيبراني مهم للأفراد والشركات والحكومات.

للأفراد، يمكن أن يساعد الأمن السيبراني في حماية المعلومات الشخصية والمادية من الهجمات الإلكترونية.

للشركات، يمكن أن يساعد الأمن السيبراني في حماية البيانات التجارية والأنظمة من الهجمات الإلكترونية.

للحكومات، يمكن أن يساعد الأمن السيبراني في حماية البنية التحتية الحيوية من الهجمات الإلكترونية.
''',
textDirection: TextDirection.rtl,

              style: TextStyle(fontSize: 16),
            ),
            Text(
              'أهداف مشروع الأمن السيبراني',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
   :أهداف مشروع الأمن السيبراني هي 

تقديم مقدمة شاملة للأمن السيبراني *
 مناقشة أنواع التهديدات السيبرانية المختلفة *
 استكشاف أنواع الدفاعات السيبرانية المختلفة *
 شرح عملية اختبار الاختراق *
 تقديم ملخص للمشروع *
''',
textDirection: TextDirection.rtl,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}











