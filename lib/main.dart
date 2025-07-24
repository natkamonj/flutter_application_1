import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor


  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}
// ตัวอย่างวิดเจ็ตที่ส่งคืนโดย property 'home' ของ MaterialApp
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chapter 3 Lab'),
        backgroundColor: Colors.teal,
      ),
      body: Center(
        // จัดกึ่งกลาง Container
        child: Container(
        padding: EdgeInsets.all(50.0),
          // กล่อง
          width: 300.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: const Text(
            'inside container',
            textAlign: TextAlign.center, // ทางเลือก: จัดกลางข้อความ
            style: TextStyle( // ทางเลือก: กำหนดสไตล์ข้อความ
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),          
          ),
        ),
      ),
    );
  }
}
