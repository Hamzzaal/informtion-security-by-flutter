import 'package:flutter/material.dart';

class CyberSecurity2 extends StatelessWidget {
  final List<Map<String, String>> securityTips = [
    {
      'title': 'استخدم كلمات مرور قوية ومعقدة',
      'description': 'اختر كلمات مرور طويلة وتحتوي على مزيج من الأحرف الكبيرة والصغيرة والأرقام والرموز.',
    },
    {
      'title': 'قم بتحديث برامجك وأنظمتك بانتظام',
      'description': 'تأكد من تحديث برامجك وأنظمتك بانتظام لسد الثغرات الأمنية.',
    },
    {
      'title': 'تجنب النقر على روابط غير معروفة أو المشبوهة',
      'description': 'قم بالتحقق من صحة الروابط قبل النقر عليها وتجنب فتح روابط غير معروفة أو المشبوهة.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أمن السيبراني'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'نصائح أمن السيبراني',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: securityTips.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 2.0,
                    child: ListTile(
                      // title: Text(securityTips[index]["title"]),
                      // subtitle: Text(securityTips[index]["description"]),
                      leading: Icon(Icons.security),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CyberSecurity2(),
  ));
}
class Cyberp1 extends StatefulWidget {
  @override
  _Cyberp1State createState() => _Cyberp1State();
}

class _Cyberp1State extends State<Cyberp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الدفاعات السيبرانية'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'أنواع الدفاعات السيبرانية',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
هناك العديد من أنواع الدفاعات السيبرانية المختلفة، بما في ذلك:

* تقنيات الأمان المادي: تتضمن تقنيات الأمان المادي الأشياء المادية التي تساعد في حماية الأنظمة والبيانات، مثل الأبواب والنوافذ والحواجز المادية الأخرى.
* تقنيات الأمان الرقمي: تتضمن تقنيات الأمان الرقمي البرامج والتطبيقات التي تساعد في حماية الأنظمة والبيانات، مثل جدران الحماية وبرامج مكافحة الفيروسات.
* سياسات الأمان: تتضمن سياسات الأمان القواعد والإجراءات التي تساعد في حماية الأنظمة والبيانات، مثل سياسات كلمة المرور والسياسات المتعلقة باستخدام الأجهزة المحمولة.
''',
textDirection: TextDirection.rtl,

              style: TextStyle(fontSize: 16),
            ),
            Text(
              'أهمية الدفاعات السيبرانية',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
تعد الدفاعات السيبرانية مهمة للحماية من الهجمات السيبرانية.

تساعد الدفاعات السيبرانية في حماية الأنظمة والبيانات من التعرض للضرر أو السرقة.

من خلال تنفيذ الدفاعات السيبرانية المناسبة، يمكن للأفراد والشركات والحكومات حماية أنفسهم من الهجمات السيبرانية.
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