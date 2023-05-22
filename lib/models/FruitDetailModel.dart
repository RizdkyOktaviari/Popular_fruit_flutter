import 'package:flutter/material.dart';

class fruitdetails {
  final String image,
      fruitname,
      description,
      fruitcolor,
      benefit,
      fruitnameid,
      fruitnamems,
      descriptionid,
      descriptionms,
      benefitid,
      benefitms,
      fruitcolorid,
      fruitcolorms;
  final int id;

  fruitdetails({
    required this.id,
    required this.image,
    required this.fruitname,
    required this.description,
    required this.fruitcolor,
    required this.benefit,
    required this.fruitnameid,
    required this.fruitnamems,
    required this.descriptionid,
    required this.descriptionms,
    required this.benefitid,
    required this.benefitms,
    required this.fruitcolorid,
    required this.fruitcolorms,
  });
}

List<fruitdetails> fruitDetails = [
  fruitdetails(
    id: 0,
    image: "Apple.png",
    fruitname: "Apple",
    fruitnameid: "Apel",
    fruitnamems: "Epal",
    description:
        "A round fruit with a smooth and typically red, yellow, or green skin. It has a crisp texture and a sweet or slightly tart flavor.",
    descriptionid:
        "Buah yang berbentuk bulat dengan kulit yang halus dan biasanya berwarna merah, kuning, atau hijau. Ia mempunyai tekstur yang renyah dan rasa yang manis atau sedikit masam.",
    descriptionms:
        "Buah yang berbentuk bulat dengan kulit yang halus dan biasanya berwarna merah, kuning, atau hijau. Ia mempunyai tekstur yang renyah dan rasa yang manis atau sedikit masam.",
    benefitid: "Tinggi serat dan antioksidan, meningkatkan kesehatan jantung.",
    benefitms: "Tinggi serat dan antioksidan, menggalakkan kesihatan jantung.",
    fruitcolor: "Red",
    fruitcolorid: "Merah",
    fruitcolorms: "Merah",
    benefit: "High in fiber and antioxidants, promotes heart health.",
  ),
  fruitdetails(
    id: 1,
    image: "Banana.png",
    fruitname: "Banana",
    fruitnameid: "Pisang",
    fruitnamems: "Pisang",
    description:
        "A long curved fruit which grows in clusters and has soft pulpy flesh and yellow skin when ripe.",
    descriptionid:
        "Buah yang berbentuk melengkung panjang yang tumbuh dalam kelompok dan memiliki daging yang lembut dan kulit kuning ketika matang.",
    descriptionms:
        "Buah yang berbentuk melengkung panjang yang tumbuh dalam kelompok dan memiliki daging yang lembut dan kulit kuning ketika matang.",
    benefitid:
        "Kaya kalium dan vitamin, meningkatkan energi dan memperbaiki pencernaan.",
    benefitms:
        "Kaya kalium dan vitamin, meningkatkan tenaga dan memperbaiki penghadaman.",
    fruitcolor: "Yellow",
    fruitcolorid: "Kuning",
    fruitcolorms: "Kuning",
    benefit:
        "Rich in potassium and vitamins, boosts energy and improves digestion.",
  ),
  fruitdetails(
    id: 2,
    image: "Beetroot.png",
    fruitname: "Beetroot",
    fruitnameid: "Bit",
    fruitnamems: "Bit",
    description:
        "A round fruit with a smooth and typically red, yellow, or green skin. It has a crisp texture and a sweet or slightly tart flavor.",
    descriptionid:
        "Buah bulat dengan kulit halus dan biasanya berwarna merah, kuning, atau hijau. Memiliki tekstur yang renyah dan rasa yang manis atau sedikit asam.",
    descriptionms:
        "Buah bulat dengan kulit licin dan biasanya merah, kuning atau hijau. Ia mempunyai tekstur yang garing dan rasa manis atau sedikit masam.",
    benefitid:
        "Mendukung fungsi hati, menurunkan tekanan darah, dan meningkatkan kinerja olahraga.",
    benefitms:
        "Mendukung fungsi hati, menurunkan tekanan darah, dan meningkatkan prestasi sukan.",
    fruitcolor: "Red",
    fruitcolorid: "Merah",
    fruitcolorms: "Merah",
    benefit:
        "Supports liver function, lowers blood pressure, and enhances exercise performance.",
  ),
  fruitdetails(
    id: 3,
    image: "Bell Pepper.png",
    fruitname: "Bell Pepper",
    fruitnameid: "Lada",
    fruitnamems: "Lada",
    description:
        "A hollow, blocky fruit with a crunchy texture. It comes in different colors, such as red, yellow, and green, and has a mildly sweet taste.",
    descriptionid:
        "Buah berongga dan kotak-kotak dengan tekstur yang renyah. Muncul dalam berbagai warna, seperti merah, kuning, dan hijau, dan memiliki rasa yang agak manis.",
    descriptionms:
        "Buah berongga dan berbentuk kotak dengan tekstur renyah. Ia datang dalam pelbagai warna, seperti merah, kuning, dan hijau, dan mempunyai rasa yang sedikit manis.",
    benefitid:
        "Kaya vitamin C, membantu pencernaan, dan mempromosikan kulit yang sehat.",
    benefitms:
        "Kaya vitamin C, membantu penghadaman, dan mempromosikan kulit yang sihat.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit: "High in vitamin C, aids in digestion, and promotes healthy skin.",
  ),
  fruitdetails(
    id: 4,
    image: "Cabbage.png",
    fruitname: "Cabbage",
    fruitnameid: "Kubis",
    fruitnamems: "Kubis",
    description:
        "A leafy vegetable with tightly packed layers of leaves. It has a mild and slightly sweet flavor and is commonly used in salads, coleslaw, and stir-fries.",
    descriptionid:
        "Sayuran berdaun dengan lapisan daun yang padat. Memiliki rasa yang lembut dan sedikit manis dan biasanya digunakan dalam salad, coleslaw, dan tumisan.",
    descriptionms:
        "Sayur berdaun dengan lapisan daun yang padat. Ia mempunyai rasa yang lembut dan sedikit manis dan biasanya digunakan dalam salad, coleslaw, dan tumisan.",
    benefitid:
        "Kaya nutrisi dan antioksidan, mendukung fungsi kekebalan tubuh dan membantu penurunan berat badan.",
    benefitms:
        "Kaya nutrien dan antioksidan, menyokong fungsi imun dan membantu penurunan berat badan.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit:
        "Rich in nutrients and antioxidants, supports immune function and aids in weight loss.",
  ),
  fruitdetails(
    id: 5,
    image: "Capsicum.png",
    fruitname: "Capsicum",
    fruitnameid: "Lada",
    fruitnamems: "Lada",
    description:
        "Also known as bell pepper or sweet pepper, it is a vegetable with a crisp texture and a sweet flavor. It comes in various colors, including red, yellow, and green.",
    descriptionid:
        "Juga dikenal sebagai paprika atau paprika, ini adalah sayuran dengan tekstur yang renyah dan rasa yang manis. Muncul dalam berbagai warna, termasuk merah, kuning, dan hijau.",
    descriptionms:
        "Juga dikenali sebagai lada bell atau lada manis, ia adalah sayur dengan tekstur yang renyah dan rasa yang manis. Ia datang dalam pelbagai warna, termasuk merah, kuning, dan hijau.",
    benefitid:
        "Mengandung vitamin A dan C, mendukung kesehatan mata dan meningkatkan kekebalan tubuh.",
    benefitms:
        "Mengandungi vitamin A dan C, menyokong kesihatan mata dan meningkatkan imuniti.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit:
        "Contains vitamin A and C, supports eye health and boosts immunity.",
  ),
  fruitdetails(
    id: 6,
    image: "Carrot.png",
    fruitname: "Carrot",
    fruitnameid: "Lobak",
    fruitnamems: "Lobak",
    description:
        "A root vegetable with an elongated shape and a bright orange color. It has a crunchy texture and a sweet taste. Carrots are often eaten raw or used in cooking and salads.",
    descriptionid:
        "Sayuran akar dengan bentuk yang memanjang dan warna oranye cerah. Memiliki tekstur yang renyah dan rasa yang manis. Lobak sering dimakan mentah atau digunakan dalam masakan dan salad.",
    descriptionms:
        "Sayuran akar dengan bentuk yang memanjang dan warna oren cerah. Ia mempunyai tekstur yang renyah dan rasa yang manis. Lobak sering dimakan mentah atau digunakan dalam masakan dan salad.",
    benefitid:
        "Sumber beta-karoten yang sangat baik, meningkatkan penglihatan dan kulit yang sehat.",
    benefitms:
        "Sumber beta-karoten yang sangat baik, meningkatkan penglihatan dan kulit yang sihat.",
    fruitcolor: "Orange",
    fruitcolorid: "Oren",
    fruitcolorms: "Oren",
    benefit:
        "Excellent source of beta-carotene, promotes healthy vision and skin.",
  ),
  fruitdetails(
    id: 7,
    image: "Cauliflower.png",
    fruitname: "Cauliflower",
    fruitnameid: "Kol",
    fruitnamems: "Kol",
    description:
        "A vegetable with a dense, compact head composed of small, tightly packed florets. It has a mild and slightly nutty flavor and is commonly used as a low-carb substitute for rice or as a vegetable side dish.",
    descriptionid:
        "Sayuran dengan kepala padat dan padat yang terdiri dari kuntum kecil yang padat. Ini memiliki rasa yang ringan dan sedikit pedas dan biasanya digunakan sebagai pengganti nasi rendah karbohidrat atau sebagai lauk sayuran.",
    descriptionms:
        "Sayuran dengan kepala padat dan padat yang terdiri dari kuntum kecil yang padat. Ia mempunyai rasa yang ringan dan sedikit pedas dan biasanya digunakan sebagai pengganti nasi rendah karbohidrat atau sebagai lauk sayuran.",
    benefitid:
        "Rendah kalori, tinggi serat, dan kaya akan vitamin dan mineral.",
    benefitms:
        "Rendah kalori, tinggi serat, dan kaya akan vitamin dan mineral.",
    fruitcolor: "White",
    fruitcolorid: "Putih",
    fruitcolorms: "Putih",
    benefit:
        "Low in calories, high in fiber, and rich in vitamins and minerals.",
  ),
  fruitdetails(
    id: 8,
    image: "ChilliPepper.png",
    fruitname: "Chilli Pepper",
    fruitnameid: "Cili",
    fruitnamems: "Cili",
    description:
        "A small, elongated fruit that comes in various colors, ranging from green to red. It has a hot and spicy flavor and is used to add heat to dishes.",
    descriptionid:
        "Buah kecil yang memanjang yang datang dalam berbagai warna, mulai dari hijau hingga merah. Memiliki rasa pedas dan pedas dan digunakan untuk menambah panas pada hidangan.",
    descriptionms:
        "Buah kecil yang memanjang yang datang dalam pelbagai warna, mulai dari hijau hingga merah. Ia mempunyai rasa pedas dan pedas dan digunakan untuk menambah panas pada hidangan.",
    benefitid:
        "Meningkatkan metabolisme, membantu menghilangkan rasa sakit, dan mendukung kesehatan jantung.",
    benefitms:
        "Meningkatkan metabolisme, membantu menghilangkan rasa sakit, dan menyokong kesihatan jantung.",
    fruitcolor: "Red",
    fruitcolorid: "Merah",
    fruitcolorms: "Merah",
    benefit:
        "Boosts metabolism, aids in pain relief, and supports heart health.",
  ),
  fruitdetails(
    id: 9,
    image: "Corn.png",
    fruitname: "Corn",
    fruitnameid: "Jagung",
    fruitnamems: "Jagung",
    description:
        "A cereal grain with sweet and juicy kernels. It is commonly consumed as a vegetable and can be boiled, grilled, or used in salads and soups.",
    descriptionid:
        "Biji-bijian sereal dengan biji yang manis dan berair. Biasanya dikonsumsi sebagai sayuran dan bisa direbus, dipanggang, atau digunakan dalam salad dan sup.",
    descriptionms:
        "Bijirin bijirin dengan biji manis dan berair. Ia biasanya dimakan sebagai sayur-sayuran dan boleh direbus, dibakar, atau digunakan dalam salad dan sup.",
    benefitid:
        "Sumber serat dan antioksidan yang baik, mendukung kesehatan mata, dan membantu pencernaan.",
    benefitms:
        "Sumber serat dan antioksidan yang baik, menyokong kesihatan mata, dan membantu penghadaman.",
    fruitcolor: "Yellow",
    fruitcolorid: "Kuning",
    fruitcolorms: "Kuning",
    benefit:
        "Good source of fiber and antioxidants, supports eye health, and aids digestion.",
  ),
  fruitdetails(
    id: 10,
    image: "Cucumber.png",
    fruitname: "Cucumber",
    fruitnameid: "Timun",
    fruitnamems: "Timun",
    description:
        "A long, cylindrical fruit with a crisp texture and a mild, refreshing taste. It is often eaten raw or used in salads and pickles.",
    descriptionid:
        "Buah yang panjang dan silinder dengan tekstur renyah dan rasa yang lembut dan menyegarkan. Sering dimakan mentah atau digunakan dalam salad dan acar.",
    descriptionms:
        "Buah yang panjang dan berbentuk silinder dengan tekstur yang garing dan rasa yang lembut dan menyegarkan. Ia selalunya dimakan mentah atau digunakan dalam salad dan acar.",
    benefitid:
        "Menghidrasi, rendah kalori, dan membantu dengan hidrasi dan detoksifikasi.",
    benefitms:
        "Menghidrasi, rendah kalori, dan membantu dengan hidrasi dan detoksifikasi.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit:
        "Hydrating, low in calories, and helps with hydration and detoxification.",
  ),
  fruitdetails(
    id: 11,
    image: "Eggplant.png",
    fruitname: "Eggplant",
    fruitnameid: "Terung",
    fruitnamems: "Terung",
    description:
        "A vegetable with a smooth, glossy skin and a creamy, tender flesh. It has a mild, slightly sweet flavor and is commonly used in Mediterranean and Asian cuisines.",
    descriptionid:
        "Sayuran dengan kulit yang halus dan mengkilap serta daging yang lembut dan lembut. Rasanya ringan, sedikit manis dan biasa digunakan dalam masakan Mediterania dan Asia.",
    descriptionms:
        "Sayuran dengan kulit licin, berkilat dan daging berkrim dan lembut. Ia mempunyai rasa yang lembut, sedikit manis dan biasanya digunakan dalam masakan Mediterranean dan Asia.",
    benefitid:
        "Kaya antioksidan, mendukung kesehatan otak, dan membantu pencernaan.",
    benefitms:
        "Kaya antioksidan, menyokong kesihatan otak, dan membantu penghadaman.",
    fruitcolor: "Purple",
    fruitcolorid: "Ungu",
    fruitcolorms: "Ungu",
    benefit:
        "Rich in antioxidants, supports brain health, and aids in digestion.",
  ),
  fruitdetails(
    id: 12,
    image: "Garlic.png",
    fruitname: "Garlic",
    fruitnameid: "Bawang putih",
    fruitnamems: "Bawang putih",
    description:
        "A bulbous plant with a strong, pungent flavor. It is used as a seasoning in various savory dishes and is known for its health benefits.",
    descriptionid:
        "Tumbuhan berumbi dengan rasa yang kuat dan menyengat. Ini digunakan sebagai bumbu dalam berbagai hidangan gurih dan dikenal dengan manfaat kesehatannya.",
    descriptionms:
        "Tumbuhan bulbous dengan rasa yang kuat dan pedas. Ia digunakan sebagai perasa dalam pelbagai hidangan yang lazat dan terkenal dengan manfaat kesihatannya.",
    benefitid:
        "Meningkatkan sistem kekebalan tubuh, menurunkan tekanan darah, dan memiliki sifat anti-inflamasi.",
    benefitms:
        "Meningkatkan sistem imun, menurunkan tekanan darah, dan mempunyai sifat anti-radang.",
    fruitcolor: "White",
    fruitcolorid: "Putih",
    fruitcolorms: "Putih",
    benefit:
        "Boosts immune system, lowers blood pressure, and has anti-inflammatory properties.",
  ),
  fruitdetails(
    id: 13,
    image: "Ginger.png",
    fruitname: "Ginger",
    fruitnameid: "Halia",
    fruitnamems: "Halia",
    description:
        "A knobby root with a spicy and aromatic flavor. It is used as a spice in cooking, baking, and beverages, and is known for its medicinal properties.",
    descriptionid:
        "Akar berbentuk benjolan dengan rasa pedas dan aromatik. Ini digunakan sebagai rempah-rempah dalam memasak, memanggang, dan minuman, dan dikenal karena sifat obatnya.",
    descriptionms:
        "Akar berbentuk benjolan dengan rasa pedas dan beraroma. Ia digunakan sebagai rempah dalam memasak, membakar, dan minuman, dan terkenal dengan sifat perubatannya.",
    benefitid:
        "Anti-inflamasi, membantu pencernaan, dan menghilangkan mual dan nyeri otot.",
    benefitms:
        "Anti-radang, membantu penghadaman, dan menghilangkan mual dan sakit otot.",
    fruitcolor: "Brown",
    fruitcolorid: "Coklat",
    fruitcolorms: "Coklat",
    benefit:
        "Anti-inflammatory, aids digestion, and relieves nausea and muscle soreness.",
  ),
  fruitdetails(
    id: 14,
    image: "Grape.png",
    fruitname: "Grapes",
    fruitnameid: "Anggur",
    fruitnamems: "Anggur",
    description:
        "Small, round fruits that grow in clusters. They come in various colors, such as green, red, and purple, and have a sweet or tart flavor. Grapes are often eaten fresh or used to make wine and juices.",
    descriptionid:
        "Buah-buahan kecil dan bulat yang tumbuh dalam kelompok. Mereka datang dalam berbagai warna, seperti hijau, merah, dan ungu, dan memiliki rasa manis atau asam. Anggur sering dimakan segar atau digunakan untuk membuat anggur dan jus.",
    descriptionms:
        "Buah-buahan kecil dan bulat yang tumbuh dalam kelompok. Mereka datang dalam pelbagai warna, seperti hijau, merah, dan ungu, dan mempunyai rasa manis atau masam. Anggur sering dimakan segar atau digunakan untuk membuat wain dan jus.",
    benefitid:
        "Kaya antioksidan, mendukung kesehatan jantung, dan meningkatkan fungsi otak.",
    benefitms:
        "Kaya antioksidan, menyokong kesihatan jantung, dan meningkatkan fungsi otak.",
    fruitcolor: "Purple",
    fruitcolorid: "Ungu",
    fruitcolorms: "Ungu",
    benefit:
        "High in antioxidants, supports heart health, and promotes brain function.",
  ),
  fruitdetails(
    id: 15,
    image: "Jalepeno.png",
    fruitname: "Jalepeno",
    fruitnameid: "Cili",
    fruitnamems: "Cili",
    description:
        "A medium-sized chili pepper with a moderate to hot level of spiciness. It is often used in Mexican cuisine and can be eaten raw, cooked, or pickled.",
    descriptionid:
        "Cabai berukuran sedang dengan tingkat kepedasan sedang hingga panas. Sering digunakan dalam masakan Meksiko dan bisa dimakan mentah, dimasak, atau diacar.",
    descriptionms:
        "Cabai berukuran sederhana dengan tahap kepedasan sederhana hingga panas. Ia sering digunakan dalam masakan Mexico dan boleh dimakan mentah, dimasak, atau diacar.",
    benefitid:
        "Meningkatkan metabolisme, membantu pencernaan, dan memberikan bantuan nyeri.",
    benefitms:
        "Meningkatkan metabolisme, membantu penghadaman, dan memberikan bantuan nyeri.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit: "Boosts metabolism, aids in digestion, and provides pain relief.",
  ),
  fruitdetails(
    id: 16,
    image: "Kiwi.png",
    fruitname: "Kiwi",
    fruitnameid: "Kiwifruit",
    fruitnamems: "Kiwifruit",
    description:
        "A small, oval fruit with a fuzzy brown skin and a bright green or yellow flesh. It has a sweet and tangy taste and is rich in vitamin C.",
    descriptionid:
        "Buah kecil berbentuk oval dengan kulit coklat berbulu dan daging hijau atau kuning cerah. Memiliki rasa manis dan asam dan kaya akan vitamin C.",
    descriptionms:
        "Buah kecil berbentuk oval dengan kulit coklat berbulu dan daging hijau atau kuning cerah. Ia mempunyai rasa manis dan masam dan kaya dengan vitamin C.",
    benefitid:
        "Tinggi vitamin C, mendukung fungsi kekebalan tubuh, dan mempromosikan kulit yang sehat.",
    benefitms:
        "Tinggi vitamin C, menyokong fungsi imun, dan mempromosikan kulit yang sihat.",
    fruitcolor: "Brown",
    fruitcolorid: "Coklat",
    fruitcolorms: "Coklat",
    benefit:
        "High in vitamin C, supports immune function, and promotes healthy skin.",
  ),
  fruitdetails(
    id: 17,
    image: "Lemon.png",
    fruitname: "Lemon",
    fruitnameid: "Lemon",
    fruitnamems: "Lemon",
    description:
        "A citrus fruit with a bright yellow skin and a sour taste. It is used for its juice, zest, or as a flavoring agent in cooking, baking, and beverages.",
    descriptionid:
        "Buah jeruk dengan kulit kuning cerah dan rasa asam. Digunakan untuk jus, zest, atau sebagai agen perasa dalam memasak, memanggang, dan minuman.",
    descriptionms:
        "Buah jeruk dengan kulit kuning cerah dan rasa masam. Ia digunakan untuk jus, zest, atau sebagai agen perasa dalam memasak, memanggang, dan minuman.",
    benefitid:
        "Detoksifikasi, membantu pencernaan, dan meningkatkan asupan vitamin C.",
    benefitms:
        "Detoksifikasi, membantu penghadaman, dan meningkatkan pengambilan vitamin C.",
    fruitcolor: "Yellow",
    fruitcolorid: "Kuning",
    fruitcolorms: "Kuning",
    benefit: "Detoxifying, aids digestion, and boosts vitamin C intake.",
  ),
  fruitdetails(
    id: 18,
    image: "Lettuce.png",
    fruitname: "Lettuce",
    fruitnameid: "Selada",
    fruitnamems: "Selada",
    description:
        "A leafy green vegetable that comes in different varieties, such as iceberg, romaine, and leaf lettuce. It is often used as the base for salads, sandwiches, and wraps.",
    descriptionid:
        "Sayuran hijau berdaun yang datang dalam berbagai varietas, seperti selada es, romaine, dan selada daun. Sering digunakan sebagai dasar salad, sandwich, dan wrap.",
    descriptionms:
        "Sayuran hijau berdaun yang datang dalam pelbagai jenis, seperti selada ais, romaine, dan selada daun. Ia sering digunakan sebagai asas untuk salad, sandwich, dan wrap.",
    benefitid:
        "Rendah kalori, tinggi serat, dan mendukung pencernaan yang sehat.",
    benefitms:
        "Rendah kalori, tinggi serat, dan menyokong penghadaman yang sihat.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit: "Low in calories, high in fiber, and promotes healthy digestion.",
  ),
  fruitdetails(
    id: 19,
    image: "Mango.png",
    fruitname: "Mango",
    fruitnameid: "Mangga",
    fruitnamems: "Mangga",
    description:
        "A tropical fruit with a sweet, juicy flesh and a distinctive aroma. It comes in different varieties and is widely used in desserts, smoothies, and savory dishes.",
    descriptionid:
        "Buah tropis dengan daging yang manis dan berair dan aroma yang khas. Muncul dalam berbagai varietas dan banyak digunakan dalam hidangan penutup, smoothie, dan hidangan gurih.",
    descriptionms:
        "Buah tropika dengan daging yang manis, berair dan aroma yang tersendiri. Ia datang dalam pelbagai jenis dan digunakan secara meluas dalam pencuci mulut, smoothie, dan hidangan berperisa.",
    benefitid:
        "Kaya vitamin dan antioksidan, mendukung kesehatan mata dan meningkatkan kekebalan tubuh.",
    benefitms:
        "Kaya vitamin dan antioksidan, menyokong kesihatan mata dan meningkatkan imuniti.",
    fruitcolor: "Yellow",
    fruitcolorid: "Kuning",
    fruitcolorms: "Kuning",
    benefit:
        "Rich in vitamins and antioxidants, supports eye health and boosts immunity.",
  ),
  fruitdetails(
    id: 20,
    image: "Onion.png",
    fruitname: "Onion",
    fruitnameid: "Bawang",
    fruitnamems: "Bawang",
    description:
        "A bulbous vegetable with layers of papery skin and a pungent flavor. It is used as a base ingredient in many dishes and adds flavor to various cuisines.",
    descriptionid:
        "Sayuran berumbi dengan lapisan kulit kertas dan rasa yang menyengat. Digunakan sebagai bahan dasar dalam banyak hidangan dan menambah rasa pada berbagai masakan.",
    descriptionms:
        "Sayuran berumbi dengan lapisan kulit kertas dan rasa yang menyengat. Ia digunakan sebagai bahan asas dalam banyak hidangan dan menambah rasa pada pelbagai masakan.",
    benefitid:
        "Mengandung antioksidan, mendukung kesehatan jantung, dan memiliki sifat anti-inflamasi.",
    benefitms:
        "Mengandungi antioksidan, menyokong kesihatan jantung, dan mempunyai sifat anti-radang.",
    fruitcolor: "White",
    fruitcolorid: "Putih",
    fruitcolorms: "Putih",
    benefit:
        "Contains antioxidants, supports heart health, and has anti-inflammatory properties.",
  ),
  fruitdetails(
    id: 21,
    image: "Orange.png",
    fruitname: "Orange",
    fruitnameid: "Oren",
    fruitnamems: "Oren",
    description:
        "A citrus fruit with a bright orange color and a sweet, tangy taste. It is rich in vitamin C and is commonly eaten fresh or used for juice.",
    descriptionid:
        "Buah jeruk dengan warna oranye cerah dan rasa manis dan asam. Kaya akan vitamin C dan biasanya dimakan segar atau digunakan untuk jus.",
    descriptionms:
        "Buah jeruk dengan warna oren cerah dan rasa manis dan masam. Ia kaya dengan vitamin C dan biasanya dimakan segar atau digunakan untuk jus.",
    benefitid:
        "Kaya vitamin C, mendukung fungsi kekebalan tubuh, dan mempromosikan kulit yang sehat.",
    benefitms:
        "Kaya vitamin C, menyokong fungsi imun, dan mempromosikan kulit yang sihat.",
    fruitcolor: "Orange",
    fruitcolorid: "Oren",
    fruitcolorms: "Oren",
    benefit:
        "High in vitamin C, supports immune function, and promotes healthy skin.",
  ),
  fruitdetails(
    id: 22,
    image: "Paprika.png",
    fruitname: "Paprika",
    fruitnameid: "Lada",
    fruitnamems: "Lada",
    description:
        "A ground spice made from dried red peppers. It has a sweet and mildly spicy flavor and is used as a seasoning or garnish in various dishes.",
    descriptionid:
        "Rempah yang terbuat dari cabai merah kering. Memiliki rasa manis dan pedas dan digunakan sebagai bumbu atau hiasan dalam berbagai hidangan.",
    descriptionms:
        "Rempah yang terbuat dari lada merah kering. Ia mempunyai rasa manis dan pedas dan digunakan sebagai perasa atau hiasan dalam pelbagai hidangan.",
    benefitid:
        "Kaya vitamin C, mendukung fungsi kekebalan tubuh, dan mempromosikan kulit yang sehat.",
    benefitms:
        "Kaya vitamin C, menyokong fungsi imun, dan mempromosikan kulit yang sihat.",
    fruitcolor: "Red",
    fruitcolorid: "Merah",
    fruitcolorms: "Merah",
    benefit:
        "High in vitamin C, supports immune function, and promotes healthy skin.",
  ),
  fruitdetails(
    id: 23,
    image: "Pear.png",
    fruitname: "Pear",
    fruitnameid: "Pir",
    fruitnamems: "Pir",
    description:
        "A sweet and juicy fruit with a bell-shaped appearance. It comes in different varieties and is often eaten fresh or used in desserts and salads.",
    descriptionid:
        "Buah yang manis dan berair dengan penampilan berbentuk lonceng. Itu datang dalam varietas yang berbeda dan sering dimakan segar atau digunakan dalam makanan penutup dan salad.",
    descriptionms:
        "Buah yang manis dan berair dengan rupa berbentuk loceng. Ia datang dalam pelbagai jenis dan sering dimakan segar atau digunakan dalam pencuci mulut dan salad.",
    benefitid:
        "Kaya serat, mendukung kesehatan pencernaan, dan memberikan manfaat antioksidan.",
    benefitms:
        "Kaya serat, menyokong kesihatan penghadaman, dan memberikan manfaat antioksidan.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit:
        "High in fiber, supports digestive health, and provides antioxidant benefits.",
  ),
  fruitdetails(
    id: 24,
    image: "Peas.png",
    fruitname: "Peas",
    fruitnameid: "Kacang",
    fruitnamems: "Kacang",
    description:
        "Small, round green seeds that grow in pods. They have a sweet taste and are commonly used in soups, stews, and as a side dish.",
    descriptionid:
        "Kecil, biji hijau bulat yang tumbuh di polong. Mereka memiliki rasa manis dan biasanya digunakan dalam sup, semur, dan sebagai lauk.",
    descriptionms:
        "Biji benih hijau kecil dan bulat yang tumbuh dalam buah. Mereka mempunyai rasa manis dan biasanya digunakan dalam sup, rebusan, dan sebagai ulam.",
    benefitid:
        "Sumber yang baik protein dan serat, mendukung kesehatan jantung, dan membantu dalam pengelolaan berat badan.",
    benefitms:
        "Sumber yang baik protein dan serat, menyokong kesihatan jantung, dan membantu dalam pengurusan berat badan.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit:
        "Good source of protein and fiber, supports heart health, and aids in weight management.",
  ),
  fruitdetails(
    id: 25,
    image: "Pineapple.png",
    fruitname: "Pineapple",
    fruitnameid: "Nanas",
    fruitnamems: "Nanas",
    description:
        "A tropical fruit with a spiky, golden-brown skin and a sweet, juicy flesh. It is often eaten fresh or used in desserts, smoothies, and savory dishes.",
    descriptionid:
        "Buah tropis dengan kulit berduri berwarna keemasan dan daging yang manis dan berair. Sering dimakan segar atau digunakan dalam makanan penutup, smoothie, dan hidangan gurih.",
    descriptionms:
        "Buah tropika dengan kulit berduri berwarna keemasan dan daging yang manis dan berair. Ia sering dimakan segar atau digunakan dalam pencuci mulut, smoothie, dan hidangan berperisa.",
    benefitid:
        "Kaya bromelain, membantu pencernaan, dan mendukung fungsi kekebalan tubuh.",
    benefitms:
        "Kaya bromelain, membantu penghadaman, dan menyokong fungsi imun.",
    fruitcolor: "Yellow",
    fruitcolorid: "Kuning",
    fruitcolorms: "Kuning",
    benefit:
        "Rich in bromelain, aids in digestion, and supports immune function.",
  ),
  fruitdetails(
    id: 26,
    image: "Pomegranate.png",
    fruitname: "Pomegranate",
    fruitnameid: "Delima",
    fruitnamems: "Delima",
    description:
        "A fruit with a tough, leathery skin and juicy red seeds. It has a sweet and tart flavor and is known for its antioxidant properties.",
    descriptionid:
        "Buah dengan kulit yang keras dan berair dan biji merah. Memiliki rasa manis dan asam dan dikenal karena sifat antioksidannya.",
    descriptionms:
        "Buah dengan kulit yang keras, berkulit dan biji merah berair. Ia mempunyai rasa manis dan masam dan terkenal dengan sifat antioksidannya.",
    benefitid:
        "Kaya antioksidan, mendukung kesehatan jantung, dan mengurangi peradangan.",
    benefitms:
        "Kaya antioksidan, menyokong kesihatan jantung, dan mengurangkan keradangan.",
    fruitcolor: "Red",
    fruitcolorid: "Merah",
    fruitcolorms: "Merah",
    benefit:
        "High in antioxidants, supports heart health, and reduces inflammation.",
  ),
  fruitdetails(
    id: 27,
    image: "Potato.png",
    fruitname: "Potato",
    fruitnameid: "Kentang",
    fruitnamems: "Kentang",
    description:
        "An underground tuber with a starchy flesh and a neutral flavor. It is versatile and can be boiled, baked, mashed, or fried.",
    descriptionid:
        "Umbi bawah tanah dengan daging yang berpati dan rasa netral. Sangat serbaguna dan bisa direbus, dipanggang, dihaluskan, atau digoreng.",
    descriptionms:
        "Umbi bawah tanah dengan daging yang berpati dan rasa netral. Ia serbaguna dan boleh direbus, dibakar, dihaluskan, atau digoreng.",
    benefitid:
        "Sumber kalium dan vitamin C yang baik, memberikan energi, dan membantu pencernaan.",
    benefitms:
        "Sumber kalium dan vitamin C yang baik, memberikan tenaga, dan membantu penghadaman.",
    fruitcolor: "Brown",
    fruitcolorid: "Coklat",
    fruitcolorms: "Coklat",
    benefit:
        "Good source of potassium and vitamin C, provides energy, and aids in digestion.",
  ),
  fruitdetails(
    id: 28,
    image: "Raddish.png",
    fruitname: "Raddish",
    fruitnameid: "Lobak",
    fruitnamems: "Lobak",
    description:
        "A small, root vegetable with a crunchy texture and a peppery taste. It comes in various colors, shapes, and sizes and is often eaten raw or used in salads.",
    descriptionid:
        "Sayuran akar kecil dengan tekstur renyah dan rasa pedas. Muncul dalam berbagai warna, bentuk, dan ukuran dan sering dimakan mentah atau digunakan dalam salad.",
    descriptionms:
        "Sayuran akar kecil dengan tekstur yang renyah dan rasa pedas. Ia datang dalam pelbagai warna, bentuk, dan saiz dan sering dimakan mentah atau digunakan dalam salad.",
    benefitid:
        "Kaya vitamin C dan serat, mendukung pencernaan, dan mempromosikan kulit yang sehat.",
    benefitms:
        "Kaya vitamin C dan serat, menyokong penghadaman, dan mempromosikan kulit yang sihat.",
    fruitcolor: "Purple",
    fruitcolorid: "Ungu",
    fruitcolorms: "Ungu",
    benefit:
        "High in vitamin C and fiber, supports digestion, and promotes healthy skin.",
  ),
  fruitdetails(
    id: 29,
    image: "SoyBeans.png",
    fruitname: "Soybeans",
    fruitnameid: "Kacang soya",
    fruitnamems: "Kacang soya",
    description:
        "Legumes that are commonly used for their protein-rich seeds. They can be cooked, fermented, or processed into various soy products.",
    descriptionid:
        "Kacang-kacangan yang biasa digunakan untuk biji-bijian yang kaya protein. Mereka bisa dimasak, difermentasi, atau diproses menjadi berbagai produk kedelai.",
    descriptionms:
        "Kekacang yang biasa digunakan untuk bijinya yang kaya dengan protein. Mereka boleh dimasak, ditapai, atau diproses menjadi pelbagai produk soya.",
    benefitid:
        "Tinggi protein, mendukung kesehatan jantung, dan memberikan asam amino esensial.",
    benefitms:
        "Tinggi protein, menyokong kesihatan jantung, dan memberikan asid amino esensial.",
    fruitcolor: "Brown",
    fruitcolorid: "Coklat",
    fruitcolorms: "Coklat",
    benefit:
        "High in protein, supports heart health, and provides essential amino acids.",
  ),
  fruitdetails(
    id: 30,
    image: "Spinach.png",
    fruitname: "Spinach",
    fruitnameid: "Bayam",
    fruitnamems: "Bayam",
    description:
        "A leafy green vegetable with a tender texture and a mild, slightly bitter taste. It is rich in vitamins and minerals and is used in salads, smoothies, and cooked dishes.",
    descriptionid:
        "Sayuran hijau berdaun dengan tekstur lembut dan rasa ringan yang sedikit pahit. Kaya akan vitamin dan mineral dan digunakan dalam salad, smoothie, dan hidangan matang.",
    descriptionms:
        "Sayuran hijau berdaun dengan tekstur yang lembut dan rasa yang ringan dan sedikit pahit. Ia kaya dengan vitamin dan mineral dan digunakan dalam salad, smoothie, dan hidangan masak.",
    benefitid:
        "Kaya nutrisi, kaya zat besi dan vitamin, dan mendukung kesehatan tulang dan mata.",
    benefitms:
        "Kaya nutrien, kaya zat besi dan vitamin, dan menyokong kesihatan tulang dan mata.",
    fruitcolor: "Green",
    fruitcolorid: "Hijau",
    fruitcolorms: "Hijau",
    benefit:
        "Nutrient-dense, rich in iron and vitamins, supports bone and eye health.",
  ),
  fruitdetails(
    id: 31,
    image: "Sweetcorn.png",
    fruitname: "Sweetcorn",
    fruitnameid: "Jagung",
    fruitnamems: "Jagung",
    description:
        "A variety of corn with sweet and tender kernels. It is commonly eaten as a vegetable and can be boiled, grilled, or used in soups and salads.",
    descriptionid:
        "Varietas jagung dengan biji yang manis dan lembut. Biasanya dimakan sebagai sayuran dan bisa direbus, dipanggang, atau digunakan dalam sup dan salad.",
    descriptionms:
        "Pelbagai jenis jagung dengan biji manis dan lembut. Ia biasanya dimakan sebagai sayur-sayuran dan boleh direbus, dibakar, atau digunakan dalam sup dan salad.",
    benefitid:
        "Sumber serat yang baik, mendukung pencernaan, dan memberikan energi.",
    benefitms:
        "Sumber serat yang baik, menyokong penghadaman, dan memberikan tenaga.",
    fruitcolor: "Yellow",
    fruitcolorid: "Kuning",
    fruitcolorms: "Kuning",
    benefit: "Good source of fiber, supports digestion, and provides energy.",
  ),
  fruitdetails(
    id: 32,
    image: "Sweetpotato.png",
    fruitname: "Sweetpotato",
    fruitnameid: "Ubi",
    fruitnamems: "Ubi",
    description:
        "A root vegetable with an orange or purple flesh and a sweet taste. It is often baked, mashed, or used in pies and casseroles.",
    descriptionid:
        "Sayuran akar dengan daging oranye atau ungu dan rasa manis. Sering dipanggang, dihaluskan, atau digunakan dalam pai dan kaserol.",
    descriptionms:
        "Sayuran akar dengan daging oren atau ungu dan rasa manis. Ia sering dibakar, dihaluskan, atau digunakan dalam pai dan kaserol.",
    benefitid:
        "Tinggi serat dan vitamin, mendukung kesehatan pencernaan, dan meningkatkan kekebalan tubuh.",
    benefitms:
        "Tinggi serat dan vitamin, menyokong kesihatan penghadaman, dan meningkatkan imuniti.",
    fruitcolor: "Orange",
    fruitcolorid: "Oren",
    fruitcolorms: "Oren",
    benefit:
        "High in fiber and vitamins, supports digestive health and boosts immunity.",
  ),
  fruitdetails(
    id: 33,
    image: "Tomato.png",
    fruitname: "Tomato",
    fruitnameid: "Tomato",
    fruitnamems: "Tomato",
    description:
        "A round, juicy fruit with a bright red or yellow skin. It has a tangy and slightly sweet flavor and is used in various culinary preparations.",
    descriptionid:
        "Buah bulat dan berair dengan kulit merah atau kuning cerah. Memiliki rasa asam dan sedikit manis dan digunakan dalam berbagai persiapan kuliner.",
    descriptionms:
        "Buah bulat, berair dengan kulit merah atau kuning terang. Ia mempunyai rasa masam dan sedikit manis dan digunakan dalam pelbagai penyediaan masakan.",
    benefitid:
        "Kaya likopen, mendukung kesehatan jantung, dan mempromosikan kulit yang sehat.",
    benefitms:
        "Kaya likopen, menyokong kesihatan jantung, dan mempromosikan kulit yang sihat.",
    fruitcolor: "Red",
    fruitcolorid: "Merah",
    fruitcolorms: "Merah",
    benefit:
        "Rich in lycopene, supports heart health, and promotes healthy skin.",
  ),
  fruitdetails(
    id: 34,
    image: "Turnip.png",
    fruitname: "Turnip",
    fruitnameid: "Lobak",
    fruitnamems: "Lobak",
    description:
        "A root vegetable with a creamy white or purple skin and a crisp texture. It has a mildly sweet and peppery taste and is often used in stews, soups, and roasted dishes.",
    descriptionid:
        "Sayuran akar dengan kulit putih krim atau ungu dan tekstur renyah. Memiliki rasa manis dan pedas dan sering digunakan dalam semur, sup, dan hidangan panggang.",
    descriptionms:
        "Sayuran akar dengan kulit putih krim atau ungu dan tekstur yang renyah. Ia mempunyai rasa yang sedikit manis dan pedas dan sering digunakan dalam semur, sup, dan hidangan panggang.",
    benefitid: "Rendah kalori, tinggi serat, dan mendukung kesehatan tulang.",
    benefitms: "Rendah kalori, tinggi serat, dan menyokong kesihatan tulang.",
    fruitcolor: "Purple",
    fruitcolorid: "Ungu",
    fruitcolorms: "Ungu",
    benefit: "Low in calories, high in fiber, and supports bone health.",
  ),
  fruitdetails(
    id: 35,
    image: "Watermelon.png",
    fruitname: "Watermelon",
    fruitnameid: "Tembikai",
    fruitnamems: "Tembikai",
    description:
        "A large, juicy fruit with a thick green rind and sweet, watery flesh. It is commonly eaten fresh as a refreshing snack or used in fruit salads, juices, and desserts.",
    descriptionid:
        "Buah besar dan berair dengan kulit hijau tebal dan daging yang manis dan berair. Biasanya dimakan segar sebagai camilan yang menyegarkan atau digunakan dalam salad buah, jus, dan makanan penutup.",
    descriptionms:
        "Buah besar dan berair dengan kulit hijau tebal dan daging yang manis dan berair. Ia biasanya dimakan segar sebagai snek yang menyegarkan atau digunakan dalam salad buah, jus, dan pencuci mulut.",
    benefitid:
        "Melembabkan, kaya akan antioksidan, dan mendukung kesehatan jantung.",
    benefitms:
        "Melembabkan, kaya dengan antioksidan, dan menyokong kesihatan jantung.",
    fruitcolor: "Red",
    fruitcolorid: "Merah",
    fruitcolorms: "Merah",
    benefit: "Hydrating, rich in antioxidants, and supports heart health.",
  ),
];
