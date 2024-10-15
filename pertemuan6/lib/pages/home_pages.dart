// import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key});

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final screenwidth = MediaQuery.of(context).size.width;
//     final screenheight = MediaQuery.of(context).size.height;
//     final padding = MediaQuery.of(context).size.width * 0.1;
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Center(
//             child: Container(
//               width: screenwidth / 1.4,
//               height: screenheight / 2,
//               // padding: EdgeInsets.all(padding),
//               color: Colors.red,
//               child: Column(
//                 children: [
//                   Icon(
//                     Icons.add,
//                     size: screenheight / 20,
//                     color: Colors.black,
//                   ),

//                 ],
//               ),
//             ),

//           )
//         ]
//       )
//     );
//   }
// }
import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nama Kalian'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Headline Large',
                style: Theme.of(context).textTheme.headlineLarge),
            SizedBox(height: 20),
            Text('Body Large', style: Theme.of(context).textTheme.bodyLarge),
            Text('Body Medium', style: Theme.of(context).textTheme.bodyMedium),
            Text('Body Small', style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final mySnackBar = SnackBar(
                  content: Text("Berhasil membuat SnackBar"),
                  duration: Duration(milliseconds: 100),
                  padding: EdgeInsets.all(10),
                  backgroundColor: Colors.amberAccent,
                );
                ScaffoldMessenger.of(context).showSnackBar(mySnackBar);
              },
              child: Text('Elevated Button'),
            ),
            SizedBox(height: 20),
            OutlinedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text(
                        'Konfirmasi',
                      ),
                      content: Text(
                        'Apakah Anda yakin ingin mendaftar dengan username?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop(); // Tutup dialog
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Cancel'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          },
                          child: Text(
                            'Cancel',
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content:
                                    Text('Selamat datang!'),
                                duration: const Duration(seconds: 5),
                              ),
                            );
                          },
                          child: Text(
                            'Confirm',
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text('Outlined Button'),
            ),
            SizedBox(height: 20),
            TextButton(
              onPressed: () {},
              child: Text('Text Button'),
            ),
          ],
        ),
      ),
    );
  }
}
