import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dhani Kusuma Wardana Putra',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue, brightness: Brightness.dark)
      ),
      themeMode: ThemeMode.system,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile Dhani',
        ),
        actions: [
          IconButton(onPressed: (){ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('thanks udh klik'))
          );
          }
              , icon: Icon(Icons.info_outline))
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.person,
                          size: 50,
                        ),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        'Dhani Kusuma',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      SizedBox(height: 8,),
                      Text(
                        '1124160014',
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Info Kontak',
                          style: Theme.of(context)
                              .textTheme.titleLarge,
                        ),

                        const SizedBox(height: 16),

                        const InfoTile(
                          icon: Icons.email,
                          label: 'Email',
                          value: 'dhanikusuma256@gmail.com',
                        ),

                        const InfoTile(
                          icon: Icons.phone,
                          label: 'Nomor HP',
                          value: '0895321813103',
                        ),

                        const InfoTile(
                          icon: Icons.school,
                          label: 'Kelas',
                          value: 'TI24PSE3',
                        ),

                        const InfoTile(
                          icon: Icons.code,
                          label: 'GitHub',
                          value: 'github.com/dhaniKWP',
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Keahlian dan Hobi',
                          style: Theme.of(context)
                              .textTheme.titleLarge,
                        ),

                        const SizedBox(height: 16),

                        const InfoTile(
                          icon: Icons.music_note,
                          label: 'Mendengar musik',
                          value: 'Payung Teduh, Reality Club',
                        ),

                        const InfoTile(
                          icon: Icons.web,
                          label: 'Web Dev',
                          value: 'Laravel',
                        ),

                        const InfoTile(
                          icon: Icons.computer,
                          label: 'Hobi',
                          value: 'Ngulik2 aja',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text(
                'Mantap di pencet',
              ),
            ),
          );
        },
        child: const Icon(Icons.message),
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Text(label),
      subtitle: Text(value),
    );
  }
}
