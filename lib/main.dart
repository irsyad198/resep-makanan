import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas/DetailResep.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Resep Makanan'),
      ),
      body: _PageList(),
    );
  }
}

final baseTextStyle =
    const TextStyle(color: Colors.white, fontFamily: 'comic sans');
final bigHeaderTextStyle =
    baseTextStyle.copyWith(fontSize: 24.0, fontWeight: FontWeight.bold);
final descTextStyle =
    baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);
final footerTextStyle =
    baseTextStyle.copyWith(fontSize: 14.0, fontWeight: FontWeight.w400);

class _PageList extends StatefulWidget {
  @override
  __PageStateListState createState() => __PageStateListState();
}

class __PageStateListState extends State<_PageList> {
  List<String> judul = [
    'Rendang Paha Ayam Organik',
    'Gulai Ayam',
    'Indomie Seblak Macaroni',
    'Penyetan Sambel Terasi Udang',
    'Tumis Jamur Tiram',
    'Capcay Goreng',
    'Oseng Kacang Panjang',
    'Cumi Pedas Manis',
    'Pesmol Ikan Nila',
    'Cumi Sambal Hijau'
  ];
  List<String> subJudul = [
    'Rendang Paha Ayam Organik',
    'Gulai Ayam',
    'Indomie Seblak Macaroni',
    'Penyetan Sambel Terasi Udang',
    'Tumis Jamur Tiram',
    'Capcay Goreng',
    'Oseng Kacang Panjang',
    'Cumi Pedas Manis',
    'Pesmol Ikan Nila',
    'Cumi Sambal Hijau'
  ];
  List<String> gambar = [
    'images/rendangpaha.jpeg',
    'images/gulaiayam.jpeg',
    'images/mieseblak.jpg',
    'images/penyetansambel.jpg',
    'images/tumisanjamur.jpg',
    'images/capcaygoreng.jpg',
    'images/osengkacang.jpg',
    'images/cumipedas.jpg',
    'images/pesmolikan.jpg',
    'images/cumisambal.jpg',
  ];

//  List<String> jumlah = [
//    '5 pcs',
//    '50 pcs',
//    '50 pcs',
//    '50 pcs',
//    '50 pcs',
//    '50 pcs',
//    '50 pcs',
//    '50 pcs',
//    '50 pcs',
//    '50 pcs',
//  ];

  List<String> resep = [
    '- 4 paha ayam organik \n'
        '- 2 buah kentang potong-potong \n'
        '- 2 butir telur rebus \n'
        '- 1 lembar daun kunyit iris \n'
        '- 4 lembar daun jeruk \n'
        '- 2 lembar daun salam \n'
        '- 1 bungkus kerisik (kelapa parut kering) \n'
        '- 200 ml santan + air \n'
        '- Garam, perasan dan gula malaka'
        '- 8 butir bawang merah \n'
        '- 3 butir bawang putih \n'
        '- 1 cm kunyit \n'
        '- 1 cm jahe \n'
        '- 1 cm lengkuas \n'
        '- 2 batang serai \n'
        '- 3 buah cabai rawit \n'
        '- 3 buah cabai merah',
    '- 1/2 ekor ayam \n'
        '- 1 buah jeruk nipis \n'
        '- 1 batang serai geprek \n'
        '- 2 lembar daun salam \n'
        '- 2 lembar daun jeruk \n'
        '- 200 ml santan encer \n'
        '- 200 ml santan kental \n'
        '- air matang secukupnya \n'
        '- secukupnya garam dan kaldu bubuk. \n'
        '- 6 siung bawang merah \n'
        '- 3 siung Bawang Putih \n'
        '- 3 butir kemiri sangrai \n'
        '- 4 cm lengkuas muda \n'
        '- 3 cm kunyit \n'
        '- 3 cm jahe \n'
        '- 1 sdm ketumbar \n'
        '- 1 sdt lada bubuk \n'
        '- 5 buah cabai rawit \n'
        '- 10 cabai merah keriting',
    '- 1 bungkus Indomie (mi rasa ayam bawang) rebus. \n'
        '- 30 gram macaroni rebus tiriskan \n'
        '- sedikit kerupuk bawang mentah rendam air panas hingga empuk beri sedikit minyak supaya tidak lengket \n'
        '- secukupnya daun bawang iris \n'
        '- 1 buah sosis iris \n'
        '- 1buah telur kocok lepas \n'
        '- 2 gelas air \n'
        '- sedikit garam, gula dan bumbu indomi \n'
        '- 3 bawang merah \n'
        '- 2 bawang putih \n'
        '- 5 cabai merah keriting \n'
        '- 3 rawit atau sesuai selera \n'
        '- 1 cm kencur',
    '- 25 buah cabai rawit merah \n'
        '- 15 buah cabai rawit ijo \n'
        '- 8 siung bawang merah \n'
        '- 4 siung bawang putih \n'
        '- 1 tomat sedang \n'
        '- 2 bungkus terasi',
    '- 2 bungkus jamur tiram \n'
        '- 1/2 papan tempe \n'
        '- 4 siung bawang merah \n'
        '- 3 siung bawang putih \n'
        '- 5 buah cabai hijau \n'
        '- saus tiram \n'
        '- kaldu jamur \n'
        '- garam dan gula',
    '- 10 udang \n'
        '- 1 wortel besar \n'
        '- 1 brokoli kecil \n'
        '- 1/2 kembang kol \n'
        '- Sedikit Jamur kuping \n'
        '- Sedikit Kapri \n'
        '- Sedikit jagung muda \n'
        '- 3 bawang putih, cincang \n'
        '- 1cm jahe, cincang \n'
        '- 2 sdm saos tiram \n'
        '- 1 sdm kecap asin \n'
        '- 1/2 sdm kecap ikan \n'
        '- 1 sdm kecap inggris \n'
        '- 1 sdm maizena (dilarutkan dengan 3 sdm air) \n'
        '- garam \n'
        '- air secukupnya',
    '- 12 buah kacang panjang \n'
        '- 1 buah tempe \n'
        '- 2 papan pete dikupas kulit \n'
        '- 5 bawang putih diiris \n'
        '- 4 bawang merah diiris \n'
        '- 5 buah cabai merah diiris \n'
        '- 1 ruas lengkuas digeprek \n'
        '- 1 ruas jahe digeprek \n'
        '- 1 serai digeprek \n'
        '- 2 daun salam \n'
        '- 2 daun jeruk \n'
        '- 2 sdm kecap manis \n'
        '- 1 sdm saus tiram \n'
        '- 1 sdt gula pasir \n'
        '- 1/2 sdt garam \n'
        '- air putih \n'
        '- minyak goreng.',
    '- 1 kg cumi ukuran besar cuci bersih kemudian beri sedikit cuka dan garam, potong sesuai selera. Lalu cuci lagi sampai bersih. \n'
        '- 2 papan petai \n'
        '- 10 butir bawang merah \n'
        '- 10 buah cabai keriting merah \n'
        '- 1 buah tomat \n'
        '- 50 gram daun bawang \n'
        '- dua ruas jahe \n'
        '- 5 siung bawang putih \n'
        '- 6 butir bawang merah \n'
        '- 5 sdm saus cabai \n'
        '- 1,5 sdm gula pasir \n'
        '- 2 sdm cabai rawit halus/uleg. kaldu bubuk secukupnya \n'
        '- 1/2 sdt lada hitam.',
    '- 1 kg ikan nila (sesuai selera) cuci bersih, beri garam dan perasan jeruk nipis, diamkan 30 menit, lalu goreng kering, sisihkan \n'
        '- 10 butir bawmer \n'
        '- 8 siung bawput \n'
        '- 4 buah kemiri \n'
        '- 1/2 sdt ketumbar \n'
        '- 2 cm kunyit \n'
        '- Minyak goreng untuk menumis \n'
        '- 1 cm jahe \n'
        '- 1 cm lengkuas \n'
        '- 2 lembar daun salam \n'
        '- 1 batang serai \n'
        '- 200 ml santan \n'
        '- gula garam kaldu bubuk \n'
        '- 1 batang daun bawang, iris kasar \n'
        '- 2 buah cabai merah, iris kasar \n'
        '- 5 buah cabai rawit, biarkan utuh \n'
        '- cuka masak sedikit secukupnya. \n'
        '- gula pasir, garam, kaldu bubuk secukupnya',
    '- cumi 500 gr \n'
        '- pokak secukupnya \n'
        '- garam/penyedap \n'
        '- bombai iris secukupnya \n'
        '- potongan tomat/dadu \n'
        '- air jeruk nipis \n'
        '- daun jeruk nipis \n'
        '- bamer 12-15 buah ukuran kecil \n'
        '- baput 1 siung \n'
        '- cabai hijau 1 ons',
  ];

  List<String> cara = [
    '- Goreng kentang sisihkan \n'
        '- Panaskan minyak tumis bahan halus sampai kering dan pecah minyak. \n'
        '- Masukkan ayam tumis sebentar kemudian masukkan santan dengan air aduk rata. \n'
        '- Masukkan kerisik, daun jeruk, daun salam, dan daun kunyit. \n'
        '- Kemudian masukkan kentang dan telur rebus tambahkan garam, gula malaka dan perasa. \n'
        '- Masak dengan api kecil sampai air kering, jika ingin berkuah jangan masak sampai kering. \n',
    '- Cuci bersih daging ayam dan lumuri dengan jeruk nipis diamkan kurang lebih 10 menit \n'
        '- Tumis bumbu halus sampai wangi, masukkan daun salam, daun jeruk, dan sereh, aduk sampai bumbu matang, masukkan ayam, aduk rata, masak sampai berubah warna, tambahkan garam dan kaldu \n'
        '- Masukkan santan encer dan air, masak dengan api sedang sampai daging ayam empuk \n'
        '- Setelah kuah menyusut dan daging ayam empuk, masukkan santan kental, masak sambil terus diaduk sampai santan mendidih dan bumbu meresap.',
    '- Tumis bumbu halus dengan sedikit minyak \n'
        '- masukkan air, setelah mendidih masukkan kocokan telur diaduk \n'
        '- masukkan macaroni, lalu sosis kerupuk dan mi, beri gula garam bumbu indomi \n'
        '- aduk rata test rasa angkat sajikan taburi dengan daun bawang.',
    '- Bahan di atas goreng semua sampai agak layu \n'
        '- Uleg jangan halus-halus beri garam dan gula sesuai rasa yang diinginkan \n'
        '- Tinggal siapkan lauk bisa tempe goreng, telur rebus, ayam, udang, dan lain-lain.',
    '- Cuci bersih jamur, siangi, sisihkan. \n'
        '- Goreng tempe setengah kering. Sisihkan. \n'
        '- Tumis dua bawang dan cabai sampai harum, masukkan jamur, aduk rata, tambahkan saus tiram, kaldu jamur, gula dan garam. Aduk rata. \n'
        '- Masukkan tempe, beri sedikit air, masak sampai bumbu meresap. Angkat dan sajikan.',
    '- Cuci sayur dan potong-potong \n'
        '- Tumis bawang putih sampai wangi, masukkan jahe cincang dan udang sampai berubah warna \n'
        '- Masukkan wortel dan air secukupnya, lalu semua bumbu lainnya, cek rasa \n'
        '- Masukkan semua sayuran lainnya kecuali brokoli. Jangan masak terlalu lama, kira-kira sayur sudah setengah matang. \n'
        '- Terakhir masukkan brokoli aduk sebentar lalu larutan maizena. Aduk sampai air berubah agak kental, matikan api.',
    '- Potong-potong kacang panjang cuci bersih dan sisihkan. Potong kecil-kecil tempe dan digoreng sebentar. Angkat dan tiriskan. \n'
        '- Siapkan wajan beri minyak goreng secukupnya. Tumis bawang merah dan putih sampai layu lalu masukkan lengkuas, jahe ,serai, daun salam dan daun jeruk, cabai merah. Aduk rata. Masukkan kacang panjang dan pete oseng-oseng lalu beri kecap manis, saus tiram, gula dan garam aduk rata beri sedikit air. \n'
        '- Koreksi rasa dan terakhir masukkan tempe goreng oseng-oseng sebentar sampai semua bahan tercampur rata. Lalu matikan api dan sajikan.',
    '- Tumis bumbu halus sampai matang lalu masukkan cumi. aduk rata. \n'
        '- Beri sedikit air (100 ml) kalau sudah mendidih masukkan semua bumbu. \n'
        '- Masukkan saat kuah mulai sedikit surut dan mengental masukkan semua bumbu iris plus petai. \n'
        '- Aduk-aduk biarkan sebentar lalu angkat dan sajikan.',
    '- Tumis bumbu halus dan bumbu lainnya sampai harum, lalu masukkan santan, masak sampai mendidih. \n'
        '- Masukkan ikan, beri gula, garam, kaldu bubuk, dan sedikit cuka masak lalu koreksi rasa. \n'
        '- Masuk daun bawang, cabai merah, cabai rawit, masak hingga air surut.',
    '- Bersihkan cuci, potong-potong. \n'
        '- Sirami dengan air jeruk nipis dan garam diamkan 5 menit kemudian bilas, goreng cumi sebentar dan tiriskan \n'
        '- Cuci pokak, goreng sebentar, sisihkan \n'
        '- Ulek kasar cabai, garam/penyedap \n'
        '- Panaskan minyak, masukkan bombai, potongan tomat sampai layu, masukkan cabai ulek dan daun jeruk \n'
        '- Masukkan cumi dan pokak aduk-aduk sampai tercampur rata sajikan.',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: judul.length,
          itemBuilder: (BuildContext contex, int index) {
            final title = judul[index].toString();
            final subTitle = subJudul[index].toString();
            //final jmlh = jumlah[index].toString();
            final img = gambar[index].toString();
            final recipe = resep[index].toString();
            final masak = cara[index].toString();
            return Container(
              height: 200.0,
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      backgroundImage(img),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          child: topContent(title, subTitle, recipe, masak),
                        ),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailResep(
                                itemJudul: title,
                                itemSub: subTitle,
                                itemImage: img,
                                itemResep: recipe,
                                itemCara: masak)));
                  }),
            );
          }),
    );
  }

  backgroundImage(String gambar) {
    return new Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: DecorationImage(
              fit: BoxFit.fitWidth,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5), BlendMode.luminosity),
              image: AssetImage(gambar))),
    );
  }

  topContent(String nama, String deskripsi, String stok, String masak) {
    return new Container(
//      height: 80.0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(
            nama,
            style: bigHeaderTextStyle,
          ),
          Text(
            'Resep ' + deskripsi + ' Mudah dan Praktis',
            style: descTextStyle,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3.0, bottom: 2.0),
            child: Container(
              height: 2.0,
              width: 80.0,
              color: Colors.orange,
            ),
          ),
//          Text(stok, style: descTextStyle,),
        ],
      ),
    );
  }
}
