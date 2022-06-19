import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blue Containers Animation'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller, curve: const Interval(0.4, 0.6)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller, curve: const Interval(0.60, 0.8)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller, curve: const Interval(0.8, 1.0)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller, curve: const Interval(0.2, 0.4)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller, curve: const Interval(0.4, 0.6)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller, curve: const Interval(0.6, 0.8)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller,
                      curve: const Interval(
                        0.0,
                        0.3,
                      ),
                      reverseCurve: const Interval(0.0, 0.2)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller, curve: const Interval(0.2, 0.4)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
                FadeTransition(
                  opacity: CurvedAnimation(
                      parent: _controller, curve: const Interval(0.4, 0.6)),
                  child: Container(
                    height: 70,
                    width: 70,
                    color: Colors.blue.shade200,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
