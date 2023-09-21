import 'package:flutter/material.dart';
//import 'package:h_p1/page2.dart';

class CyberSecurity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          

      appBar: AppBar(
        title: Text('الامن السيبراني',
              textDirection: TextDirection.rtl,
        ),
      ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            textDirection: TextDirection.rtl,
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

                '''
   الأمن السيبراني هو مجال يهتم بحماية الأجهزة الإلكترونية والشبكات والبيانات من التهديدات السيبرانية.
         يهدف الأمن السيبراني إلى حماية الأنظمة والبيانات من الوصول غير المصرح به والاحتيال الإلكتروني،
                                                                       والاختراق،والتعديل غير المصرح به.''',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              Text(
                'تقنيات الأمن السيبراني',
              textDirection: TextDirection.rtl,

                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                           ' : هناك العديد من التقنيات المستخدمة في الأمن السيبراني، بما في ذلك',
                textDirection: TextDirection.rtl,
                
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Text('1. التشفير: يستخدم لحماية البيانات من الوصول غير المصرح به.',              
              textDirection: TextDirection.rtl),
              Text('2. جدران الحماية: تستخدم لحماية الشبكات من الوصول غير المصرح به.',
              textDirection: TextDirection.rtl,
               ),
              Text('3. برامج مكافحة الفيروسات: تستخدم لاكتشاف وإزالة البرامج الضارة.',
              textDirection: TextDirection.rtl,
              ),
              SizedBox(height: 16.0),
              Text(
                'نصائح للحفاظ على أمان الأمن السيبراني',
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
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () 
                   {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => CyberSecurity()));
                
                  
                  // اضف هنا رمز للانتقال إلى صفحة إضافية مثلاً صفحة توعية أمنية أو قائمة بالموارد الإضافية
                },
                child: Text('المزيد من المعلومات'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class CyberP3 extends StatefulWidget {
  @override
  _CyberP3State createState() => _CyberP3State();
}

class _CyberP3State extends State<CyberP3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('اختبار الاختراق'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'تعريف اختبار الاختراق',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
اختبار الاختراق هو عملية محاكاة هجوم إلكتروني على نظام أو شبكة بهدف تحديد نقاط الضعف المحتملة.

يمكن أن يساعد اختبار الاختراق في تحسين أمان النظام أو الشبكة من خلال تحديد وإصلاح نقاط الضعف المحتملة.
''',
textDirection: TextDirection.rtl,

              style: TextStyle(fontSize: 16),
            ),
            Text(
              'أنواع اختبار الاختراق',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
هناك العديد من أنواع اختبار الاختراق المختلفة، بما في ذلك:

  * اختبار الاختراق الأسود: هو اختبار اختراق يتم إجراؤه دون موافقة أصحاب النظام أو الشبكة.
  * اختبار الاختراق الرمادي: هو اختبار اختراق يتم إجراؤه بعد إبلاغ أصحاب النظام أو الشبكة بالاختبار.
  * اختبار الاختراق الأبيض: هو اختبار اختراق يتم إجراؤه بموافقة أصحاب النظام أو الشبكة.
''',
textDirection: TextDirection.rtl,

              style: TextStyle(fontSize: 16),
            ),
            Text(
              'أدوات اختبار الاختراق',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
هناك العديد من أدوات اختبار الاختراق المختلفة المتاحة، بما في ذلك:

  * Nmap: هو أداة مفتوحة المصدر لاكتشاف الأنظمة والخدمات المتاحة.
  * Metasploit: هو إطار عمل اختبار اختراق شامل.
  * Nessus: هو أداة اختبار اختراق تجارية.
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

