import 'package:flutter/material.dart';

class CyberSecurity1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أمن السيبراني',
              textDirection: TextDirection.rtl,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            textDirection: TextDirection.rtl,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'مفهوم أمن السيبراني',
              textDirection: TextDirection.rtl,
                
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'أمن السيبراني هو مجال يهتم بحماية الأجهزة الإلكترونية والشبكات والبيانات من التهديدات السيبرانية. يهدف أمن السيبراني إلى حماية الأنظمة والبيانات من الوصول غير المصرح به، والاحتيال الإلكتروني، والاختراق، والتعديل غير المصرح به.',
              textDirection: TextDirection.rtl,
                
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'تقنيات أمن السيبراني',
              textDirection: TextDirection.rtl,
                
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'هناك العديد من التقنيات المستخدمة في أمن السيبراني، بما في ذلك:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Text('1. التشفير: يستخدم لحماية البيانات من الوصول غير المصرح به.',
              textDirection: TextDirection.rtl,
              ),
              Text('2. جدران الحماية: تستخدم لحماية الشبكات من الوصول غير المصرح به.',
              textDirection: TextDirection.rtl,
              ),
              Text('3. برامج مكافحة الفيروسات: تستخدم لاكتشاف وإزالة البرامج الضارة.',
              textDirection: TextDirection.rtl,
              ),
              SizedBox(height: 16.0),
              Text(
                'نصائح للحفاظ على أمان السيبراني',
              textDirection: TextDirection.rtl,
                
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text('1. استخدم كلمات مرور قوية وغير متوقعة.',
              textDirection: TextDirection.rtl,
              ),
              Text('2. قم بتحديث برامجك بانتظام لسد ثغرات الأمان.',
              textDirection: TextDirection.rtl,
              ),
              Text('3. احتفظ بنسخ احتياطية من البيانات الهامة.',
              textDirection: TextDirection.rtl,
              ),
              Text('4. كن حذرًا عند تصفح الإنترنت وفتح رسائل البريد الإلكتروني المشبوهة.',
              textDirection: TextDirection.rtl,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//import 'package:flutter/material.dart';

class CyberSecurity2 extends StatelessWidget {
  final List<String> securityTips = [
    'استخدم كلمات مرور قوية ومعقدة.',
    'قم بتحديث برامجك وأنظمتك بانتظام.',
    'تجنب النقر على روابط غير معروفة أو المشبوهة.',
    'احتفظ بنسخ احتياطية من البيانات الهامة.',
    'استخدم برامج مكافحة الفيروسات والحماية القوية.',
    'تجنب توفير المعلومات الشخصية الحساسة عبر الإنترنت.',
    'كن حذرًا عند استخدام شبكات Wi-Fi العامة.',
    'استخدم التشفير لحماية بياناتك الحساسة.',
    'قم بتعليم نفسك وتوعية الآخرين حول أمن السيبراني.',
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
                  return ListTile(
                    leading: Icon(Icons.security),
                    title: Text(securityTips[index]),
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