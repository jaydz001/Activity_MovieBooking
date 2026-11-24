
import 'package:material_ui/material_ui.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color jaydzRed = Color(0xFFB50927);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      appBar: AppBar(
        title: const Text('My Profile'),
        backgroundColor: const Color(0xFFF8F5F2),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 55,
              backgroundColor: jaydzRed,
              child: Icon(
                Icons.person,
                size: 65,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              'Jay',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'jaydz@gmail.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),

            profileOption(
              Icons.person_outline,
              'Personal Information',
              'View your account details',
            ),
            profileOption(
              Icons.confirmation_number_outlined,
              'My Bookings',
              'View your movie bookings',
            ),
            profileOption(
              Icons.favorite_border,
              'Favorite Movies',
              'Your saved movies',
            ),
            profileOption(
              Icons.notifications_none,
              'Notifications',
              'Manage your notifications',
            ),
            profileOption(
              Icons.settings_outlined,
              'Settings',
              'App preferences',
            ),

            const SizedBox(height: 25),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton.icon(
                onPressed: () {
                  Navigator.popUntil(context, (route) => route.isFirst);
                },
                icon: const Icon(Icons.logout),
                label: const Text('LOG OUT'),
                style: OutlinedButton.styleFrom(
                  foregroundColor: jaydzRed,
                  side: const BorderSide(color: jaydzRed),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget profileOption(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      color: Colors.white,
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon, color: jaydzRed, size: 28),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {},
      ),
    );
  }
}
