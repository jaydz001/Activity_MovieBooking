import 'package:material_ui/material_ui.dart';

import 'booking.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  static const Color jaydzRed = Color(0xFFB50927);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      appBar: AppBar(
        title: const Text('Movie Details'),
        backgroundColor: const Color(0xFFF8F5F2),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                color: jaydzRed,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.movie_creation_outlined,
                    color: Colors.white,
                    size: 90,
                  ),
                  SizedBox(height: 15),
                  Text(
                    'SPIDER-MAN',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'Spider-Man',
              style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Wrap(
              spacing: 8,
              children: [
                genreChip('Action'),
                genreChip('Adventure'),
                genreChip('2026'),
              ],
            ),

            const SizedBox(height: 20),

            const Row(
              children: [
                Icon(Icons.star, color: Colors.amber),
                SizedBox(width: 6),
                Text('8.5 / 10', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 25),
                Icon(Icons.access_time, color: jaydzRed),
                SizedBox(width: 6),
                Text('2h 15m'),
              ],
            ),

            const SizedBox(height: 25),

            const Text(
              'Movie Synopsis',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            const Text(
              'Peter Parker faces new challenges as he balances '
              'his responsibilities as a young student and his '
              'life as the friendly neighborhood Spider-Man. '
              'A new adventure tests his courage and determination.',
              style: TextStyle(
                fontSize: 15,
                height: 1.6,
                color: Colors.black87,
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: jaydzRed,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const BookingScreen(),
                    ),
                  );
                },
                child: const Text(
                  'BOOK TICKETS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget genreChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.white,
      side: BorderSide.none,
    );
  }
}
