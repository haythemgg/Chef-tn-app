import 'package:flutter/material.dart';

void main() {
  runApp(const ChefApp());
}

class ChefApp extends StatelessWidget {
  const ChefApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chef TN',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("وصفات الشاف التونسي"),
          centerTitle: true,
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "مرحباً بك 👨‍🍳\nاستكشف أشهى الوصفات التونسية والعصرية",
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "الوصفة اليوم",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text("كسكسي باللحم"),
                    subtitle: Text("45 دقيقة • 4 أشخاص"),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text("مكان إعلان AdMob"),
            )
          ],
        ),
      ),
    );
  }
}
