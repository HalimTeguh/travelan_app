import 'package:flutter/material.dart';
import 'package:travelan_app/components/travel_grid_tile.dart';
import 'package:travelan_app/components/travel_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List travelData = [
    [
      'Braga',
      'Kota Bandung',
      'assets/images/Braga.jpg',
      """
        Braga adalah ikon kota Bandung, dan enggak mungkin liburan ke Bandung kalau enggak menyempatkan diri sekadar lewat atau bahkan singgah untuk menikmati hypenya Braga. Dari restoran, bar, sampai coffee shop kekinian yang berdiri di dalam gedung tua yang terjaga, semuanya ada di Braga.\n\n
        Kamu juga bisa menemukan penjual-penjual lukisan di pinggir jalan, siap memberikanmu kenang-kenangan dari Bandung untuk dipajang di rumah.
      """
    ],
    [
      'Kampung Cai Ranca Upas',
      'Bandung, Ciwidey',
      'assets/images/Kampung Cai Ranca Upas.jpg',
      """
        Kampung Cai Ranca Upas adalah salah satu tempat wisata paling menarik di Ciwidey! Selain punya area perkemahan yang cantik, Kampung Cai Ranca Upas juga punya  yang menyenangkan untuk dikunjungi. Selain itu juga ada berbagai permainan outbound yang bisa kamu coba di sana bersama keluarga.
      """
    ],
    [
      'Lembang Park & Zoo',
      'Lembang',
      'assets/images/Lembang Park & Zoo.jpg',
      """
        Lembang memang enggak pernah kehabisan tempat wisata yang seru, dan salah satu tempat wisata di Lembang Bandung yang terbaru adalah Lembang Park & Zoo !\n\n
        Terletak di Jl. Kolonel Masturi No. 171, Sukajaya, Lembang, Kabupaten Bandung Barat, Jawa Barat, Lembang Park & Zoo enggak hanya merupakan kebun binatang di mana para pengunjung bisa bertemu dan mengenal berbagai satwa, tapi juga menjadi tempat wisata rekreasi yang menyenangkan.\n\n
        Salah satu yang paling keren di sini adalah , dengan banyak burung cantik di dalamnya! Selain itu, kamu juga bisa makan siang bersama singa atau ngemil bareng kucing-kucing lucu di Neko Cat Cafe.\n\n
        Tips Klook: Beberapa area di Lembang Park & Zoo hanya bisa diakses jika membeli tiket tambahan di luar tiket masuk utama, tapi kamu bisa lebih hemat jika membeli tiket terusan Lembang Park & Zoo di Klook yang bisa membawa kamu ke semua objek wisata di tempat wisata ini.
      """
    ],
    [
      'Kawah Putih Ciwidey',
      'Bandung',
      'assets/images/Kawah Putih Ciwidey.jpg',
      """
        Sering melihat  menjadi latar untuk foto-foto yang Instagramable? Well, memang sepopuler itu tempat wisata di Bandung ini. Buat yang belum pernah ke sini, wajib banget setidaknya sekali seumur hidup lihat pemandangan magis di kawah putih.\n\n
        Kawah Putih Ciwidey sendiri merupakan danau kawah yang terbentuk dari letusan Gunung Patuha, salah satu gunung berapi di Jawa Barat.\n\n
        Air di danau kawah ini memiliki kandungan asam yang sangat tinggi, yang menyebabkan permukaannya berwarna putih kehijauan atau malah biru dan coklat - warna permukaan ini bisa berubah sesuai konsentrasi sulfur di dalamnya dan temperaturnya. \n\n
        Kalau beruntung, kamu bisa datang saat Kawah Putih berwarna putih kehijauan yang indah - membuatnya menjadi background yang keren untuk berfoto, bahkan untuk foto prewedding juga!
      """
    ],
    [
      'Orchid Forest Cikole',
      'Cikole',
      'assets/images/Orchid Forest Cikole.jpg',
      """
        Terletak di Cikole, Lembang, Kabupaten Bandung Barat, Jawa Barat,  adalah hutan anggrek terbesar di Indonesia. Enggak main-main, jumlah anggrek di sini mencapai 20.000 tanaman! Selain anggrek, barisan pohon pinus yang ada di sana juga membuat pemandangan Orchid Forest Cikole menjadi sangat indah.\n\n
        Selain menawarkan pemandangan hutan pinus dan anggrek, Orchid Forest Cikole juga memiliki tempat bermain golf, area bermain dengan kelinci, jembatan tali yang bersinar di malam hari, sampai horse ranch.
      """
    ],
    [
      'Taman Hutan Raya Ir. H. Djuanda',
      'Dago Pakar',
      'assets/images/Taman Hutan Raya Ir. H. Djuanda.jpg',
      """
        Sesuai namanya,  memang bukan sekadar taman - ini adalah hutan kota yang terletak di area Dago Pakar. Taman yang kerap disebut Tahura oleh warga Bandung ini juga jadi salah satu tempat wisata di Bandung favorit - termasuk bagi masyarakat kota Bandung sekalipun.\n\n
        Wisata ke Tahura adalah pilihan yang pas kalau kamu ingin mencoba jalan-jalan di tengah hutan tapi tanpa jauh-jauh keluar kota.
      """
    ],
    [
      'Tebing Keraton',
      'Dago Pakar',
      'assets/images/Tebing Keraton.jpg',
      """
        Tebing Keraton adalah sebuah tebing dengan pemandangan luar biasa di area Taman Hutan Raya Ir. H. Djuanda. Kalau ingin merasakan pengalaman melihat lautan pohon yang hijau dari atas tebing, di sinilah tempatnya.\n\n
        Banyak orang juga yang datang sekitar subuh untuk melihat matahari terbit di sini, jadi pastikan kamu juga mencoba pengalaman tersebut saat liburan ke Bandung.
      """
    ],
    [
      'Rumah Guguk',
      'Bandung',
      'assets/images/Rumah Guguk.jpg',
      """
        Rumah Guguk adalah sebuah pet shop di Bandung yang juga diset sebagai . Ada dua tempat di sini di mana pengunjung bisa bermain dengan berbagai hewan peliharaan lucu, dari anjing, kucing, ayam, burung, kambing, dan bahkan ular!\n\n
        Kedua tempat itu adakah Kebunku, di mana pengunjung bisa berfoto dengan berbagai jenis anjing dan kucing dari banyak ukuran, dan Taman Guguk, sebuah taman luas yang menyenangkan untuk bersantai atau berinteraksi dengan beragam hewan lain, dari kelinci sampai bebek.\n\n
        Tempatnya asri dan menyenangkan, banget! Cocok buat liburan keluarga bersama anak-anak atau untuk para pecinta hewan.
      """
    ],
    [
      'The Great Asia Africa Lembang',
      'Lembang',
      'assets/images/The Great Asia Africa Lembang.jpg',
      """
        Satu tempat, tapi punya area instagramable bertema banyak negara? Kamu bisa menemukannya di . Terletak di Jalan Raya Lembang, tepat berseberangan dengan Farmhouse Lembang yang lebih dahulu populer, The Great Asia Africa adalah salah satu tempat wisata di Lembang yang tengah naik daun saat ini.\n\n
        Di sini, kamu bisa berfoto-foto menggunakan hanbok dengan latar belakang ala rumah-rumah Korea di masa lalu, kimono di Kyoto mini, menikmati warna-warni dinding di Maroko, atau bahkan berpose ala film India, lengkap dengan sari.
      """
    ],
    [
      'Branchsto Ganesha Lembang',
      'Lembang',
      'assets/images/Branchsto Ganesha Lembang.jpg',
      """
        Jika ingin pengalaman liburan di Bandung yang sangat berbeda, cobalah datang ke Branchsto Ganesha. Ini adalah tempat wisata di Lembang yang menawarkan pengalaman berkuda, pengalaman yang mungkin enggak bisa kamu dapatkan setiap hari. Kamu bisa mengenal kuda, cara merawat kuda, hingga belajar mengendarai kuda di sana.\n\n
        Enggak cuma orang dewasa yang bisa belajar naik kuda di sini. Anak-anak pun bisa belajar naik kuda poni di sini!
      """
    ],
    [
      'Dusun Bambu Lembang',
      'Lembang',
      'assets/images/Dusun Bambu Lembang.jpg',
      """
        Keindahan alam yang dikemas dengan suasana tradisional ala Sunda. Kombinasi yang pas untuk menghasilkan sebuah tempat wisata di Bandung yang menyenangkan.\n\n
        Sulit untuk enggak merasa tertarik datang dan makan di pinggir danau kecil yang jadi ikon Dusun Bambu, yang bisa kamu lihat di foto-foto tempat wisata populer ini. Menginap di Dusun Bambu pun bisa, mau di villa ataupun glamping.
      """
    ],
    [
      'Dago Dream Park',
      'Dago Pakar',
      'assets/images/Dago Dream Park.jpg',
          """
        Apakah kamu tipe traveler yang suka liburan untuk foto-foto dan mencoba berbagai aktivitas seru? Jika ya, kamu perlu mengunjungi  jika sedang liburan ke Bandung. Soalnya, taman wisata Bandung yang terletak di Dago ini memang mendedikasikan  dengan teman-teman atau keluarga.\n\n
        Selain punya banyak spot foto yang cukup keren, Dago Dream Park juga punya berbagai aktivitas yang ditawarkan, dari naik kuda, paintball, sky gliding, ATV, sampai anti gravity. Kamu juga bisa foto-foto dengan gaya seru di Karpet Aladin, Jembatan Kupu-Kupu, Ayunan Jadul Deldom, dan Colourful Caping.\n\n
        Tips Klook: Tiket masuk Dago Dream Park sangat murah, tapi kamu harus membayar lagi untuk beberapa wahana dan spot foto. Sangat disarankan untuk , yang akan membawa kamu mencoba semua wahana yang seru dan tempat foto di Dago Dream Park tanpa membayar lagi.
      """
    ],
    [
      'Jendela Alam',
      'Bandung',
      'assets/images/Jendela Alam.jpg',
      """
        Uniknya  adalah tempat wisata di Lembang ini mengusung konsep sebagai tempat wisata edukasi. Sesuai namanya, anak-anak di sini bisa belajar banyak tentang alam, dari mencoba kegiatan berkebun, mengenal tanaman obat dan hidroponik, berinteraksi dengan kuda poni, kambing, rusa, dan bahkan reptil.\n\n
        Jendela Alam juga memiliki program permainan menangkap ikan, panen telur, hingga memetik tomat! Selain itu, Jendela Alam juga punya banyak workshop yang pastinya bikin pengunjung makin kreatif dan mengenal alam.
      """
    ],
    [
      'The Lodge Maribaya',
      'Lembang',
      'assets/images/The Lodge Maribaya.jpg',
      """
        Objek wisata di Lembang tengah berkembang banget selama beberapa tahun belakangan, dan The Lodge Maribaya adalah salah satu destinasi wisata di Lembang yang mencuat dan menjadi populer. Dengan wajah baru sejak 2016 lalu, The Lodge Maribaya menawarkan tempat wisata di Bandung yang ideal bagi keluarga yang menginginkan liburan unik.\n\n
        Selain area camp di mana pengunjung bisa menginap di dalam tenda unik, The Lodge Maribaya juga menawarkan wahana yang menarik seperti Sky Tree, Gantole, Zip Bike, dan Mountain Swing.
      """
    ],
    [
      'Fairy Garden',
      'Lembang',
      'assets/images/Fairy Garden.jpg',
      """
        Agak beda dengan tempat wisata Instagramable umumnya, Fairy Garden yang terletak di dalam kawasan The Lodge Maribaya ini punya konsep yang jelas dan unik. Pasalnya, sesuai namanya, Fairy Garden memang didesain agar pengunjungnya merasa seperti benar-benar masuk ke dunia para peri di dongeng-dongeng!\n\n
        Enggak heran kalau tempat wisata yang ada di daerah Lembang ini langsung populer sejak diperkenalkan pada tahun 2018 lalu. Selain punya banyak spot foto yang cantik dan unik, anak-anak juga bisa menyaksikan berbagai pertunjukkan dan belajar banyak hal. Wajib dikunjungi kalau liburan ke Lembang bersama anak-anak!
      """
    ],
    [
      'Floating Market Lembang',
      'Lembang',
      'assets/images/Floating Market Lembang.jpg',
      """
        Floating Market Lembang adalah salah satu tempat wisata di Lembang lainnya yang sangat populer! Terletak tak jauh dari Alun-Alun Lembang, Floating Market Lembang langsung populer begitu dibuka pertama kalinya dulu. \n\n
        Punya danau yang cukup luas, destinasi wisata yang satu ini terkenal dengan berbagai stand tempat berjualan makanan yang dibuat di atas perahu kecil. Saking populernya, area wisata Floating Market pun sudah berkembang dan bertambah luas lho sekarang.\n\n
        Ada banyak wahana yang seru di sini, yang bikin tempat ini cocok dikunjungi keluarga saat liburan ke Lembang! Beberapa yang paling populer saat ini adalah Kyotoku, Rainbow Garden, dan Kota Mini. Coba kunjungi deh sama keluarga.
      """
    ],
    [
      'Farmhouse Lembang',
      'Lembang',
      'assets/images/Farmhouse Lembang.jpg',
      """
        Farmhouse Lembang adalah tempat wisata di area Lembang yang menawarkan pengalaman unik: theme park bergaya Eropa! Yup, selain bangunan-bangunannya yang bergaya Belanda, kamu pun bisa mengenakan kostum tradisional ala Belanda yang lucu.\n\n
        Spot fotonya banyak, dan ada restoran juga di mana kamu bisa menikmati susu yang jadi jagoan utama tempat ini serta makanan lainnya di dalam restoran dengan interior yang unik.
        Farmhouse Lembang
      """
    ],
    [
      'Gunung Putri Lembang',
      'Lembang',
      'assets/images/Gunung Putri Lembang.jpg',
      """
        Untuk melihat sunrise di sekitar Bandung, rasanya enggak ada destinasi wisata yang lebih baik daripada . Lokasinya enggak jauh dari kota, tepatnya di Lembang, Kabupaten Bandung Barat, Jawa Barat.\n\n
        Pendakian ke puncaknya pun enggak makan banyak waktu, cuma 30 menit. Meski begitu, semua pengunjung akan mendapatkan pemandangan matahari terbit yang indah dari sana.
      """
    ],
    [
      'Bukit Moko',
      'Bandung ',
      'assets/images/Bukit Moko.jpg',
      """
        Bukit Moko adalah salah satu spot paling populer di Bandung untuk melihat sunset atau cahaya kota Bandung di malam hari dari ketinggian! Bisa dikunjungi dengan melakukan perjalanan dengan kendaraan bermotor melalui Jalan Padasuka dan Jalan Cimenyan.\n\n
        Sayangnya jalanan ke arah Bukit Moko tidak terlalu mudah dilalui karena cukup curam dan kondisi jalan di beberapa area dilaporkan tidak begitu bagus. Jadi pastikan kamu berhati-hati, ya! Bisa juga gunakan  lokal yang sudah kenal jalanan Bandung.
      """
    ],
    [
      'Glamping Lakeside Rancabali',
      'Ciwidey',
      'assets/images/Glamping Lakeside Rancabali.jpg',
      """
        Terletak enggak jauh dari Kawah Putih Ciwidey maupun Kampung Cai Ranca Upas,  merupakan area glamping yang terletak di sisi Situ Patenggang.\n\n
        Dengan pemandangan danau yang indah, udara yang sejuk, dan pagi yang seringkali berkabut, menginap di Glamping Lakeside Rancabali dijamin bakal memberikan pengalaman berbeda.\n\n
        Menurut situs resminya, kamu bisa menginap di salah satu jenis penginapan di Glamping Lakeside Rancabali mulai dari Rp 1,1 jutaan per malam.
        Kalaupun kamu enggak mau menginap, kamu bisa kok mampir aja ke Pinisi Resto-nya yang unik!
      """
    ],
    [
      'Rumah Belanda',
      'Lembang',
      'assets/images/Rumah Belanda.jpg',
      """
        Kata siapa untuk mencoba dan berfoto dengan pakaian tradisional Belanda cuma bisa dilakukan di Belanda? Kamu juga bisa melakukannya di Bandung, lho. Tepatnya di Rumah Belanda, yang terletak di Lembang, Kabupaten Bandung Barat.\n\n
        Di tempat wisata Bandung yang unik ini, kamu bisa merasakan budaya Belanda tapi di Lembang. Kamu beneran akan serasa di Volendam, di mana kamu bisa berfoto dengan menggunakan pakaian tradisional Belanda dengan latar belakang ala rumah-rumah Belanda.\n\n
        Enggak hanya itu, kamu juga bisa menikmati berbagai makanan khas Belanda di sini seperti macaroni schotel, bitterballen, dan kroketten!
      """
    ],
    [
      'Grafika Cikole',
      'Lembang',
      'assets/images/Grafika Cikole.jpg',
      """
        Pernah melihat foto-foto villa-villa cantik yang berdiri berjajar di tengah hutan pinus yang asri? Besar kemungkinan foto itu berasal dari Grafika Cikole, tempat wisata di Bandung yang populer banget karena villa-villa mini ini.\n\n
        Terletak di Cikole, Lembang, Grafika Cikole bukan saja menawarkan penginapan dengan suasana menyenangkan khas Hutan Pinus, tetapi juga berbagai aktivitas outdoor dari ATV, outbound, sampai paintball.
      """
    ],
    [
      'Taman Wisata Bougenville',
      'Bandung',
      'assets/images/Taman Wisata Bougenville.jpg',
      """
        Kalau ingin merasakan wisata alam tak jauh dari Bandung namun dengan fasilitas lengkap yang cocok untuk liburan keluarga, Taman Wisata Bougenville adalah salah satu tempat wisata di Bandung yang harus dikunjungi.\n\n
        Punya konsep nature escape namun dengan berbagai fasilitas yang ramah keluarga, Taman Wisata Bougenville adalah tempat yang pas untuk dikunjungi saat ingin menghabiskan liburan keluarga jauh dari kota. Terletak di kaki Gunung Puntang, tempat wisata Bandung yang satu ini benar-benar asri dan menyenangkan untuk dikunjungi!
      """
    ],
    [
      'Kebun Teh Sukawana',
      'Cisarua',
      'assets/images/Kebun Teh Sukawana.jpg',
      """
        Satu lagi tempat wisata di sekitar Bandung yang khas banget, tentu saja, adalah kebun teh-nya! Salah satunya adalah Kebun Teh Sukawana, yang terletak di Cisarua, Kabupaten Bandung Barat, Jawa Barat. Enggak cuma untuk menikmati atmosfer kebun teh yang fresh dan panorama yang indah di sana, kamu tentu saja juga bisa berburu foto bagus di Kebun Teh Sukawana.
      """
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
        title: Text(
          "Travelan - Bandung",
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: LayoutBuilder(builder: (BuildContext context, constraint) {
        if (constraint.maxWidth < 750) {
          return ListView.builder(
            itemCount: travelData.length,
            itemBuilder: (context, index) {
              return TravelTile(
                title: travelData[index][0],
                location: travelData[index][1],
                imagePath: travelData[index][2],
                description: travelData[index][3],
              );
            },
          );
        } else if (constraint.maxWidth < 1200) {
          return Padding(
            padding: const EdgeInsets.all(25),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 4),
              itemCount: travelData.length,
              itemBuilder: (context, index) {
                return TravelGridTile(
                  title: travelData[index][0],
                  location: travelData[index][1],
                  imagePath: travelData[index][2],
                  description: travelData[index][3],
                );
              },
            ),
          );
        } else {
          return Padding(
            padding: const EdgeInsets.all(25),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 6,
                  mainAxisSpacing: 30,
                  crossAxisSpacing: 20,
                  childAspectRatio: 3 / 4),
              itemCount: travelData.length,
              itemBuilder: (context, index) {
                return TravelGridTile(
                  title: travelData[index][0],
                  location: travelData[index][1],
                  imagePath: travelData[index][2],
                  description: travelData[index][3],
                );
              },
            ),
          );
        }
      }),
    );
  }
}
