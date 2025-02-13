import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Senna Production",
          style: GoogleFonts.marcellus(
              // backgroundColor: Colors.pinkAccent,
              fontSize: 36,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            VendorHeader(),
            SizedBox(height: 20),
            AboutSection(),
            SizedBox(height: 20),
            ReviewSection(),
          ],
        ),
      ),
    );
  }
}

class VendorHeader extends StatelessWidget {
  const VendorHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Eterna Project Event & Wedding Organizer",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text("Jethro Band - Yogyakarta"),
            const SizedBox(height: 5),
            Row(
              children: List.generate(
                  5, (index) => const Icon(Icons.start, color: Colors.yellow)),
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.pinkAccent),
          child: const Text("Chat Vendor"),
        ),
      ],
    );
  }
}

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("About",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Jl. Pogung Raya No. 06 Sinduadi Mlati Sleman, DIY"),
            Text("Phone: 0858 4238 6009"),
            Text("Email: senna_production@gmail.com"),
          ],
        ),
      ),
    );
  }
}

class ReviewSection extends StatelessWidget {
  const ReviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Review",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        ReviewCard(
            name: "Niko",
            rating: 5,
            date: "19/06/2024",
            review:
                "Vendor yang satu ini direkomendasi dari MC kami Ko Erwin Wong Entertainment..."),
        ReviewCard(
            name: "Nugroho",
            rating: 5,
            date: "05/07/2025",
            review:
                "Top banget vendor yang satu ini... cepet tanggap, dan bantuin banget dari awal..."),
      ],
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final int rating;
  final String date;
  final String review;

  const ReviewCard(
      {super.key,
      required this.name,
      required this.rating,
      required this.date,
      required this.review});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(date,
                    style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
            Row(
              children: List.generate(rating,
                  (index) => const Icon(Icons.star, color: Colors.yellow)),
            ),
            const SizedBox(height: 5),
            Text(review, maxLines: 2, overflow: TextOverflow.ellipsis),
          ],
        ),
      ),
    );
  }
}
// class Header extends StatelessWidget {
//   const Header({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 50),
//       color: Colors.white,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             'SENNA PRODUCTION',
//             style: GoogleFonts.marcellus(
//                 fontSize: 18,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.pinkAccent),
//           ),
//           const Row(
//             children: [
//               NavItem(title: 'Home'),
//               NavItem(title: 'About'),
//               NavItem(title: 'Contact'),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }

// class NavItem extends StatelessWidget {
//   final String title;
//   const NavItem({super.key, required this.title});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 10),
//       child: Text(
//         title,
//         style: const TextStyle(color: Colors.white, fontSize: 18),
//       ),
//     );
//   }
// }

// class AboutSection extends StatelessWidget {
//   const AboutSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(50),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Tentang Kami',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'Senna Production adalah perusahaan jasa profesional di bidang Event & Wedding Organizer yang mengutamakan kesempurnaan, kreativitas, dan keanggunan. Dengan pengalaman yang mendalam dalam mengelola berbagai jenis acara, kami hadir untuk membantu mewujudkan momen istimewa Anda dengan sentuhan modern yang elegan dan tak tertandingi..',
//             textAlign: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ContactSection extends StatelessWidget {
//   const ContactSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Padding(
//       padding: EdgeInsets.all(50),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Text(
//             'Hubungi Kami',
//             style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//           ),
//           SizedBox(height: 10),
//           Text('Email: contact@usahakita.com'),
//           Text('Telepon: +62 812 3456 7890'),
//         ],
//       ),
//     );
//   }
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: SingleChildScrollView(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Stack(
//             children: [
//               Container(
//                 height: 400,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('asset/senna_prod.jpg'),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               Container(
//                 height: 400,
//                 color: Colors.black.withOpacity(0.5),
//                 child: const Center(
//                   child: Text(
//                     'Selamat Datang di Senna Production',
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 36,
//                       fontWeight: FontWeight.bold,
//                     ),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//             ],
//           ),

//           //About Section
//           const Padding(
//             padding: EdgeInsets.symmetric(vertical: 40, horizontal: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   'Tentang Kami',
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   'Senna Production adalah perusahaan jasa profesional di bidang Event & Wedding Organizer yang mengutamakan kesempurnaan, kreativitas, dan keanggunan. Dengan pengalaman yang mendalam dalam mengelola berbagai jenis acara, kami hadir untuk membantu mewujudkan momen istimewa Anda dengan sentuhan modern yang elegan dan tak tertandingi..',
//                   style: TextStyle(fontSize: 18),
//                   textAlign: TextAlign.center,
//                 )
//                 //source
//                 //https://chatgpt.com/c/67a9eb61-286c-800e-b982-6c3b7e0a291c
//               ],
//             ),
//           )
//         ],
//       ),
//     ),
// );
// }


//https://www.weddingku.com/wedding-vendors/wedding-planner/eterna-projects-event-and-wedding-organizer