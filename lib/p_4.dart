import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
// import 'package:dartson/dartson.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'أمن السيبراني',
      home: Cyber(),
    );
  }
}

class Cyber extends StatefulWidget {
  @override
  _CyberState createState() => _CyberState();
}

class _CyberState extends State<Cyber> {
  List<Vulnerability> vulnerabilities = [];

  @override
  void initState() {
    super.initState();
    _fetchVulnerabilities();
  }

  void _fetchVulnerabilities() async {
    var response = await Dio().get('https://cve.mitre.org/data/downloads/index.html');
    var vulnerabilitiesJson = response.data['data']['CVE-2023-0001-0010'] as List;
    vulnerabilities = vulnerabilitiesJson.map((vulnerability) => Vulnerability.fromJson(vulnerability)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('أمن السيبراني'),
      ),
      body: ListView.builder(
        itemCount: vulnerabilities.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(vulnerabilities[index].name),
            subtitle: Text(vulnerabilities[index].description),
          );
        },
      ),
    );
  }
}

class Vulnerability {
  String name;
  String description;

  Vulnerability({
    this.name="",
    this.description="",
  });

  factory Vulnerability.fromJson(Map<String, dynamic> json) {
    return Vulnerability(
      name: json['name'],
      description: json['description'],
    );
  }
}



class CyberP4 extends StatefulWidget {
  @override
  _CyberP4State createState() => _CyberP4State();
}

class _CyberP4State extends State<CyberP4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الاستنتاج'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              'النتائج الرئيسية للمشروع',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
                                                      *الأمن السيبراني هو عملية مستمرة
                                                      *هناك العديد من الدفاعات السيبرانية المختلفة
                                                      *اختبار الاختراق هو أداة قيمة لتحسين أمان النظام أو الشبكة
''',
textDirection: TextDirection.rtl,

              style: TextStyle(fontSize: 16),
            ),
            Text(
              'التوصيات',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              '''
                                          فيما يلي بعض التوصيات لتحسين أمان النظام أوالشبكة:                    
                                                     *قم بتنفيذ مجموعة متنوعة من الدفاعات السيبرانية 
                                                     *قم بإجراء اختبارات اختراق منتظمة 
                                                     *قم بتحديث البرامج والأنظمة بانتظام  
                                                      *قم بتثقيف المستخدمين حول مخاطر الأمن السيبراني              
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

