import 'package:material_ui/material_ui.dart';

class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  static const Color jaydzRed = Color(0xFFB50927);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F5F2),
      appBar: AppBar(
        title: const Text('Book Tickets'),
        backgroundColor: const Color(0xFFF8F5F2),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Spider-Man',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'Book your movie experience!',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 25),

            const Text(
              'Select Cinema',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),
              hint: const Text('Choose a cinema'),
              items: ['SM North EDSA', 'SM Grand Central', 'Ayala Malls']
                  .map(
                    (cinema) =>
                        DropdownMenuItem(value: cinema, child: Text(cinema)),
                  )
                  .toList(),
              onChanged: (value) {},
            ),

            const SizedBox(height: 25),
            const Text(
              'Select Date',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Choose your date',
                prefixIcon: const Icon(Icons.calendar_today),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),

            const SizedBox(height: 25),
            const Text(
              'Select Showtime',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 10,
              children: [
                '10:00 AM',
                '1:00 PM',
                '4:00 PM',
                '7:00 PM',
              ].map((time) => Chip(label: Text(time))).toList(),
            ),

            const SizedBox(height: 25),
            const Text(
              'Number of Tickets',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Enter ticket quantity',
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
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
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const Icon(
                              Icons.check_circle,
                              color: Colors.green,
                              size: 70,
                            ),
                            const SizedBox(height: 15),
                            const Text(
                              'Booking Confirmed!',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Your Spider-Man movie booking has been confirmed successfully!',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        actions: [
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: jaydzRed,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: const Text(
                  'CONFIRM BOOKING',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
